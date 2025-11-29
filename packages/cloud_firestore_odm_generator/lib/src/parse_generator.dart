// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:analyzer/dart/element/element2.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

abstract class ParserGenerator<GlobalData, Data, Annotation> extends GeneratorForAnnotation<Annotation> {
  @override
  FutureOr<String> generate(
    // ignore: avoid_renaming_method_parameters
    LibraryReader oldLibrary,
    BuildStep buildStep,
  ) async {
    final library = await buildStep.resolver.libraryFor(await buildStep.resolver.assetIdForElement(oldLibrary.element));

    final generationBuffer = StringBuffer();
    // A set used to remove duplicate generations. This is for scenarios where
    // two annotations within the library want to generate the same code
    final generatedCache = <String>{};

    final globalData = parseGlobalData(library);

    var hasGeneratedGlobalCode = false;

    // Process top-level variables, functions, and classes
    final allElements = <Element2>[];
    allElements.addAll(library.topLevelVariables.where((e) => typeChecker.hasAnnotationOf(e)));

    // Also check top-level functions for annotations
    allElements.addAll(library.topLevelFunctions.where((e) => typeChecker.hasAnnotationOf(e)));

    // Also check class declarations for annotations
    for (final classElement in library.classes) {
      if (typeChecker.hasAnnotationOf(classElement)) {
        allElements.add(classElement);
      }
    }

    for (final element in allElements) {
      if (!hasGeneratedGlobalCode) {
        hasGeneratedGlobalCode = true;
        for (final generated in generateForAll(globalData).map((e) => e.toString())) {
          assert(generated.length == generated.trim().length);
          if (generatedCache.add(generated)) {
            generationBuffer.writeln(generated);
          }
        }
      }

      final data = await parseElement(buildStep, globalData, element);
      if (data == null) continue;

      for (final generated in generateForData(globalData, data).map((e) => e.toString())) {
        assert(generated.length == generated.trim().length);

        if (generatedCache.add(generated)) {
          generationBuffer.writeln(generated);
        }
      }
    }

    return generationBuffer.toString();
  }

  Iterable<Object> generateForAll(GlobalData globalData) sync* {}

  GlobalData parseGlobalData(LibraryElement2 library);

  FutureOr<Data?> parseElement(BuildStep buildStep, GlobalData globalData, Element2 element);

  Iterable<Object> generateForData(GlobalData globalData, Data data);

  @override
  dynamic generateForAnnotatedElement(Element2 element, ConstantReader annotation, BuildStep buildStep) async {
    // implemented for source_gen_test – otherwise unused
    final library = element.library2;
    if (library == null) {
      throw ArgumentError('Element does not have a library');
    }

    final globalData = parseGlobalData(library);
    final data = await parseElement(buildStep, globalData, element);

    if (data == null) return null;

    return generateForData(globalData, data).join('\n');
  }
}
