// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

// Enum maps for cross-library collection support

const _firestoreEnumMap_TestEnum = {
  TestEnum.one: 'one',
  TestEnum.two: 'two',
  TestEnum.three: 'three',
};

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class NestedCollectionReference
    implements
        NestedQuery,
        FirestoreCollectionReference<Nested, NestedQuerySnapshot> {
  factory NestedCollectionReference([FirebaseFirestore? firestore]) =
      _$NestedCollectionReference;

  static Nested fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Nested.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(Nested value, SetOptions? options) {
    return value.toJson();
  }

  @override
  CollectionReference<Nested> get reference;

  @override
  NestedDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<NestedDocumentReference> add(Nested value);
}

class _$NestedCollectionReference extends _$NestedQuery
    implements NestedCollectionReference {
  factory _$NestedCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$NestedCollectionReference._(
      firestore
          .collection('people/**/nested')
          .withConverter(
            fromFirestore: NestedCollectionReference.fromFirestore,
            toFirestore: NestedCollectionReference.toFirestore,
          ),
    );
  }

  _$NestedCollectionReference._(CollectionReference<Nested> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Nested> get reference =>
      super.reference as CollectionReference<Nested>;

  @override
  NestedDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return NestedDocumentReference(reference.doc(id));
  }

  @override
  Future<NestedDocumentReference> add(Nested value) {
    return reference.add(value).then((ref) => NestedDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$NestedCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class NestedDocumentReference
    extends FirestoreDocumentReference<Nested, NestedDocumentSnapshot> {
  factory NestedDocumentReference(DocumentReference<Nested> reference) =
      _$NestedDocumentReference;

  DocumentReference<Nested> get reference;

  /// A reference to the [NestedCollectionReference] containing this document.
  NestedCollectionReference get parent {
    return _$NestedCollectionReference(reference.firestore);
  }

  @override
  Stream<NestedDocumentSnapshot> snapshots();

  @override
  Future<NestedDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Nested model, {
    SetOptions? options,
    FieldValue valueFieldValue,
    FieldValue simpleFieldValue,
    FieldValue valueListFieldValue,
    FieldValue boolListFieldValue,
    FieldValue stringListFieldValue,
    FieldValue numListFieldValue,
    FieldValue objectListFieldValue,
    FieldValue dynamicListFieldValue,
    FieldValue boolSetFieldValue,
    FieldValue enumValueFieldValue,
    FieldValue nullableEnumValueFieldValue,
    FieldValue enumListFieldValue,
    FieldValue nullableEnumListFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Nested model, {
    SetOptions? options,
    FieldValue valueFieldValue,
    FieldValue simpleFieldValue,
    FieldValue valueListFieldValue,
    FieldValue boolListFieldValue,
    FieldValue stringListFieldValue,
    FieldValue numListFieldValue,
    FieldValue objectListFieldValue,
    FieldValue dynamicListFieldValue,
    FieldValue boolSetFieldValue,
    FieldValue enumValueFieldValue,
    FieldValue nullableEnumValueFieldValue,
    FieldValue enumListFieldValue,
    FieldValue nullableEnumListFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Nested model, {
    SetOptions? options,
    FieldValue valueFieldValue,
    FieldValue simpleFieldValue,
    FieldValue valueListFieldValue,
    FieldValue boolListFieldValue,
    FieldValue stringListFieldValue,
    FieldValue numListFieldValue,
    FieldValue objectListFieldValue,
    FieldValue dynamicListFieldValue,
    FieldValue boolSetFieldValue,
    FieldValue enumValueFieldValue,
    FieldValue nullableEnumValueFieldValue,
    FieldValue enumListFieldValue,
    FieldValue nullableEnumListFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    Set<bool>? boolSet,
    FieldValue boolSetFieldValue,
    TestEnum enumValue,
    FieldValue enumValueFieldValue,
    TestEnum? nullableEnumValue,
    FieldValue nullableEnumValueFieldValue,
    List<TestEnum> enumList,
    FieldValue enumListFieldValue,
    List<TestEnum>? nullableEnumList,
    FieldValue nullableEnumListFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    Set<bool>? boolSet,
    FieldValue boolSetFieldValue,
    TestEnum enumValue,
    FieldValue enumValueFieldValue,
    TestEnum? nullableEnumValue,
    FieldValue nullableEnumValueFieldValue,
    List<TestEnum> enumList,
    FieldValue enumListFieldValue,
    List<TestEnum>? nullableEnumList,
    FieldValue nullableEnumListFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    Nested? value,
    FieldValue valueFieldValue,
    int? simple,
    FieldValue simpleFieldValue,
    List<Nested>? valueList,
    FieldValue valueListFieldValue,
    List<bool>? boolList,
    FieldValue boolListFieldValue,
    List<String>? stringList,
    FieldValue stringListFieldValue,
    List<num>? numList,
    FieldValue numListFieldValue,
    List<Object?>? objectList,
    FieldValue objectListFieldValue,
    List<dynamic>? dynamicList,
    FieldValue dynamicListFieldValue,
    Set<bool>? boolSet,
    FieldValue boolSetFieldValue,
    TestEnum enumValue,
    FieldValue enumValueFieldValue,
    TestEnum? nullableEnumValue,
    FieldValue nullableEnumValueFieldValue,
    List<TestEnum> enumList,
    FieldValue enumListFieldValue,
    List<TestEnum>? nullableEnumList,
    FieldValue nullableEnumListFieldValue,
  });
}

class _$NestedDocumentReference
    extends FirestoreDocumentReference<Nested, NestedDocumentSnapshot>
    implements NestedDocumentReference {
  _$NestedDocumentReference(this.reference);

  @override
  final DocumentReference<Nested> reference;

  /// A reference to the [NestedCollectionReference] containing this document.
  NestedCollectionReference get parent {
    return _$NestedCollectionReference(reference.firestore);
  }

  @override
  Stream<NestedDocumentSnapshot> snapshots() {
    return reference.snapshots().map(NestedDocumentSnapshot._);
  }

  @override
  Future<NestedDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NestedDocumentSnapshot._);
  }

  @override
  Future<NestedDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(NestedDocumentSnapshot._);
  }

  Future<void> set(
    Nested model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
    FieldValue? simpleFieldValue,
    FieldValue? valueListFieldValue,
    FieldValue? boolListFieldValue,
    FieldValue? stringListFieldValue,
    FieldValue? numListFieldValue,
    FieldValue? objectListFieldValue,
    FieldValue? dynamicListFieldValue,
    FieldValue? boolSetFieldValue,
    FieldValue? enumValueFieldValue,
    FieldValue? nullableEnumValueFieldValue,
    FieldValue? enumListFieldValue,
    FieldValue? nullableEnumListFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null) 'value': valueFieldValue,

      if (simpleFieldValue != null) 'simple': simpleFieldValue,

      if (valueListFieldValue != null) 'valueList': valueListFieldValue,

      if (boolListFieldValue != null) 'boolList': boolListFieldValue,

      if (stringListFieldValue != null) 'stringList': stringListFieldValue,

      if (numListFieldValue != null) 'numList': numListFieldValue,

      if (objectListFieldValue != null) 'objectList': objectListFieldValue,

      if (dynamicListFieldValue != null) 'dynamicList': dynamicListFieldValue,

      if (boolSetFieldValue != null) 'boolSet': boolSetFieldValue,

      if (enumValueFieldValue != null) 'enumValue': enumValueFieldValue,

      if (nullableEnumValueFieldValue != null)
        'nullableEnumValue': nullableEnumValueFieldValue,

      if (enumListFieldValue != null) 'enumList': enumListFieldValue,

      if (nullableEnumListFieldValue != null)
        'nullableEnumList': nullableEnumListFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Nested model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
    FieldValue? simpleFieldValue,
    FieldValue? valueListFieldValue,
    FieldValue? boolListFieldValue,
    FieldValue? stringListFieldValue,
    FieldValue? numListFieldValue,
    FieldValue? objectListFieldValue,
    FieldValue? dynamicListFieldValue,
    FieldValue? boolSetFieldValue,
    FieldValue? enumValueFieldValue,
    FieldValue? nullableEnumValueFieldValue,
    FieldValue? enumListFieldValue,
    FieldValue? nullableEnumListFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null) 'value': valueFieldValue,

      if (simpleFieldValue != null) 'simple': simpleFieldValue,

      if (valueListFieldValue != null) 'valueList': valueListFieldValue,

      if (boolListFieldValue != null) 'boolList': boolListFieldValue,

      if (stringListFieldValue != null) 'stringList': stringListFieldValue,

      if (numListFieldValue != null) 'numList': numListFieldValue,

      if (objectListFieldValue != null) 'objectList': objectListFieldValue,

      if (dynamicListFieldValue != null) 'dynamicList': dynamicListFieldValue,

      if (boolSetFieldValue != null) 'boolSet': boolSetFieldValue,

      if (enumValueFieldValue != null) 'enumValue': enumValueFieldValue,

      if (nullableEnumValueFieldValue != null)
        'nullableEnumValue': nullableEnumValueFieldValue,

      if (enumListFieldValue != null) 'enumList': enumListFieldValue,

      if (nullableEnumListFieldValue != null)
        'nullableEnumList': nullableEnumListFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Nested model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
    FieldValue? simpleFieldValue,
    FieldValue? valueListFieldValue,
    FieldValue? boolListFieldValue,
    FieldValue? stringListFieldValue,
    FieldValue? numListFieldValue,
    FieldValue? objectListFieldValue,
    FieldValue? dynamicListFieldValue,
    FieldValue? boolSetFieldValue,
    FieldValue? enumValueFieldValue,
    FieldValue? nullableEnumValueFieldValue,
    FieldValue? enumListFieldValue,
    FieldValue? nullableEnumListFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null) 'value': valueFieldValue,

      if (simpleFieldValue != null) 'simple': simpleFieldValue,

      if (valueListFieldValue != null) 'valueList': valueListFieldValue,

      if (boolListFieldValue != null) 'boolList': boolListFieldValue,

      if (stringListFieldValue != null) 'stringList': stringListFieldValue,

      if (numListFieldValue != null) 'numList': numListFieldValue,

      if (objectListFieldValue != null) 'objectList': objectListFieldValue,

      if (dynamicListFieldValue != null) 'dynamicList': dynamicListFieldValue,

      if (boolSetFieldValue != null) 'boolSet': boolSetFieldValue,

      if (enumValueFieldValue != null) 'enumValue': enumValueFieldValue,

      if (nullableEnumValueFieldValue != null)
        'nullableEnumValue': nullableEnumValueFieldValue,

      if (enumListFieldValue != null) 'enumList': enumListFieldValue,

      if (nullableEnumListFieldValue != null)
        'nullableEnumList': nullableEnumListFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? boolSet = _sentinel,
    FieldValue? boolSetFieldValue,
    Object? enumValue = _sentinel,
    FieldValue? enumValueFieldValue,
    Object? nullableEnumValue = _sentinel,
    FieldValue? nullableEnumValueFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
    Object? nullableEnumList = _sentinel,
    FieldValue? nullableEnumListFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      boolSet == _sentinel || boolSetFieldValue == null,
      "Cannot specify both boolSet and boolSetFieldValue",
    );
    assert(
      enumValue == _sentinel || enumValueFieldValue == null,
      "Cannot specify both enumValue and enumValueFieldValue",
    );
    assert(
      nullableEnumValue == _sentinel || nullableEnumValueFieldValue == null,
      "Cannot specify both nullableEnumValue and nullableEnumValueFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    assert(
      nullableEnumList == _sentinel || nullableEnumListFieldValue == null,
      "Cannot specify both nullableEnumList and nullableEnumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        'value': ((Nested? x) => x?.toJson())(value as Nested?),

      if (valueFieldValue != null) 'value': valueFieldValue,

      if (simple != _sentinel) 'simple': ((Object? x) => x)(simple as int?),

      if (simpleFieldValue != null) 'simple': simpleFieldValue,

      if (valueList != _sentinel)
        'valueList': ((List<Nested>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(valueList as List<Nested>?),

      if (valueListFieldValue != null) 'valueList': valueListFieldValue,

      if (boolList != _sentinel)
        'boolList': ((Object? x) => x)(boolList as List<bool>?),

      if (boolListFieldValue != null) 'boolList': boolListFieldValue,

      if (stringList != _sentinel)
        'stringList': ((Object? x) => x)(stringList as List<String>?),

      if (stringListFieldValue != null) 'stringList': stringListFieldValue,

      if (numList != _sentinel)
        'numList': ((Object? x) => x)(numList as List<num>?),

      if (numListFieldValue != null) 'numList': numListFieldValue,

      if (objectList != _sentinel)
        'objectList': ((Object? x) => x)(objectList as List<Object?>?),

      if (objectListFieldValue != null) 'objectList': objectListFieldValue,

      if (dynamicList != _sentinel)
        'dynamicList': ((Object? x) => x)(dynamicList as List<dynamic>?),

      if (dynamicListFieldValue != null) 'dynamicList': dynamicListFieldValue,

      if (boolSet != _sentinel)
        'boolSet': ((Set<bool>? x) =>
            (x as Set?)?.toList())(boolSet as Set<bool>?),

      if (boolSetFieldValue != null) 'boolSet': boolSetFieldValue,

      if (enumValue != _sentinel)
        'enumValue': ((TestEnum x) =>
            _firestoreEnumMap_TestEnum[x]!)(enumValue as TestEnum),

      if (enumValueFieldValue != null) 'enumValue': enumValueFieldValue,

      if (nullableEnumValue != _sentinel)
        'nullableEnumValue': ((TestEnum? x) =>
            _firestoreEnumMap_TestEnum[x]!)(nullableEnumValue as TestEnum?),

      if (nullableEnumValueFieldValue != null)
        'nullableEnumValue': nullableEnumValueFieldValue,

      if (enumList != _sentinel)
        'enumList': ((List<TestEnum> x) => (x as List?)
            ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
            .toList())(enumList as List<TestEnum>),

      if (enumListFieldValue != null) 'enumList': enumListFieldValue,

      if (nullableEnumList != _sentinel)
        'nullableEnumList': ((List<TestEnum>? x) => (x as List?)
            ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
            .toList())(nullableEnumList as List<TestEnum>?),

      if (nullableEnumListFieldValue != null)
        'nullableEnumList': nullableEnumListFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? boolSet = _sentinel,
    FieldValue? boolSetFieldValue,
    Object? enumValue = _sentinel,
    FieldValue? enumValueFieldValue,
    Object? nullableEnumValue = _sentinel,
    FieldValue? nullableEnumValueFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
    Object? nullableEnumList = _sentinel,
    FieldValue? nullableEnumListFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      boolSet == _sentinel || boolSetFieldValue == null,
      "Cannot specify both boolSet and boolSetFieldValue",
    );
    assert(
      enumValue == _sentinel || enumValueFieldValue == null,
      "Cannot specify both enumValue and enumValueFieldValue",
    );
    assert(
      nullableEnumValue == _sentinel || nullableEnumValueFieldValue == null,
      "Cannot specify both nullableEnumValue and nullableEnumValueFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    assert(
      nullableEnumList == _sentinel || nullableEnumListFieldValue == null,
      "Cannot specify both nullableEnumList and nullableEnumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        'value': ((Nested? x) => x?.toJson())(value as Nested?),

      if (valueFieldValue != null) 'value': valueFieldValue,

      if (simple != _sentinel) 'simple': ((Object? x) => x)(simple as int?),

      if (simpleFieldValue != null) 'simple': simpleFieldValue,

      if (valueList != _sentinel)
        'valueList': ((List<Nested>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(valueList as List<Nested>?),

      if (valueListFieldValue != null) 'valueList': valueListFieldValue,

      if (boolList != _sentinel)
        'boolList': ((Object? x) => x)(boolList as List<bool>?),

      if (boolListFieldValue != null) 'boolList': boolListFieldValue,

      if (stringList != _sentinel)
        'stringList': ((Object? x) => x)(stringList as List<String>?),

      if (stringListFieldValue != null) 'stringList': stringListFieldValue,

      if (numList != _sentinel)
        'numList': ((Object? x) => x)(numList as List<num>?),

      if (numListFieldValue != null) 'numList': numListFieldValue,

      if (objectList != _sentinel)
        'objectList': ((Object? x) => x)(objectList as List<Object?>?),

      if (objectListFieldValue != null) 'objectList': objectListFieldValue,

      if (dynamicList != _sentinel)
        'dynamicList': ((Object? x) => x)(dynamicList as List<dynamic>?),

      if (dynamicListFieldValue != null) 'dynamicList': dynamicListFieldValue,

      if (boolSet != _sentinel)
        'boolSet': ((Set<bool>? x) =>
            (x as Set?)?.toList())(boolSet as Set<bool>?),

      if (boolSetFieldValue != null) 'boolSet': boolSetFieldValue,

      if (enumValue != _sentinel)
        'enumValue': ((TestEnum x) =>
            _firestoreEnumMap_TestEnum[x]!)(enumValue as TestEnum),

      if (enumValueFieldValue != null) 'enumValue': enumValueFieldValue,

      if (nullableEnumValue != _sentinel)
        'nullableEnumValue': ((TestEnum? x) =>
            _firestoreEnumMap_TestEnum[x]!)(nullableEnumValue as TestEnum?),

      if (nullableEnumValueFieldValue != null)
        'nullableEnumValue': nullableEnumValueFieldValue,

      if (enumList != _sentinel)
        'enumList': ((List<TestEnum> x) => (x as List?)
            ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
            .toList())(enumList as List<TestEnum>),

      if (enumListFieldValue != null) 'enumList': enumListFieldValue,

      if (nullableEnumList != _sentinel)
        'nullableEnumList': ((List<TestEnum>? x) => (x as List?)
            ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
            .toList())(nullableEnumList as List<TestEnum>?),

      if (nullableEnumListFieldValue != null)
        'nullableEnumList': nullableEnumListFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
    Object? simple = _sentinel,
    FieldValue? simpleFieldValue,
    Object? valueList = _sentinel,
    FieldValue? valueListFieldValue,
    Object? boolList = _sentinel,
    FieldValue? boolListFieldValue,
    Object? stringList = _sentinel,
    FieldValue? stringListFieldValue,
    Object? numList = _sentinel,
    FieldValue? numListFieldValue,
    Object? objectList = _sentinel,
    FieldValue? objectListFieldValue,
    Object? dynamicList = _sentinel,
    FieldValue? dynamicListFieldValue,
    Object? boolSet = _sentinel,
    FieldValue? boolSetFieldValue,
    Object? enumValue = _sentinel,
    FieldValue? enumValueFieldValue,
    Object? nullableEnumValue = _sentinel,
    FieldValue? nullableEnumValueFieldValue,
    Object? enumList = _sentinel,
    FieldValue? enumListFieldValue,
    Object? nullableEnumList = _sentinel,
    FieldValue? nullableEnumListFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    assert(
      simple == _sentinel || simpleFieldValue == null,
      "Cannot specify both simple and simpleFieldValue",
    );
    assert(
      valueList == _sentinel || valueListFieldValue == null,
      "Cannot specify both valueList and valueListFieldValue",
    );
    assert(
      boolList == _sentinel || boolListFieldValue == null,
      "Cannot specify both boolList and boolListFieldValue",
    );
    assert(
      stringList == _sentinel || stringListFieldValue == null,
      "Cannot specify both stringList and stringListFieldValue",
    );
    assert(
      numList == _sentinel || numListFieldValue == null,
      "Cannot specify both numList and numListFieldValue",
    );
    assert(
      objectList == _sentinel || objectListFieldValue == null,
      "Cannot specify both objectList and objectListFieldValue",
    );
    assert(
      dynamicList == _sentinel || dynamicListFieldValue == null,
      "Cannot specify both dynamicList and dynamicListFieldValue",
    );
    assert(
      boolSet == _sentinel || boolSetFieldValue == null,
      "Cannot specify both boolSet and boolSetFieldValue",
    );
    assert(
      enumValue == _sentinel || enumValueFieldValue == null,
      "Cannot specify both enumValue and enumValueFieldValue",
    );
    assert(
      nullableEnumValue == _sentinel || nullableEnumValueFieldValue == null,
      "Cannot specify both nullableEnumValue and nullableEnumValueFieldValue",
    );
    assert(
      enumList == _sentinel || enumListFieldValue == null,
      "Cannot specify both enumList and enumListFieldValue",
    );
    assert(
      nullableEnumList == _sentinel || nullableEnumListFieldValue == null,
      "Cannot specify both nullableEnumList and nullableEnumListFieldValue",
    );
    final json = {
      if (value != _sentinel)
        'value': ((Nested? x) => x?.toJson())(value as Nested?),

      if (valueFieldValue != null) 'value': valueFieldValue,

      if (simple != _sentinel) 'simple': ((Object? x) => x)(simple as int?),

      if (simpleFieldValue != null) 'simple': simpleFieldValue,

      if (valueList != _sentinel)
        'valueList': ((List<Nested>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(valueList as List<Nested>?),

      if (valueListFieldValue != null) 'valueList': valueListFieldValue,

      if (boolList != _sentinel)
        'boolList': ((Object? x) => x)(boolList as List<bool>?),

      if (boolListFieldValue != null) 'boolList': boolListFieldValue,

      if (stringList != _sentinel)
        'stringList': ((Object? x) => x)(stringList as List<String>?),

      if (stringListFieldValue != null) 'stringList': stringListFieldValue,

      if (numList != _sentinel)
        'numList': ((Object? x) => x)(numList as List<num>?),

      if (numListFieldValue != null) 'numList': numListFieldValue,

      if (objectList != _sentinel)
        'objectList': ((Object? x) => x)(objectList as List<Object?>?),

      if (objectListFieldValue != null) 'objectList': objectListFieldValue,

      if (dynamicList != _sentinel)
        'dynamicList': ((Object? x) => x)(dynamicList as List<dynamic>?),

      if (dynamicListFieldValue != null) 'dynamicList': dynamicListFieldValue,

      if (boolSet != _sentinel)
        'boolSet': ((Set<bool>? x) =>
            (x as Set?)?.toList())(boolSet as Set<bool>?),

      if (boolSetFieldValue != null) 'boolSet': boolSetFieldValue,

      if (enumValue != _sentinel)
        'enumValue': ((TestEnum x) =>
            _firestoreEnumMap_TestEnum[x]!)(enumValue as TestEnum),

      if (enumValueFieldValue != null) 'enumValue': enumValueFieldValue,

      if (nullableEnumValue != _sentinel)
        'nullableEnumValue': ((TestEnum? x) =>
            _firestoreEnumMap_TestEnum[x]!)(nullableEnumValue as TestEnum?),

      if (nullableEnumValueFieldValue != null)
        'nullableEnumValue': nullableEnumValueFieldValue,

      if (enumList != _sentinel)
        'enumList': ((List<TestEnum> x) => (x as List?)
            ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
            .toList())(enumList as List<TestEnum>),

      if (enumListFieldValue != null) 'enumList': enumListFieldValue,

      if (nullableEnumList != _sentinel)
        'nullableEnumList': ((List<TestEnum>? x) => (x as List?)
            ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
            .toList())(nullableEnumList as List<TestEnum>?),

      if (nullableEnumListFieldValue != null)
        'nullableEnumList': nullableEnumListFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is NestedDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class NestedQuery
    implements QueryReference<Nested, NestedQuerySnapshot> {
  @override
  NestedQuery limit(int limit);

  @override
  NestedQuery limitToLast(int limit);

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
  /// ```
  NestedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereValue({
    Nested? isEqualTo,
    Nested? isNotEqualTo,
    Nested? isLessThan,
    Nested? isLessThanOrEqualTo,
    Nested? isGreaterThan,
    Nested? isGreaterThanOrEqualTo,
    List<Nested?>? whereIn,
    List<Nested?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereSimple({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereValueList({
    List<Nested>? isEqualTo,
    List<Nested>? isNotEqualTo,
    List<Nested>? isLessThan,
    List<Nested>? isLessThanOrEqualTo,
    List<Nested>? isGreaterThan,
    List<Nested>? isGreaterThanOrEqualTo,
    Nested? arrayContains,
    List<Nested>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereBoolList({
    List<bool>? isEqualTo,
    List<bool>? isNotEqualTo,
    List<bool>? isLessThan,
    List<bool>? isLessThanOrEqualTo,
    List<bool>? isGreaterThan,
    List<bool>? isGreaterThanOrEqualTo,
    bool? arrayContains,
    List<bool>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereStringList({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereNumList({
    List<num>? isEqualTo,
    List<num>? isNotEqualTo,
    List<num>? isLessThan,
    List<num>? isLessThanOrEqualTo,
    List<num>? isGreaterThan,
    List<num>? isGreaterThanOrEqualTo,
    num? arrayContains,
    List<num>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereObjectList({
    List<Object?>? isEqualTo,
    List<Object?>? isNotEqualTo,
    List<Object?>? isLessThan,
    List<Object?>? isLessThanOrEqualTo,
    List<Object?>? isGreaterThan,
    List<Object?>? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereDynamicList({
    List<dynamic>? isEqualTo,
    List<dynamic>? isNotEqualTo,
    List<dynamic>? isLessThan,
    List<dynamic>? isLessThanOrEqualTo,
    List<dynamic>? isGreaterThan,
    List<dynamic>? isGreaterThanOrEqualTo,
    dynamic arrayContains,
    List<dynamic>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereBoolSet({
    Set<bool>? isEqualTo,
    Set<bool>? isNotEqualTo,
    Set<bool>? isLessThan,
    Set<bool>? isLessThanOrEqualTo,
    Set<bool>? isGreaterThan,
    Set<bool>? isGreaterThanOrEqualTo,
    bool? arrayContains,
    Set<bool>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereEnumValue({
    TestEnum? isEqualTo,
    TestEnum? isNotEqualTo,
    TestEnum? isLessThan,
    TestEnum? isLessThanOrEqualTo,
    TestEnum? isGreaterThan,
    TestEnum? isGreaterThanOrEqualTo,
    List<TestEnum>? whereIn,
    List<TestEnum>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereNullableEnumValue({
    TestEnum? isEqualTo,
    TestEnum? isNotEqualTo,
    TestEnum? isLessThan,
    TestEnum? isLessThanOrEqualTo,
    TestEnum? isGreaterThan,
    TestEnum? isGreaterThanOrEqualTo,
    List<TestEnum?>? whereIn,
    List<TestEnum?>? whereNotIn,
    bool? isNull,
  });

  NestedQuery whereEnumList({
    List<TestEnum>? isEqualTo,
    List<TestEnum>? isNotEqualTo,
    List<TestEnum>? isLessThan,
    List<TestEnum>? isLessThanOrEqualTo,
    List<TestEnum>? isGreaterThan,
    List<TestEnum>? isGreaterThanOrEqualTo,
    TestEnum? arrayContains,
    List<TestEnum>? arrayContainsAny,
    bool? isNull,
  });

  NestedQuery whereNullableEnumList({
    List<TestEnum>? isEqualTo,
    List<TestEnum>? isNotEqualTo,
    List<TestEnum>? isLessThan,
    List<TestEnum>? isLessThanOrEqualTo,
    List<TestEnum>? isGreaterThan,
    List<TestEnum>? isGreaterThanOrEqualTo,
    TestEnum? arrayContains,
    List<TestEnum>? arrayContainsAny,
    bool? isNull,
  });

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
  /// ```
  NestedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByValue({
    bool descending = false,
    Nested? startAt,
    Nested? startAfter,
    Nested? endAt,
    Nested? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderBySimple({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByValueList({
    bool descending = false,
    List<Nested>? startAt,
    List<Nested>? startAfter,
    List<Nested>? endAt,
    List<Nested>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByBoolList({
    bool descending = false,
    List<bool>? startAt,
    List<bool>? startAfter,
    List<bool>? endAt,
    List<bool>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByStringList({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByNumList({
    bool descending = false,
    List<num>? startAt,
    List<num>? startAfter,
    List<num>? endAt,
    List<num>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByObjectList({
    bool descending = false,
    List<Object?>? startAt,
    List<Object?>? startAfter,
    List<Object?>? endAt,
    List<Object?>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByDynamicList({
    bool descending = false,
    List<dynamic>? startAt,
    List<dynamic>? startAfter,
    List<dynamic>? endAt,
    List<dynamic>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByBoolSet({
    bool descending = false,
    Set<bool>? startAt,
    Set<bool>? startAfter,
    Set<bool>? endAt,
    Set<bool>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByEnumValue({
    bool descending = false,
    TestEnum startAt,
    TestEnum startAfter,
    TestEnum endAt,
    TestEnum endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByNullableEnumValue({
    bool descending = false,
    TestEnum? startAt,
    TestEnum? startAfter,
    TestEnum? endAt,
    TestEnum? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByEnumList({
    bool descending = false,
    List<TestEnum> startAt,
    List<TestEnum> startAfter,
    List<TestEnum> endAt,
    List<TestEnum> endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });

  NestedQuery orderByNullableEnumList({
    bool descending = false,
    List<TestEnum>? startAt,
    List<TestEnum>? startAfter,
    List<TestEnum>? endAt,
    List<TestEnum>? endBefore,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  });
}

class _$NestedQuery extends QueryReference<Nested, NestedQuerySnapshot>
    implements NestedQuery {
  _$NestedQuery(
    this._collection, {
    required Query<Nested> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<NestedQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(NestedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<NestedQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(NestedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  NestedQuery limit(int limit) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery limitToLast(int limit) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Nested?>? whereIn,
    List<Nested?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'value',
        isEqualTo: isEqualTo != _sentinel
            ? ((Nested? x) => x?.toJson())(isEqualTo as Nested?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Nested? x) => x?.toJson())(isNotEqualTo as Nested?)
            : null,
        isLessThan: isLessThan != null
            ? ((Nested? x) => x?.toJson())(isLessThan as Nested?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Nested? x) => x?.toJson())(isLessThanOrEqualTo as Nested?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Nested? x) => x?.toJson())(isGreaterThan as Nested?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Nested? x) => x?.toJson())(isGreaterThanOrEqualTo as Nested?)
            : null,
        whereIn: whereIn?.map((e) => ((Nested? x) => x?.toJson())(e)),
        whereNotIn: whereNotIn?.map((e) => ((Nested? x) => x?.toJson())(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereSimple({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'simple',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => ((Object? x) => x)(e)),
        whereNotIn: whereNotIn?.map((e) => ((Object? x) => x)(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereValueList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Nested>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'valueList',
        isEqualTo: isEqualTo != _sentinel
            ? ((List<Nested>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isEqualTo as List<Nested>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((List<Nested>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isNotEqualTo as List<Nested>?)
            : null,
        isLessThan: isLessThan != null
            ? ((List<Nested>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isLessThan as List<Nested>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((List<Nested>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isLessThanOrEqualTo as List<Nested>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((List<Nested>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isGreaterThan as List<Nested>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((List<Nested>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isGreaterThanOrEqualTo as List<Nested>?)
            : null,
        arrayContains: arrayContains != null
            ? (((List<Nested>? x) => (x as List?)
                          ?.map((e) => e.toJson())
                          .toList())([arrayContains as Nested])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((List<Nested>? x) => (x as List?)
                      ?.map((e) => e.toJson())
                      .toList())(arrayContainsAny)
                  as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereBoolList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<bool>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'boolList',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as List<bool>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as List<bool>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as List<bool>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as List<bool>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as List<bool>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as List<bool>?)
            : null,
        arrayContains: arrayContains != null
            ? (((Object? x) => x)([arrayContains as bool]) as List?)!.single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((Object? x) => x)(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereStringList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'stringList',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as List<String>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as List<String>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as List<String>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as List<String>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as List<String>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as List<String>?)
            : null,
        arrayContains: arrayContains != null
            ? (((Object? x) => x)([arrayContains as String]) as List?)!.single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((Object? x) => x)(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereNumList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<num>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'numList',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as List<num>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as List<num>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as List<num>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as List<num>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as List<num>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as List<num>?)
            : null,
        arrayContains: arrayContains != null
            ? (((Object? x) => x)([arrayContains as num]) as List?)!.single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((Object? x) => x)(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereObjectList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'objectList',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as List<Object?>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as List<Object?>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as List<Object?>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as List<Object?>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as List<Object?>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as List<Object?>?)
            : null,
        arrayContains: arrayContains != null
            ? (((Object? x) => x)([arrayContains]) as List?)!.single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((Object? x) => x)(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereDynamicList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<dynamic>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'dynamicList',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as List<dynamic>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as List<dynamic>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as List<dynamic>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as List<dynamic>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as List<dynamic>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as List<dynamic>?)
            : null,
        arrayContains: arrayContains != null
            ? (((Object? x) => x)([arrayContains as dynamic]) as List?)!.single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((Object? x) => x)(arrayContainsAny) as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereBoolSet({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    Set<bool>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'boolSet',
        isEqualTo: isEqualTo != _sentinel
            ? ((Set<bool>? x) => (x as Set?)?.toList())(isEqualTo as Set<bool>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Set<bool>? x) =>
                  (x as Set?)?.toList())(isNotEqualTo as Set<bool>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Set<bool>? x) =>
                  (x as Set?)?.toList())(isLessThan as Set<bool>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Set<bool>? x) =>
                  (x as Set?)?.toList())(isLessThanOrEqualTo as Set<bool>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Set<bool>? x) =>
                  (x as Set?)?.toList())(isGreaterThan as Set<bool>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Set<bool>? x) =>
                  (x as Set?)?.toList())(isGreaterThanOrEqualTo as Set<bool>?)
            : null,
        arrayContains: arrayContains != null
            ? (((Set<bool>? x) =>
                          (x as Set?)?.toList())({arrayContains as bool})
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((Set<bool>? x) => (x as Set?)?.toList())(arrayContainsAny)
                  as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereEnumValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<TestEnum>? whereIn,
    List<TestEnum>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'enumValue',
        isEqualTo: isEqualTo != _sentinel
            ? ((TestEnum x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isEqualTo as TestEnum)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((TestEnum x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isNotEqualTo as TestEnum)
            : null,
        isLessThan: isLessThan != null
            ? ((TestEnum x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isLessThan as TestEnum)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((TestEnum x) => _firestoreEnumMap_TestEnum[x]!)(
                isLessThanOrEqualTo as TestEnum,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((TestEnum x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isGreaterThan as TestEnum)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((TestEnum x) => _firestoreEnumMap_TestEnum[x]!)(
                isGreaterThanOrEqualTo as TestEnum,
              )
            : null,
        whereIn: whereIn?.map(
          (e) => ((TestEnum x) => _firestoreEnumMap_TestEnum[x]!)(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => ((TestEnum x) => _firestoreEnumMap_TestEnum[x]!)(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereNullableEnumValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<TestEnum?>? whereIn,
    List<TestEnum?>? whereNotIn,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'nullableEnumValue',
        isEqualTo: isEqualTo != _sentinel
            ? ((TestEnum? x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isEqualTo as TestEnum?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((TestEnum? x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isNotEqualTo as TestEnum?)
            : null,
        isLessThan: isLessThan != null
            ? ((TestEnum? x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isLessThan as TestEnum?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((TestEnum? x) => _firestoreEnumMap_TestEnum[x]!)(
                isLessThanOrEqualTo as TestEnum?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((TestEnum? x) =>
                  _firestoreEnumMap_TestEnum[x]!)(isGreaterThan as TestEnum?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((TestEnum? x) => _firestoreEnumMap_TestEnum[x]!)(
                isGreaterThanOrEqualTo as TestEnum?,
              )
            : null,
        whereIn: whereIn?.map(
          (e) => ((TestEnum? x) => _firestoreEnumMap_TestEnum[x]!)(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => ((TestEnum? x) => _firestoreEnumMap_TestEnum[x]!)(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereEnumList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<TestEnum>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'enumList',
        isEqualTo: isEqualTo != _sentinel
            ? ((List<TestEnum> x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isEqualTo as List<TestEnum>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((List<TestEnum> x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isNotEqualTo as List<TestEnum>)
            : null,
        isLessThan: isLessThan != null
            ? ((List<TestEnum> x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isLessThan as List<TestEnum>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((List<TestEnum> x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isLessThanOrEqualTo as List<TestEnum>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((List<TestEnum> x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isGreaterThan as List<TestEnum>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((List<TestEnum> x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isGreaterThanOrEqualTo as List<TestEnum>)
            : null,
        arrayContains: arrayContains != null
            ? (((List<TestEnum> x) => (x as List?)
                          ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                          .toList())([arrayContains as TestEnum])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((List<TestEnum> x) => (x as List?)
                      ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                      .toList())(arrayContainsAny)
                  as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery whereNullableEnumList({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<TestEnum>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'nullableEnumList',
        isEqualTo: isEqualTo != _sentinel
            ? ((List<TestEnum>? x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isEqualTo as List<TestEnum>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((List<TestEnum>? x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isNotEqualTo as List<TestEnum>?)
            : null,
        isLessThan: isLessThan != null
            ? ((List<TestEnum>? x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isLessThan as List<TestEnum>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((List<TestEnum>? x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isLessThanOrEqualTo as List<TestEnum>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((List<TestEnum>? x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isGreaterThan as List<TestEnum>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((List<TestEnum>? x) => (x as List?)
                  ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                  .toList())(isGreaterThanOrEqualTo as List<TestEnum>?)
            : null,
        arrayContains: arrayContains != null
            ? (((List<TestEnum>? x) => (x as List?)
                          ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                          .toList())([arrayContains as TestEnum])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((List<TestEnum>? x) => (x as List?)
                      ?.map((e) => _firestoreEnumMap_TestEnum[e]!)
                      .toList())(arrayContainsAny)
                  as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  NestedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'value',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderBySimple({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'simple',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByValueList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'valueList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByBoolList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'boolList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByStringList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'stringList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByNumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'numList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByObjectList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'objectList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByDynamicList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'dynamicList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByBoolSet({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'boolSet',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByEnumValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'enumValue',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByNullableEnumValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'nullableEnumValue',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByEnumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'enumList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  NestedQuery orderByNullableEnumList({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    NestedDocumentSnapshot? startAtDocument,
    NestedDocumentSnapshot? endAtDocument,
    NestedDocumentSnapshot? endBeforeDocument,
    NestedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'nullableEnumList',
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$NestedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$NestedQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class NestedDocumentSnapshot extends FirestoreDocumentSnapshot<Nested> {
  NestedDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Nested> snapshot;

  @override
  NestedDocumentReference get reference {
    return NestedDocumentReference(snapshot.reference);
  }

  @override
  final Nested? data;
}

class NestedQuerySnapshot
    extends FirestoreQuerySnapshot<Nested, NestedQueryDocumentSnapshot> {
  NestedQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory NestedQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Nested> snapshot,
  ) {
    final docs = snapshot.docs.map(NestedQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, NestedDocumentSnapshot._);
    }).toList();

    return NestedQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<NestedDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    NestedDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<NestedDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Nested> snapshot;

  @override
  final List<NestedQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<NestedDocumentSnapshot>> docChanges;
}

class NestedQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Nested>
    implements NestedDocumentSnapshot {
  NestedQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Nested> snapshot;

  @override
  final Nested data;

  @override
  NestedDocumentReference get reference {
    return NestedDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class PersonCollectionReference
    implements
        PersonQuery,
        FirestoreCollectionReference<Person, PersonQuerySnapshot> {
  factory PersonCollectionReference([FirebaseFirestore? firestore]) =
      _$PersonCollectionReference;

  static Person fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$PersonFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(Person value, SetOptions? options) {
    return value.toJson();
  }

  @override
  CollectionReference<Person> get reference;

  @override
  PersonDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<PersonDocumentReference> add(Person value);
}

class _$PersonCollectionReference extends _$PersonQuery
    implements PersonCollectionReference {
  factory _$PersonCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$PersonCollectionReference._(
      firestore
          .collection('freezed-test')
          .withConverter(
            fromFirestore: PersonCollectionReference.fromFirestore,
            toFirestore: PersonCollectionReference.toFirestore,
          ),
    );
  }

  _$PersonCollectionReference._(CollectionReference<Person> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Person> get reference =>
      super.reference as CollectionReference<Person>;

  @override
  PersonDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return PersonDocumentReference(reference.doc(id));
  }

  @override
  Future<PersonDocumentReference> add(Person value) {
    return reference.add(value).then((ref) => PersonDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$PersonCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class PersonDocumentReference
    extends FirestoreDocumentReference<Person, PersonDocumentSnapshot> {
  factory PersonDocumentReference(DocumentReference<Person> reference) =
      _$PersonDocumentReference;

  DocumentReference<Person> get reference;

  /// A reference to the [PersonCollectionReference] containing this document.
  PersonCollectionReference get parent {
    return _$PersonCollectionReference(reference.firestore);
  }

  @override
  Stream<PersonDocumentSnapshot> snapshots();

  @override
  Future<PersonDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Person model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Person model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Person model, {
    SetOptions? options,
    FieldValue firstNameFieldValue,
    FieldValue lastNameFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String firstName,
    FieldValue firstNameFieldValue,
    String lastName,
    FieldValue lastNameFieldValue,
  });
}

class _$PersonDocumentReference
    extends FirestoreDocumentReference<Person, PersonDocumentSnapshot>
    implements PersonDocumentReference {
  _$PersonDocumentReference(this.reference);

  @override
  final DocumentReference<Person> reference;

  /// A reference to the [PersonCollectionReference] containing this document.
  PersonCollectionReference get parent {
    return _$PersonCollectionReference(reference.firestore);
  }

  @override
  Stream<PersonDocumentSnapshot> snapshots() {
    return reference.snapshots().map(PersonDocumentSnapshot._);
  }

  @override
  Future<PersonDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PersonDocumentSnapshot._);
  }

  @override
  Future<PersonDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(PersonDocumentSnapshot._);
  }

  Future<void> set(
    Person model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,

      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Person model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,

      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Person model, {
    SetOptions? options,
    FieldValue? firstNameFieldValue,
    FieldValue? lastNameFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,

      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
  }) async {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$PersonFieldMap['firstName']!: _$PersonPerFieldToJson.firstName(
          firstName as String,
        ),

      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,

      if (lastName != _sentinel)
        _$PersonFieldMap['lastName']!: _$PersonPerFieldToJson.lastName(
          lastName as String,
        ),

      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$PersonFieldMap['firstName']!: _$PersonPerFieldToJson.firstName(
          firstName as String,
        ),

      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,

      if (lastName != _sentinel)
        _$PersonFieldMap['lastName']!: _$PersonPerFieldToJson.lastName(
          lastName as String,
        ),

      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? firstName = _sentinel,
    FieldValue? firstNameFieldValue,
    Object? lastName = _sentinel,
    FieldValue? lastNameFieldValue,
  }) {
    assert(
      firstName == _sentinel || firstNameFieldValue == null,
      "Cannot specify both firstName and firstNameFieldValue",
    );
    assert(
      lastName == _sentinel || lastNameFieldValue == null,
      "Cannot specify both lastName and lastNameFieldValue",
    );
    final json = {
      if (firstName != _sentinel)
        _$PersonFieldMap['firstName']!: _$PersonPerFieldToJson.firstName(
          firstName as String,
        ),

      if (firstNameFieldValue != null)
        _$PersonFieldMap['firstName']!: firstNameFieldValue,

      if (lastName != _sentinel)
        _$PersonFieldMap['lastName']!: _$PersonPerFieldToJson.lastName(
          lastName as String,
        ),

      if (lastNameFieldValue != null)
        _$PersonFieldMap['lastName']!: lastNameFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is PersonDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class PersonQuery
    implements QueryReference<Person, PersonQuerySnapshot> {
  @override
  PersonQuery limit(int limit);

  @override
  PersonQuery limitToLast(int limit);

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
  /// ```
  PersonQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  PersonQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PersonQuery whereFirstName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PersonQuery whereLastName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

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
  /// ```
  PersonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });

  PersonQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });

  PersonQuery orderByFirstName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });

  PersonQuery orderByLastName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  });
}

class _$PersonQuery extends QueryReference<Person, PersonQuerySnapshot>
    implements PersonQuery {
  _$PersonQuery(
    this._collection, {
    required Query<Person> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<PersonQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(PersonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<PersonQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PersonQuerySnapshot._fromQuerySnapshot);
  }

  @override
  PersonQuery limit(int limit) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery limitToLast(int limit) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereFirstName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PersonFieldMap['firstName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PersonPerFieldToJson.firstName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PersonPerFieldToJson.firstName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PersonPerFieldToJson.firstName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PersonPerFieldToJson.firstName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PersonPerFieldToJson.firstName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PersonPerFieldToJson.firstName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PersonPerFieldToJson.firstName(e)),
        whereNotIn: whereNotIn?.map((e) => _$PersonPerFieldToJson.firstName(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery whereLastName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PersonFieldMap['lastName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PersonPerFieldToJson.lastName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PersonPerFieldToJson.lastName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PersonPerFieldToJson.lastName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PersonPerFieldToJson.lastName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PersonPerFieldToJson.lastName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PersonPerFieldToJson.lastName(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$PersonPerFieldToJson.lastName(e)),
        whereNotIn: whereNotIn?.map((e) => _$PersonPerFieldToJson.lastName(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PersonQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PersonQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PersonQuery orderByFirstName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PersonFieldMap['firstName']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PersonQuery orderByLastName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PersonDocumentSnapshot? startAtDocument,
    PersonDocumentSnapshot? endAtDocument,
    PersonDocumentSnapshot? endBeforeDocument,
    PersonDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PersonFieldMap['lastName']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PersonQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$PersonQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class PersonDocumentSnapshot extends FirestoreDocumentSnapshot<Person> {
  PersonDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Person> snapshot;

  @override
  PersonDocumentReference get reference {
    return PersonDocumentReference(snapshot.reference);
  }

  @override
  final Person? data;
}

class PersonQuerySnapshot
    extends FirestoreQuerySnapshot<Person, PersonQueryDocumentSnapshot> {
  PersonQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory PersonQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Person> snapshot,
  ) {
    final docs = snapshot.docs.map(PersonQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, PersonDocumentSnapshot._);
    }).toList();

    return PersonQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<PersonDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    PersonDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<PersonDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Person> snapshot;

  @override
  final List<PersonQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<PersonDocumentSnapshot>> docChanges;
}

class PersonQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Person>
    implements PersonDocumentSnapshot {
  PersonQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Person> snapshot;

  @override
  final Person data;

  @override
  PersonDocumentReference get reference {
    return PersonDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class PublicRedirectedCollectionReference
    implements
        PublicRedirectedQuery,
        FirestoreCollectionReference<
          PublicRedirected,
          PublicRedirectedQuerySnapshot
        > {
  factory PublicRedirectedCollectionReference([FirebaseFirestore? firestore]) =
      _$PublicRedirectedCollectionReference;

  static PublicRedirected fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$PublicRedirected2FromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    PublicRedirected value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<PublicRedirected> get reference;

  @override
  PublicRedirectedDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<PublicRedirectedDocumentReference> add(PublicRedirected value);
}

class _$PublicRedirectedCollectionReference extends _$PublicRedirectedQuery
    implements PublicRedirectedCollectionReference {
  factory _$PublicRedirectedCollectionReference([
    FirebaseFirestore? firestore,
  ]) {
    firestore ??= FirebaseFirestore.instance;

    return _$PublicRedirectedCollectionReference._(
      firestore
          .collection('freezed-test')
          .withConverter(
            fromFirestore: PublicRedirectedCollectionReference.fromFirestore,
            toFirestore: PublicRedirectedCollectionReference.toFirestore,
          ),
    );
  }

  _$PublicRedirectedCollectionReference._(
    CollectionReference<PublicRedirected> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<PublicRedirected> get reference =>
      super.reference as CollectionReference<PublicRedirected>;

  @override
  PublicRedirectedDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return PublicRedirectedDocumentReference(reference.doc(id));
  }

  @override
  Future<PublicRedirectedDocumentReference> add(PublicRedirected value) {
    return reference
        .add(value)
        .then((ref) => PublicRedirectedDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$PublicRedirectedCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class PublicRedirectedDocumentReference
    extends
        FirestoreDocumentReference<
          PublicRedirected,
          PublicRedirectedDocumentSnapshot
        > {
  factory PublicRedirectedDocumentReference(
    DocumentReference<PublicRedirected> reference,
  ) = _$PublicRedirectedDocumentReference;

  DocumentReference<PublicRedirected> get reference;

  /// A reference to the [PublicRedirectedCollectionReference] containing this document.
  PublicRedirectedCollectionReference get parent {
    return _$PublicRedirectedCollectionReference(reference.firestore);
  }

  @override
  Stream<PublicRedirectedDocumentSnapshot> snapshots();

  @override
  Future<PublicRedirectedDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    PublicRedirected model, {
    SetOptions? options,
    FieldValue valueFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue valueFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue valueFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({String value, FieldValue valueFieldValue});

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String value,
    FieldValue valueFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String value,
    FieldValue valueFieldValue,
  });
}

class _$PublicRedirectedDocumentReference
    extends
        FirestoreDocumentReference<
          PublicRedirected,
          PublicRedirectedDocumentSnapshot
        >
    implements PublicRedirectedDocumentReference {
  _$PublicRedirectedDocumentReference(this.reference);

  @override
  final DocumentReference<PublicRedirected> reference;

  /// A reference to the [PublicRedirectedCollectionReference] containing this document.
  PublicRedirectedCollectionReference get parent {
    return _$PublicRedirectedCollectionReference(reference.firestore);
  }

  @override
  Stream<PublicRedirectedDocumentSnapshot> snapshots() {
    return reference.snapshots().map(PublicRedirectedDocumentSnapshot._);
  }

  @override
  Future<PublicRedirectedDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PublicRedirectedDocumentSnapshot._);
  }

  @override
  Future<PublicRedirectedDocumentSnapshot> transactionGet(
    Transaction transaction,
  ) {
    return transaction.get(reference).then(PublicRedirectedDocumentSnapshot._);
  }

  Future<void> set(
    PublicRedirected model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    PublicRedirected model, {
    SetOptions? options,
    FieldValue? valueFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) async {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$PublicRedirected2FieldMap['value']!: _$PublicRedirected2PerFieldToJson
            .value(value as String),

      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$PublicRedirected2FieldMap['value']!: _$PublicRedirected2PerFieldToJson
            .value(value as String),

      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? value = _sentinel,
    FieldValue? valueFieldValue,
  }) {
    assert(
      value == _sentinel || valueFieldValue == null,
      "Cannot specify both value and valueFieldValue",
    );
    final json = {
      if (value != _sentinel)
        _$PublicRedirected2FieldMap['value']!: _$PublicRedirected2PerFieldToJson
            .value(value as String),

      if (valueFieldValue != null)
        _$PublicRedirected2FieldMap['value']!: valueFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is PublicRedirectedDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class PublicRedirectedQuery
    implements QueryReference<PublicRedirected, PublicRedirectedQuerySnapshot> {
  @override
  PublicRedirectedQuery limit(int limit);

  @override
  PublicRedirectedQuery limitToLast(int limit);

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
  /// ```
  PublicRedirectedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  PublicRedirectedQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  PublicRedirectedQuery whereValue({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

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
  /// ```
  PublicRedirectedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  });

  PublicRedirectedQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  });

  PublicRedirectedQuery orderByValue({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  });
}

class _$PublicRedirectedQuery
    extends QueryReference<PublicRedirected, PublicRedirectedQuerySnapshot>
    implements PublicRedirectedQuery {
  _$PublicRedirectedQuery(
    this._collection, {
    required Query<PublicRedirected> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<PublicRedirectedQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(
      PublicRedirectedQuerySnapshot._fromQuerySnapshot,
    );
  }

  @override
  Future<PublicRedirectedQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(PublicRedirectedQuerySnapshot._fromQuerySnapshot);
  }

  @override
  PublicRedirectedQuery limit(int limit) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery limitToLast(int limit) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery whereValue({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PublicRedirected2FieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PublicRedirected2PerFieldToJson.value(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PublicRedirected2PerFieldToJson.value(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PublicRedirected2PerFieldToJson.value(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PublicRedirected2PerFieldToJson.value(
                isLessThanOrEqualTo as String,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PublicRedirected2PerFieldToJson.value(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PublicRedirected2PerFieldToJson.value(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map(
          (e) => _$PublicRedirected2PerFieldToJson.value(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => _$PublicRedirected2PerFieldToJson.value(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PublicRedirectedQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PublicRedirectedQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  PublicRedirectedQuery orderByValue({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PublicRedirectedDocumentSnapshot? startAtDocument,
    PublicRedirectedDocumentSnapshot? endAtDocument,
    PublicRedirectedDocumentSnapshot? endBeforeDocument,
    PublicRedirectedDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$PublicRedirected2FieldMap['value']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PublicRedirectedQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$PublicRedirectedQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class PublicRedirectedDocumentSnapshot
    extends FirestoreDocumentSnapshot<PublicRedirected> {
  PublicRedirectedDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<PublicRedirected> snapshot;

  @override
  PublicRedirectedDocumentReference get reference {
    return PublicRedirectedDocumentReference(snapshot.reference);
  }

  @override
  final PublicRedirected? data;
}

class PublicRedirectedQuerySnapshot
    extends
        FirestoreQuerySnapshot<
          PublicRedirected,
          PublicRedirectedQueryDocumentSnapshot
        > {
  PublicRedirectedQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory PublicRedirectedQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<PublicRedirected> snapshot,
  ) {
    final docs = snapshot.docs
        .map(PublicRedirectedQueryDocumentSnapshot._)
        .toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, PublicRedirectedDocumentSnapshot._);
    }).toList();

    return PublicRedirectedQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<PublicRedirectedDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    PublicRedirectedDocumentSnapshot Function(DocumentSnapshot<T> doc)
    decodeDoc,
  ) {
    return FirestoreDocumentChange<PublicRedirectedDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<PublicRedirected> snapshot;

  @override
  final List<PublicRedirectedQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<PublicRedirectedDocumentSnapshot>>
  docChanges;
}

class PublicRedirectedQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<PublicRedirected>
    implements PublicRedirectedDocumentSnapshot {
  PublicRedirectedQueryDocumentSnapshot._(this.snapshot)
    : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<PublicRedirected> snapshot;

  @override
  final PublicRedirected data;

  @override
  PublicRedirectedDocumentReference get reference {
    return PublicRedirectedDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserCollectionReference
    implements
        UserQuery,
        FirestoreCollectionReference<User, UserQuerySnapshot> {
  factory UserCollectionReference([FirebaseFirestore? firestore]) =
      _$UserCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(User value, SetOptions? options) {
    return value.toJson();
  }

  @override
  CollectionReference<User> get reference;

  @override
  UserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserDocumentReference> add(User value);
}

class _$UserCollectionReference extends _$UserQuery
    implements UserCollectionReference {
  factory _$UserCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserCollectionReference._(
      firestore
          .collection('users')
          .withConverter(
            fromFirestore: UserCollectionReference.fromFirestore,
            toFirestore: UserCollectionReference.toFirestore,
          ),
    );
  }

  _$UserCollectionReference._(CollectionReference<User> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  UserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserDocumentReference(reference.doc(id));
  }

  @override
  Future<UserDocumentReference> add(User value) {
    return reference.add(value).then((ref) => UserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot> {
  factory UserDocumentReference(DocumentReference<User> reference) =
      _$UserDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  @override
  Stream<UserDocumentSnapshot> snapshots();

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue ageFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue ageFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue ageFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });
}

class _$UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot>
    implements UserDocumentReference {
  _$UserDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  @override
  Stream<UserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserDocumentSnapshot._);
  }

  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),

      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$UserFieldMap['age']!: _$UserPerFieldToJson.age(age as int?),

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),

      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$UserFieldMap['age']!: _$UserPerFieldToJson.age(age as int?),

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),

      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$UserFieldMap['age']!: _$UserPerFieldToJson.age(age as int?),

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserQuery implements QueryReference<User, UserQuerySnapshot> {
  @override
  UserQuery limit(int limit);

  @override
  UserQuery limitToLast(int limit);

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
  /// ```
  UserQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  });

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
  /// ```
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByAge({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });
}

class _$UserQuery extends QueryReference<User, UserQuerySnapshot>
    implements UserQuery {
  _$UserQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserQuery limit(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery limitToLast(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.name(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereEmail({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.email(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereAge({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int?>? whereIn,
    List<int?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['age']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.age(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.age(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.age(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.age(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.age(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.age(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.age(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.age(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['name']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['email']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByAge({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['age']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  UserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(snapshot.reference);
  }

  @override
  final User? data;
}

class UserQuerySnapshot
    extends FirestoreQuerySnapshot<User, UserQueryDocumentSnapshot> {
  UserQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory UserQuerySnapshot._fromQuerySnapshot(QuerySnapshot<User> snapshot) {
    final docs = snapshot.docs.map(UserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, UserDocumentSnapshot._);
    }).toList();

    return UserQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<UserDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<UserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserDocumentSnapshot>> docChanges;
}

class UserQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User>
    implements UserDocumentSnapshot {
  UserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Person _$PersonFromJson(Map<String, dynamic> json) => _Person(
  firstName: json['first_name'] as String,
  lastName: json['LAST_NAME'] as String,
);

const _$PersonFieldMap = <String, String>{
  'firstName': 'first_name',
  'lastName': 'LAST_NAME',
};

// ignore: unused_element
abstract class _$PersonPerFieldToJson {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
}

Map<String, dynamic> _$PersonToJson(_Person instance) => <String, dynamic>{
  'first_name': instance.firstName,
  'LAST_NAME': instance.lastName,
};

PublicRedirected2 _$PublicRedirected2FromJson(Map<String, dynamic> json) =>
    PublicRedirected2(value: json['value'] as String);

const _$PublicRedirected2FieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$PublicRedirected2PerFieldToJson {
  // ignore: unused_element
  static Object? value(String instance) => instance;
}

Map<String, dynamic> _$PublicRedirected2ToJson(PublicRedirected2 instance) =>
    <String, dynamic>{'value': instance.value};

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  name: json['name'] as String,
  email: json['email'] as String,
  age: (json['age'] as num?)?.toInt(),
);

const _$UserFieldMap = <String, String>{
  'name': 'name',
  'email': 'email',
  'age': 'age',
};

// ignore: unused_element
abstract class _$UserPerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? age(int? instance) => instance;
}

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'age': instance.age,
};
