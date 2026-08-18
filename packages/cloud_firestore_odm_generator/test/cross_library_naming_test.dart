// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:cloud_firestore_odm_generator/src/collection_data.dart';
import 'package:cloud_firestore_odm_generator/src/collection_generator.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

/// Field names a collection targets are written as string literals only on the
/// cross-library path; the same-library path emits a `_$…FieldMap[…]` lookup.
final _crossLibraryField = RegExp(r"'([A-Za-z0-9_]+)': \(\(");

/// Keys of a generated `toJson`, which is what actually reaches Firestore.
final _toJsonKey = RegExp(r"^  '([A-Za-z0-9_]+)':", multiLine: true);

Set<String> _toJsonKeys(String source, String function) {
  final start = source.indexOf('Map<String, dynamic> _\$$function(');
  expect(start, greaterThan(-1), reason: 'no $function in generated source');

  final end = source.indexOf('\n};', start);
  return _toJsonKey.allMatches(source.substring(start, end)).map((m) => m.group(1)!).toSet();
}

void main() {
  group('encodedFieldName', () {
    // Values and spellings mirror json_serializable's own encodedFieldName.
    const declared = 'lastSignInTime';

    test('leaves the name alone for none', () {
      expect(encodedFieldName(FieldRename.none, declared), 'lastSignInTime');
    });

    test('covers every FieldRename value', () {
      expect(encodedFieldName(FieldRename.snake, declared), 'last_sign_in_time');
      expect(encodedFieldName(FieldRename.screamingSnake, declared), 'LAST_SIGN_IN_TIME');
      expect(encodedFieldName(FieldRename.kebab, declared), 'last-sign-in-time');
      expect(encodedFieldName(FieldRename.pascal, declared), 'LastSignInTime');
    });

    test('handles every enum value, so a new one cannot be missed', () {
      for (final rename in FieldRename.values) {
        expect(() => encodedFieldName(rename, declared), returnsNormally);
      }
    });
  });

  group('parseFieldRenameOption', () {
    test('defaults to none when unset', () {
      expect(parseFieldRenameOption(null), FieldRename.none);
    });

    test('accepts every spelling json_serializable accepts', () {
      for (final rename in FieldRename.values) {
        expect(parseFieldRenameOption(rename.name), rename);
      }
    });

    test('rejects an unknown value rather than silently using none', () {
      expect(() => parseFieldRenameOption('snake_case'), throwsArgumentError);
    });
  });

  group('generated cross-library collections', () {
    late String userSource;
    late Set<String> groundTruth;

    setUpAll(() {
      userSource = File('example/lib/user.g.dart').readAsStringSync();
      final residentSource = File('example/lib/resident.g.dart').readAsStringSync();
      final visitorSource = File('example/lib/visitor.g.dart').readAsStringSync();

      groundTruth = {
        ..._toJsonKeys(residentSource, 'ResidentToJson'),
        ..._toJsonKeys(visitorSource, 'VisitorToJson'),
      };
    });

    test('only target field names json_serializable actually writes', () {
      final targeted = _crossLibraryField.allMatches(userSource).map((m) => m.group(1)!).toSet();

      expect(targeted, isNotEmpty, reason: 'regex no longer matches the generated shape');
      expect(
        targeted.difference(groundTruth),
        isEmpty,
        reason: 'these names are queried/updated but never written by toJson',
      );
    });

    test('apply fieldRename rather than the declared Dart name', () {
      expect(userSource, contains("'admitted_at'"));
      expect(userSource, isNot(contains("'admittedAt'")));
    });

    test('route a field through its JsonConverter', () {
      expect(userSource, contains('const UpperCaseSerializer().toJson('));
    });
  });
}
