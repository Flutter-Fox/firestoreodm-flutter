// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:analyzer/dart/element/element2.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class ValidatorGenerator extends Generator {
  @override
  FutureOr<String?> generate(LibraryReader library, BuildStep buildStep) {
    final buffer = StringBuffer();

    for (final classElement in library.classes) {
      // Use fields from ClassElement
      final validations = classElement.fields2.expand<String>((field) sync* {
        final validators = field.metadata2.annotations.where(isValidatorAnnotation);

        for (final validator in validators) {
          yield "${validator.toSource().replaceFirst('@', 'const ')}.validate(instance.${field.name3}, '${field.name3}');";
        }
      }).toList();

      if (validations.isNotEmpty) {
        buffer
          ..write(
            'void _\$assert${classElement.name3}(${classElement.name3} instance) {',
          )
          ..writeAll(validations)
          ..write('}');
      }
    }

    return buffer.toString();
  }
}

bool isValidatorAnnotation(ElementAnnotation annotation) {
  final element = annotation.element2;
  if (element == null || element is! ConstructorElement2) return false;

  // Handle validator annotation detection
  final constructor = element;
  return constructor.enclosingElement2.allSupertypes.any((superType) {
    return superType.element3.name3 == 'Validator' &&
        superType.element3.library2.uri.toString() == 'package:cloud_firestore_odm/src/validator.dart';
  });
}
