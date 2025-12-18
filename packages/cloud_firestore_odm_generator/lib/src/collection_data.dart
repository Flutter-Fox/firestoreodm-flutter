// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
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
const jsonKeyChecker = TypeChecker.typeNamed(JsonKey);
const jsonValueChecker = TypeChecker.fromUrl('package:json_annotation/json_annotation.dart#JsonValue');

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
    required this.isCrossLibrary,
    required this.usedEnumTypes,
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
      throw InvalidGenerationSourceError('Could not determine library for annotated element', element: annotatedElement);
    }

    // TODO(rrousselGit) handle parts
    // Whether the model class and the reference variable are defined in the same file
    // This is important because json_serializable generates private code for
    // decoding a Model class.
    final modelAndReferenceInTheSameLibrary = collectionTargetElement.library2 == annotatedElementSource;

    // Track if this is a cross-library collection (for later code generation)
    bool isCrossLibrary = false;

    if (!modelAndReferenceInTheSameLibrary) {
      // Cross-library collection detected - check if model is safe to use
      final isSafe = collectionTargetElement.hasSafeCrossLibraryFields(
        hasFreezed: hasFreezed,
        freezedConstructors: redirectedFreezedConstructors,
      );

      if (!isSafe) {
        // Get list of problematic fields for error message
        final unsafeFields = collectionTargetElement.getUnsafeCrossLibraryFields(
          hasFreezed: hasFreezed,
          freezedConstructors: redirectedFreezedConstructors,
        );

        throw InvalidGenerationSourceError('''
Cross-library collections are only supported for models with primitive fields.

The model `${collectionTargetElement.name3}` contains fields that require access to
private json_serializable helpers: ${unsafeFields.join(', ')}

Unsupported types for cross-library collections:
  • Enums (require private enum maps like _\$${collectionTargetElement.name3}EnumMap)
  • Sets (require conversion to List via _\$PerFieldToJson)
  • Nested objects (require recursive serialization)
  • Custom JsonConverter types

Supported types:
  ✓ String, int, double, bool, num (and nullable variants)
  ✓ List<primitive> (e.g., List<String>, List<int>)

Solutions:
  1. Move the @Collection annotation to ${collectionTargetElement.library2}
  2. Change field types to primitives only
  3. Use @JsonKey(includeFromJson: false, includeToJson: false) to ignore complex fields

Current locations:
  - @Collection is from $annotatedElementSource
  - `${collectionTargetElement.name3}` is from ${collectionTargetElement.library2}
''', element: annotatedElement);
      }

      // Model is safe for cross-library usage
      isCrossLibrary = true;
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

    // For cross-library collections, we need to generate type-specific transformation code.
    // Collect a mapping of field names to types for use in perFieldToJson.
    final fieldTypeMap = <String, DartType>{};
    final usedEnumTypes = <EnumElement>{};

    if (isCrossLibrary) {
      // Collect field type map
      for (final field in collectionTargetElement.allFields(
        hasFreezed: hasFreezed,
        freezedConstructors: redirectedFreezedConstructors,
      )) {
        if (field.isPublic && !field.hasId() && !field.isJsonIgnored()) {
          final fieldName = field.name3;
          if (fieldName != null) {
            fieldTypeMap[fieldName] = field.type;
          }
        }
      }

      // Collect all enum types used in the model
      usedEnumTypes.addAll(collectEnumTypes(
        collectionTargetElement,
        hasFreezed: hasFreezed,
        freezedConstructors: redirectedFreezedConstructors,
      ));
    }

    final data = CollectionData(
      type: type,
      path: path,
      collectionName: name,
      collectionPrefix: prefix,
      libraryElement: libraryElement,
      // For cross-library, ALWAYS use public fromJson (required for primitives)
      // For same-library, prefer public if available, else use generated private
      fromJson: (json) {
        if (isCrossLibrary || fromJson != null) return '$type.fromJson($json)';
        return '${generatedJsonTypePrefix}FromJson($json)';
      },
      // For cross-library, ALWAYS use public toJson (required for primitives)
      // For same-library, prefer public if available, else use generated private
      toJson: (value) {
        if (isCrossLibrary || toJson != null) return '$value.toJson()';
        return '${generatedJsonTypePrefix}ToJson($value)';
      },
      // For cross-library: generate type-specific transformation code
      // For same-library: use private PerFieldToJson helpers
      perFieldToJson: (field) {
        if (!isCrossLibrary) {
          return '${generatedJsonTypePrefix}PerFieldToJson.$field';
        }

        // Look up the field type and generate appropriate transformation code
        final fieldType = fieldTypeMap[field];
        if (fieldType == null) {
          // Fallback for special fields like documentId, fieldPath
          return '((Object? x) => x)';
        }

        return generatePerFieldToJsonCode(fieldType, field);
      },
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
                // For cross-library, use inline field name from @JsonKey or field name
                // For same-library, use reference to generated FieldMap
                field: isCrossLibrary
                    ? "'${f.getJsonFieldName()}'"
                    : "${generatedJsonTypePrefix}FieldMap['${f.name3}']!",
              ),
            )
            .toList(),
      ],
      isCrossLibrary: isCrossLibrary,
      usedEnumTypes: usedEnumTypes,
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

  /// True if this collection is defined in a different library than the model class.
  /// In this case, we generate inline serialization code instead of using private helpers.
  final bool isCrossLibrary;

  /// Set of enum types used in this model (for cross-library collections only).
  /// We generate const maps for these enums to avoid accessing private _$EnumEnumMap.
  final Set<EnumElement> usedEnumTypes;

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

  /// Returns true if all fields in this class are safe for cross-library collections.
  ///
  /// Only checks public, non-ignored fields that would be serialized.
  bool hasSafeCrossLibraryFields({required bool hasFreezed, required List<ConstructorElement2> freezedConstructors}) {
    final fieldsToCheck = allFields(hasFreezed: hasFreezed, freezedConstructors: freezedConstructors)
        .where((f) => f.isPublic)
        .where((f) => !f.hasId())
        .where((f) => !f.isJsonIgnored());

    for (final field in fieldsToCheck) {
      if (!field.type.isSafeForCrossLibrary) {
        return false;
      }
    }
    return true;
  }

  /// Returns a list of unsafe fields with their types for error messages.
  List<String> getUnsafeCrossLibraryFields({required bool hasFreezed, required List<ConstructorElement2> freezedConstructors}) {
    final fieldsToCheck = allFields(hasFreezed: hasFreezed, freezedConstructors: freezedConstructors)
        .where((f) => f.isPublic)
        .where((f) => !f.hasId())
        .where((f) => !f.isJsonIgnored());

    final unsafeFields = <String>[];
    for (final field in fieldsToCheck) {
      if (!field.type.isSafeForCrossLibrary) {
        final fieldName = field.name3 ?? 'unknown';
        final fieldType = field.type.getDisplayString();
        unsafeFields.add('$fieldName: $fieldType');
      }
    }
    return unsafeFields;
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

  /// Returns true if this type is safe to use in cross-library collections.
  ///
  /// Safe types are those that can be serialized without accessing private
  /// json_serializable helpers. We generate inline code for these types.
  ///
  /// Supported: primitives, enums, Sets, Lists, Maps, nested objects with public toJson/fromJson
  /// Not supported: custom converters, generic types, circular dependencies
  bool get isSafeForCrossLibrary {
    // Primitive types are safe (including nullable variants)
    if (isDartCoreString || isDartCoreInt || isDartCoreDouble ||
        isDartCoreBool || isDartCoreNum) {
      return true;
    }

    // Object and dynamic are safe (Firestore native, pass-through)
    if (isDartCoreObject || this is DynamicType) {
      return true;
    }

    // Enums ARE safe - we generate inline enum maps
    if (isEnum) {
      return true;
    }

    // Sets ARE safe - we generate inline .toList() conversions
    // Recursively check the element type
    if (isSet) {
      final elementType = (this as InterfaceType).typeArguments.single;
      return elementType.isSafeForCrossLibrary;
    }

    // Lists are safe if their element type is safe
    if (isList) {
      final elementType = (this as InterfaceType).typeArguments.single;

      // Detect nested arrays (not supported by Firestore)
      if (elementType.isList || elementType.isSet) {
        return false; // Will throw helpful error later
      }

      // Recursively check element type safety
      return elementType.isSafeForCrossLibrary;
    }

    // Maps are safe if they have String keys and safe value types
    if (isDartCoreMap) {
      final typeArgs = (this as InterfaceType).typeArguments;
      if (typeArgs.length != 2) return false;

      final keyType = typeArgs[0];
      final valueType = typeArgs[1];

      // Only String keys allowed (Firestore limitation)
      if (!keyType.isDartCoreString) return false;

      // Map<String, dynamic> and Map<String, Object?> are safe
      if (valueType.isDartCoreObject || valueType is DynamicType) {
        return true;
      }

      // Recursively check value type safety
      return valueType.isSafeForCrossLibrary;
    }

    // Firestore native types are safe (pass-through)
    if (isJsonDocumentReference) {
      return true;
    }

    // Check for nested objects with public toJson/fromJson
    // This is done last as it's the most expensive check
    return _isNestedObjectWithPublicMethods();
  }

  /// Checks if this type is a nested object with public toJson/fromJson methods.
  bool _isNestedObjectWithPublicMethods() {
    // Check if element3 is actually a ClassElement2 before casting
    if (element3 is! ClassElement2) return false;
    final classElement = element3 as ClassElement2;

    // Check for public fromJson constructor
    var hasFromJson = false;
    for (final ctor in classElement.constructors2) {
      // Check both displayName and name3 for 'fromJson' (handles named constructors like Nested.fromJson)
      final isFromJson = ctor.displayName == 'fromJson' ||
                         ctor.name3 == 'fromJson' ||
                         ctor.displayName.endsWith('.fromJson');

      if (isFromJson &&
          !ctor.isPrivate &&
          ctor.formalParameters.length == 1) {
        final paramType = ctor.formalParameters.first.type;
        if (paramType.isDartCoreMap) {
          hasFromJson = true;
          break;
        }
      }
    }

    if (!hasFromJson) return false;

    // Check for public toJson method in the class
    var hasToJson = false;
    for (final method in classElement.methods2) {
      if (method.displayName == 'toJson' &&
          !method.isPrivate &&
          method.formalParameters.isEmpty) {
        final returnType = method.returnType;
        if (returnType.isDartCoreMap) {
          hasToJson = true;
          break;
        }
      }
    }

    // Also check supertypes for toJson (like the main implementation does)
    if (!hasToJson) {
      for (final supertype in classElement.allSupertypes) {
        if (supertype.isDartCoreObject) continue;
        for (final method in supertype.methods2) {
          if (method.displayName == 'toJson' &&
              !method.isPrivate &&
              method.formalParameters.isEmpty) {
            final returnType = method.returnType;
            if (returnType.isDartCoreMap) {
              hasToJson = true;
              break;
            }
          }
        }
        if (hasToJson) break;
      }
    }

    return hasToJson;
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

  /// Gets the JSON field name for this field element.
  ///
  /// Returns the custom name from @JsonKey(name: '...') if present,
  /// otherwise returns the field's original name.
  ///
  /// For Phase 1, we do NOT support @JsonSerializable(fieldRename: ...)
  /// as that would require more complex parsing.
  String getJsonFieldName() {
    const checker = TypeChecker.typeNamed(JsonKey);
    final jsonKeyAnnotation = checker.firstAnnotationOf(this);

    if (jsonKeyAnnotation != null) {
      final explicitName = jsonKeyAnnotation.getField('name')?.toStringValue();
      if (explicitName != null) {
        return explicitName;
      }
    }

    // Fall back to field name
    return name3 ?? displayName;
  }
}

/// Generates a const map for enum-to-string serialization.
///
/// This is used for cross-library collections to avoid accessing private
/// `_$EnumNameEnumMap` generated by json_serializable.
///
/// Example output:
/// ```dart
/// const _firestoreEnumMap_Status = {
///   Status.active: 'active',
///   Status.inactive: 'inactive',
/// };
/// ```
String generateEnumMapCode(EnumElement enumElement) {
  final enumName = enumElement.name;
  final entries = <String>[];

  for (final constant in enumElement.constants) {
    final constantName = constant.name;
    if (constantName == null) continue;

    // Skip the special `values` field that enums automatically have
    if (constantName == 'values') continue;

    // Check for @JsonValue annotation for custom string values
    String jsonValue = constantName; // Default to constant name

    final jsonValueAnnotation = jsonValueChecker.firstAnnotationOf(constant);
    if (jsonValueAnnotation != null) {
      final customValue = jsonValueAnnotation.getField('value')?.toStringValue();
      if (customValue != null) {
        jsonValue = customValue;
      }
    }

    entries.add("  $enumName.$constantName: '$jsonValue'");
  }

  return "const _firestoreEnumMap_$enumName = {\n${entries.join(',\n')},\n};";
}

/// Generates inline transformation code for cross-library field serialization.
///
/// This creates type-specific serialization code that doesn't rely on private
/// json_serializable helpers.
///
/// Examples:
/// - Enum: `_firestoreEnumMap_Status[field]!`
/// - Set<String>: `(field as Set?)?.toList()`
/// - List<Enum>: `(field as List?)?.map((e) => _firestoreEnumMap_Status[e]!).toList()`
/// - Nested object: `(field) => field?.toJson()`
/// - Primitive: `((Object? x) => x)` (identity)
String generatePerFieldToJsonCode(DartType fieldType, String fieldVar) {
  // Primitive types - pass through with identity
  if (fieldType.isDartCoreString || fieldType.isDartCoreInt ||
      fieldType.isDartCoreDouble || fieldType.isDartCoreBool ||
      fieldType.isDartCoreNum) {
    return '((Object? x) => x)';
  }

  // Enums - use generated enum map (wrapped in lambda with type annotation)
  if (fieldType.isEnum) {
    final enumName = fieldType.element3!.name;
    final typeName = fieldType.getDisplayString();
    return '(($typeName x) => _firestoreEnumMap_$enumName[x]!)';
  }

  // Sets - convert to List, handling element types (wrapped in lambda with type annotation)
  if (fieldType.isSet) {
    final elementType = (fieldType as InterfaceType).typeArguments.single;
    final typeName = fieldType.getDisplayString();

    if (elementType.isPrimitive) {
      return '(($typeName x) => (x as Set?)?.toList())';
    }

    if (elementType.isEnum) {
      final enumName = elementType.element3!.name;
      return '(($typeName x) => (x as Set?)?.map((e) => _firestoreEnumMap_$enumName[e]!).toList())';
    }

    if (elementType._isNestedObjectWithPublicMethods()) {
      return '(($typeName x) => (x as Set?)?.map((e) => e.toJson()).toList())';
    }
  }

  // Lists - handle based on element type
  if (fieldType.isList) {
    final elementType = (fieldType as InterfaceType).typeArguments.single;

    // List of primitives - pass through
    if (elementType.isPrimitive) {
      return '((Object? x) => x)';
    }

    // List<Object?> or List<dynamic> - pass through
    if (elementType.isDartCoreObject || elementType is DynamicType) {
      return '((Object? x) => x)';
    }

    // List<Enum> - map each element through enum map (wrapped in lambda with type annotation)
    if (elementType.isEnum) {
      final enumName = elementType.element3!.name;
      final typeName = fieldType.getDisplayString();
      return '(($typeName x) => (x as List?)?.map((e) => _firestoreEnumMap_$enumName[e]!).toList())';
    }

    // List<NestedObject> - call toJson on each element (wrapped in lambda with type annotation)
    if (elementType._isNestedObjectWithPublicMethods()) {
      final typeName = fieldType.getDisplayString();
      return '(($typeName x) => (x as List?)?.map((e) => e.toJson()).toList())';
    }
  }

  // Maps - handle based on value type
  if (fieldType.isDartCoreMap) {
    final typeArgs = (fieldType as InterfaceType).typeArguments;
    if (typeArgs.length == 2) {
      final valueType = typeArgs[1];

      // Map<String, dynamic> or Map<String, Object?> - pass through
      if (valueType.isDartCoreObject || valueType is DynamicType) {
        return '((Object? x) => x)';
      }

      // Map<String, primitive> - pass through
      if (valueType.isPrimitive) {
        return '((Object? x) => x)';
      }

      // Map<String, Enum> - transform values (wrapped in lambda with type annotation)
      if (valueType.isEnum) {
        final enumName = valueType.element3!.name;
        final typeName = fieldType.getDisplayString();
        return '(($typeName x) => (x as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, _firestoreEnumMap_$enumName[v]!)))';
      }

      // Map<String, NestedObject> - call toJson on values (wrapped in lambda with type annotation)
      if (valueType._isNestedObjectWithPublicMethods()) {
        final typeName = fieldType.getDisplayString();
        return '(($typeName x) => (x as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v.toJson())))';
      }
    }
  }

  // Nested objects with public toJson/fromJson (wrapped in lambda with type annotation)
  if (fieldType._isNestedObjectWithPublicMethods()) {
    final typeName = fieldType.getDisplayString();
    return '(($typeName x) => x?.toJson())';
  }

  // Firestore native types - pass through
  if (fieldType.isJsonDocumentReference) {
    return '((Object? x) => x)';
  }

  // Fallback to identity (should not reach here if isSafeForCrossLibrary works correctly)
  return '((Object? x) => x)';
}

/// Helper extension for primitive type checking
extension on DartType {
  bool get isPrimitive =>
      isDartCoreString || isDartCoreInt || isDartCoreDouble ||
      isDartCoreBool || isDartCoreNum;
}

/// Collects all unique enum types used in a model class.
///
/// This scans all fields (including nested types in Lists, Sets, Maps) and
/// returns a set of EnumElements that need enum maps generated.
Set<EnumElement> collectEnumTypes(
  ClassElement2 modelClass, {
  required bool hasFreezed,
  required List<ConstructorElement2> freezedConstructors,
}) {
  final enumTypes = <EnumElement>{};

  void addEnumType(DartType type) {
    if (type.isEnum) {
      enumTypes.add(type.element3 as EnumElement);
    } else if (type.isList || type.isSet) {
      final elementType = (type as InterfaceType).typeArguments.single;
      addEnumType(elementType); // Recursive check
    } else if (type.isDartCoreMap) {
      final typeArgs = (type as InterfaceType).typeArguments;
      if (typeArgs.length == 2) {
        addEnumType(typeArgs[1]); // Check value type
      }
    }
  }

  // Scan all fields in the model
  for (final field in modelClass.allFields(
    hasFreezed: hasFreezed,
    freezedConstructors: freezedConstructors,
  )) {
    if (field.isPublic && !field.hasId() && !field.isJsonIgnored()) {
      addEnumType(field.type);
    }
  }

  return enumTypes;
}
