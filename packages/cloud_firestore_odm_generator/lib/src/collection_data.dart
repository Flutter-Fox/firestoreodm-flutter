// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:cloud_firestore_odm/annotation.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'collection_generator.dart';
import 'names.dart';

const collectionChecker = TypeChecker.fromUrl('package:cloud_firestore_odm/annotation.dart#Collection');
const idChecker = TypeChecker.fromUrl('package:cloud_firestore_odm/annotation.dart#Id');
const jsonSerializableChecker = TypeChecker.typeNamed(JsonSerializable);
const freezedChecker = TypeChecker.typeNamed(Freezed);

class CollectionGraph {
  CollectionGraph._(this.roots, this.subCollections);

  factory CollectionGraph.parse(List<CollectionData> collections) {
    final roots = collections.where((collection) {
      final pathSplit = collection.path.split('/');
      return !pathSplit.any((split) => split == '*');
    }).toList();

    final subCollections = collections.where((collection) {
      final pathSplit = collection.path.split('/');
      return pathSplit.any((split) => split == '*');
    }).toList();

    final allCollections = [...roots, ...subCollections];

    for (final subCollection in subCollections) {
      final lastIDIndex = subCollection.path.lastIndexOf('/*/');
      if (lastIDIndex < 0) {
        // TODO find a way to test this
        throw InvalidGenerationSourceError(
          'Defined a sub-collection with path ${subCollection.path} but '
          'the path does not point to a sub-collection.',
        );
      }
      // From "movies/*/comments/*/retweets" obtains "movies/*/comments"
      final parentPath = subCollection.path.substring(0, lastIDIndex);

      final parentCollection = allCollections.firstWhere(
        (c) => c.path == parentPath,
        orElse: () {
          // TODO find a way to test this
          throw InvalidGenerationSourceError(
            'Defined a subcollection with path "${subCollection.path}" '
            'but no collection with path "$parentPath" found.',
          );
        },
      );

      subCollection._parent = parentCollection;
      parentCollection._children.add(subCollection);
    }

    return CollectionGraph._(roots, subCollections);
  }

  final List<CollectionData> roots;
  final List<CollectionData> subCollections;

  late final allCollections = [...roots, ...subCollections];

  @override
  String toString() {
    return 'Data(roots: $roots, subCollections: $subCollections)';
  }
}

class CollectionData with Names {
  CollectionData({
    required this.type,
    required String? collectionName,
    required this.collectionPrefix,
    required this.path,
    required this.queryableFields,
    required this.fromJson,
    required this.toJson,
    required this.perFieldToJson,
    required this.idKey,
    required this.libraryElement,
  }) : collectionName = collectionName ?? ReCase(path.split('/').last).camelCase;

  factory CollectionData.fromAnnotation({
    required LibraryElement2 libraryElement,
    required Element2 annotatedElement,
    required DartObject annotation,
    required GlobalData globalData,
  }) {
    // TODO find a way to test validation

    final name = annotation.getField('name')?.toStringValue();
    final prefix = annotation.getField('prefix')?.toStringValue();

    // TODO(validate name)

    final path = annotation.getField('path')?.toStringValue();
    _assertIsValidCollectionPath(path, annotatedElement);
    path!;

    final type = CollectionData.modelTypeOfAnnotation(annotation);

    if (type is DynamicType) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection was used, but no generic type was specified. ',
        todo: 'Instead of @Collection("path") do @Collection<MyClass>("path").',
        element: annotatedElement,
      );
    }

    final collectionTargetElement = type.element3;
    if (collectionTargetElement is! ClassElement2) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection can only receive classes as generic argument. ',
        element: annotatedElement,
      );
    }

    // Check for @freezed annotation
    final hasFreezed = freezedChecker.hasAnnotationOf(collectionTargetElement);

    // Freezed has two modes: factory constructors and normal constructors
    // Factory constructors: factory Person(...) = _Person;
    // Normal constructors: const Person({...});

    // For factory constructors, we need to find the redirected constructors
    final redirectedFreezedConstructors = collectionTargetElement.constructors2.where((element) {
      return element.isFactory &&
          // It should be safe to read "redirectedConstructor" as the build.yaml
          // asks to run the ODM after Freezed
          element.redirectedConstructor2 != null;
    }).toList();

    // For normal constructors, we need to check if there's a non-factory constructor
    final hasNormalFreezedConstructor =
        hasFreezed &&
        collectionTargetElement.constructors2.any(
          (element) => !element.isFactory && element.displayName == '' && element.formalParameters.isNotEmpty,
        );

    final hasJsonSerializable = jsonSerializableChecker.hasAnnotationOf(collectionTargetElement);
    // Freezed classes are also JsonSerializable
    if (!hasJsonSerializable && !hasFreezed) {
      throw InvalidGenerationSourceError(
        'Used @Collection with the class ${collectionTargetElement.name3}, but '
        'the class has no @JsonSerializable annotation.',
      );
    }

    final annotatedElementSource = annotatedElement.library2;
    if (annotatedElementSource == null) {
      throw InvalidGenerationSourceError(
        'Could not determine library for annotated element',
        element: annotatedElement,
      );
    }

    // TODO(rrousselGit) handle parts
    // Whether the model class and the reference variable are defined in the same file
    // This is important because json_serializable generates private code for
    // decoding a Model class.
    final modelAndReferenceInTheSameLibrary = collectionTargetElement.library2 == annotatedElementSource;
    if (!modelAndReferenceInTheSameLibrary) {
      throw InvalidGenerationSourceError('''
When using json_serializable, the `@Collection` annotation and the class that
represents the content of the collection must be in the same file.

- @Collection is from $annotatedElementSource
- `$collectionTargetElement` is from ${collectionTargetElement.library2}
''', element: annotatedElement);
    }

    // TODO test error handling
    if (redirectedFreezedConstructors.length > 1) {
      throw InvalidGenerationSourceError(
        'Union types when using @freezed are currently unsupported. Use a single constructor instead',
        element: annotatedElement,
      );
    }

    final collectionTargetElementPublicType = collectionTargetElement.name3!.public;
    // Find the fromJson constructor
    ConstructorElement2? fromJson;
    for (final ctor in collectionTargetElement.constructors2) {
      if (ctor.displayName == 'fromJson') {
        fromJson = ctor;
        break;
      }
    }
    if (fromJson != null) {
      // Check fromJson signature
      if (fromJson.formalParameters.length != 1 ||
          !fromJson.formalParameters.first.isRequiredPositional ||
          !fromJson.formalParameters.first.type.isDartCoreMap) {
        // TODO support deserializing generic objects
        throw InvalidGenerationSourceError(
          '@Collection was used with the class ${collectionTargetElement.name3} but '
          'its fromJson does not match `Function(Map json)`.',
          element: annotatedElement,
        );
      }
    }
    // Find the toJson method
    MethodElement2? toJson;
    for (final method in collectionTargetElement.methods2) {
      if (method.displayName == 'toJson') {
        toJson = method;
        break;
      }
    }
    // Look in supertypes if not found
    if (toJson == null) {
      for (final supertype in collectionTargetElement.allSupertypes) {
        if (supertype.isDartCoreObject) continue;
        for (final method in supertype.methods2) {
          if (method.displayName == 'toJson') {
            toJson = method;
            break;
          }
        }
        if (toJson != null) break;
      }
    }
    // Find redirected constructor's class name for freezed
    String? redirectedFreezedClass;
    final singleConstructor = redirectedFreezedConstructors.singleOrNull;
    if (singleConstructor != null) {
      // First try to get the redirected class directly from the constructor
      if (singleConstructor.redirectedConstructor2 != null) {
        redirectedFreezedClass = singleConstructor.redirectedConstructor2!.enclosingElement2.displayName;
      } else {
        // Fallback to searching for matching constructors
        for (final constructor in singleConstructor.enclosingElement2.constructors2) {
          if (constructor.isFactory && constructor != singleConstructor && constructor.displayName == singleConstructor.displayName) {
            redirectedFreezedClass = constructor.enclosingElement2.displayName;
            break;
          }
        }
      }
    }
    final generatedJsonTypePrefix = _generatedJsonTypePrefix(
      hasFreezed: hasFreezed,
      redirectedFreezedClass: redirectedFreezedClass,
      collectionTargetElementPublicType: collectionTargetElementPublicType,
    );
    if (toJson != null) {
      if (toJson.formalParameters.isNotEmpty || !toJson.returnType.isDartCoreMap) {
        // TODO support serializing generic objects
        throw InvalidGenerationSourceError(
          '@Collection was used with the class ${collectionTargetElement.name3} but '
          'its toJson does not match `Map Function()`.',
          element: annotatedElement,
        );
      }
    }
    final data = CollectionData(
      type: type,
      path: path,
      collectionName: name,
      collectionPrefix: prefix,
      libraryElement: libraryElement,
      fromJson: (json) {
        if (fromJson != null) return '$type.fromJson($json)';
        return '${generatedJsonTypePrefix}FromJson($json)';
      },
      toJson: (value) {
        if (toJson != null) return '$value.toJson()';
        return '${generatedJsonTypePrefix}ToJson($value)';
      },
      perFieldToJson: (field) => '${generatedJsonTypePrefix}PerFieldToJson.$field',
      // Create custom implementation for allFields
      idKey: (() {
        if (hasFreezed) {
          // For factory constructor mode
          if (redirectedFreezedConstructors.isNotEmpty) {
            // Find parameter with Id annotation
            FormalParameterElement? idParam;
            for (final param in redirectedFreezedConstructors.single.formalParameters) {
              if (idChecker.hasAnnotationOf(param)) {
                idParam = param;
                break;
              }
            }
            return idParam?.displayName;
          } else if (hasNormalFreezedConstructor) {
            // For normal constructor mode, check fields directly
            final fields = collectionTargetElement.fields2;
            for (final field in fields) {
              if (idChecker.hasAnnotationOf(field)) {
                return field.displayName;
              }
            }
            return null;
          } else {
            return null;
          }
        } else {
          final uniqueFields = <String, FieldElement2>{};
          // Get fields from class and supertypes
          final allFields = <FieldElement2>[];
          allFields.addAll(collectionTargetElement.fields2);
          for (final supertype in collectionTargetElement.allSupertypes) {
            if (supertype.isDartCoreObject) continue;
            allFields.addAll(supertype.element3.fields2);
          }

          for (final field in allFields) {
            if (field.getter2 != null && !field.getter2!.isSynthetic) continue;
            if (field.isStatic) continue;
            uniqueFields[field.displayName] ??= field;
          }
          // Find field with Id annotation
          FieldElement2? idField;
          for (final field in uniqueFields.values) {
            if (idChecker.hasAnnotationOf(field)) {
              idField = field;
              break;
            }
          }
          return idField?.displayName;
        }
      })(),
      queryableFields: [
        QueryingField(
          'fieldPath',
          whereDoc: '''
  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```''',
          orderByDoc: '''
  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```''',
          annotatedElementSource.typeProvider.objectType,
          field: 'fieldPath',
          updatable: false,
        ),
        QueryingField(
          'documentId',
          annotatedElementSource.typeProvider.stringType,
          whereDoc: '', // Inherited
          orderByDoc: '', // Inherited
          field: 'FieldPath.documentId',
          updatable: false,
        ),
        ...collectionTargetElement
            .allFields(hasFreezed: hasFreezed, freezedConstructors: redirectedFreezedConstructors)
            .where((f) => f.isPublic)
            .where((f) => !f.hasId())
            .where((f) => !f.isJsonIgnored())
            .where((f) => f.name3 != null)
            .map(
              (f) => QueryingField(
                f.name3!,
                f.type,
                whereDoc: '',
                orderByDoc: '',
                updatable: true,
                field: "${generatedJsonTypePrefix}FieldMap['${f.name3}']!",
              ),
            )
            .toList(),
      ],
    );

    final classPrefix = data.classPrefix;

    if (globalData.classPrefixesForLibrary[annotatedElementSource]?.contains(classPrefix) ?? false) {
      throw InvalidGenerationSourceError(
        'Defined a collection with duplicate class prefix $classPrefix. '
        'Either use a different class, or set a unique class prefix.',
      );
    }

    globalData.classPrefixesForLibrary[annotatedElementSource] ??= [];
    globalData.classPrefixesForLibrary[annotatedElementSource]!.add(classPrefix);

    return data;
  }

  static void _assertIsValidCollectionPath(String? path, Element2 element) {
    if (path == null) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection received "$path" as collection path, '
        'but the path was null, which is not allowed.',
        element: element,
      );
    }

    final allowedCharactersRegex = RegExp(r'^[0-9a-zA-Z/*-_]+$');
    if (!allowedCharactersRegex.hasMatch(path)) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection received "$path" as collection path, '
        'but the path contains illegal characters.',
        element: element,
      );
    }

    final pathSplit = path.split('/');
    if (pathSplit.length.isEven) {
      throw InvalidGenerationSourceError(
        'The annotation @Collection received "$path" as collection path, '
        'but this path points to a document instead of a collection',
        element: element,
      );
    }

    for (var i = 0; i < pathSplit.length; i += 2) {
      if (pathSplit[i] == '*') {
        throw InvalidGenerationSourceError(
          'The annotation @Collection received "$path" as collection path, '
          'but ${pathSplit[i]} is not a valid collection name',
          element: element,
        );
      }
    }
  }

  static DartType modelTypeOfAnnotation(DartObject annotation) {
    final type = annotation.type;
    if (type == null) {
      throw ArgumentError('Annotation does not have a type');
    }
    return (type as ParameterizedType).typeArguments.first;
  }

  static String _generatedJsonTypePrefix({
    required bool hasFreezed,
    required String? redirectedFreezedClass,
    required String collectionTargetElementPublicType,
  }) {
    if (hasFreezed) {
      // If we have a redirected class (factory constructor mode), use that
      if (redirectedFreezedClass != null) {
        // New freezed format uses _$ClassName instead of _$$ClassNameImpl
        return '_\$${redirectedFreezedClass.public}';
      } else {
        // For normal constructor mode, use the class name directly
        return '_\$$collectionTargetElementPublicType';
      }
    } else {
      return '_\$$collectionTargetElementPublicType';
    }
  }

  @override
  final String? collectionPrefix;
  @override
  final DartType type;

  final String collectionName;
  final String path;
  final String? idKey;
  final List<QueryingField> queryableFields;
  final LibraryElement2 libraryElement;

  late final updatableFields = queryableFields.where((element) => element.updatable).toList();

  CollectionData? _parent;
  CollectionData? get parent => _parent;

  final List<CollectionData> _children = [];
  List<CollectionData> get children => UnmodifiableListView(_children);

  String Function(String json) fromJson;
  String Function(String value) toJson;
  String Function(String field) perFieldToJson;

  @override
  String toString() {
    return 'CollectionData(type: $type, collectionName: $collectionName, path: $path)';
  }
}

extension on ClassElement2 {
  Iterable<VariableElement2> allFields({required bool hasFreezed, required List<ConstructorElement2> freezedConstructors}) {
    if (hasFreezed) {
      // For factory constructor mode (with redirected constructors)
      if (freezedConstructors.isNotEmpty) {
        return freezedConstructors.single.formalParameters;
      } else {
        // For normal constructor mode, use fields directly
        // Fields in normal freezed classes are defined directly in the class
        // Exclude getters, setters, static/const variables, and methods
        return fields2.where(
          (field) =>
              !field.isStatic &&
              field.isPublic &&
              (field.getter2 == null || field.getter2!.isSynthetic) &&
              (field.setter2 == null || field.setter2!.isSynthetic),
        );
      }
    } else {
      final uniqueFields = <String, FieldElement2>{};

      final allFields = const <FieldElement2>[]
          .followedBy(fields2)
          .followedBy(allSupertypes.where((e) => !e.isDartCoreObject).expand((e) => e.element3.fields2));

      for (final field in allFields) {
        if (field.getter2 != null && !field.getter2!.isSynthetic) continue;
        if (field.isStatic) continue;
        uniqueFields[field.name3!] ??= field;
      }
      return uniqueFields.values;
    }
  }
}

extension on String {
  String get public {
    return startsWith('_') ? substring(1) : this;
  }
}

const _coreListChecker = TypeChecker.fromUrl('dart:core#List');
const _coreSetChecker = TypeChecker.fromUrl('dart:core#Set');

extension DartTypeExtension on DartType {
  bool get isJsonDocumentReference {
    return element3?.library2?.uri.scheme == 'package' &&
        const {'cloud_firestore'}.contains(element3?.library2?.uri.pathSegments.first) &&
        element3?.name3 == 'DocumentReference' &&
        (this as InterfaceType).typeArguments.single.isDartCoreMap;
  }

  bool get isList => _coreListChecker.isExactlyType(this);
  bool get isSet => _coreSetChecker.isExactlyType(this);
  bool get isSupportedIterable => isList || isSet;

  bool get isSupportedPrimitiveIterable {
    if (!isSupportedIterable) return false;

    final generic = (this as InterfaceType).typeArguments.single;

    return generic.isDartCoreNum ||
        generic.isDartCoreString ||
        generic.isDartCoreBool ||
        generic.isDartCoreObject ||
        generic.isEnum ||
        generic is DynamicType;
  }
}

extension on Element2 {
  bool isJsonIgnored() {
    const checker = TypeChecker.typeNamed(JsonKey);
    final jsonKeys = checker.annotationsOf(this);

    for (final jsonKey in jsonKeys) {
      final ignore = jsonKey.getField('ignore')?.toBoolValue() ?? false;

      // ignore is deprecated in favor of includeFromJson and includeToJson
      final jsonIncluded =
          (jsonKey.getField('includeFromJson')?.toBoolValue() ?? true) && (jsonKey.getField('includeToJson')?.toBoolValue() ?? true);
      if (ignore || !jsonIncluded) {
        return true;
      }
    }

    return false;
  }

  bool hasId() {
    return idChecker.hasAnnotationOf(this);
  }
}
