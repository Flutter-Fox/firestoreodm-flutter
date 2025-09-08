// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_normal.dart';

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
    return _$PersonToJson(value);
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
      ..._$PersonToJson(model),
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
      ..._$PersonToJson(model),
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
      ..._$PersonToJson(model),
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
    return _$PublicRedirectedFromJson(snapshot.data()!);
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
        _$PublicRedirectedFieldMap['value']!: valueFieldValue,
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
        _$PublicRedirectedFieldMap['value']!: valueFieldValue,
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
        _$PublicRedirectedFieldMap['value']!: valueFieldValue,
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
        _$PublicRedirectedFieldMap['value']!: _$PublicRedirectedPerFieldToJson
            .value(value as String),

      if (valueFieldValue != null)
        _$PublicRedirectedFieldMap['value']!: valueFieldValue,
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
        _$PublicRedirectedFieldMap['value']!: _$PublicRedirectedPerFieldToJson
            .value(value as String),

      if (valueFieldValue != null)
        _$PublicRedirectedFieldMap['value']!: valueFieldValue,
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
        _$PublicRedirectedFieldMap['value']!: _$PublicRedirectedPerFieldToJson
            .value(value as String),

      if (valueFieldValue != null)
        _$PublicRedirectedFieldMap['value']!: valueFieldValue,
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
        _$PublicRedirectedFieldMap['value']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$PublicRedirectedPerFieldToJson.value(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$PublicRedirectedPerFieldToJson.value(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$PublicRedirectedPerFieldToJson.value(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$PublicRedirectedPerFieldToJson.value(
                isLessThanOrEqualTo as String,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$PublicRedirectedPerFieldToJson.value(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$PublicRedirectedPerFieldToJson.value(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$PublicRedirectedPerFieldToJson.value(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$PublicRedirectedPerFieldToJson.value(e),
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
      _$PublicRedirectedFieldMap['value']!,
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
abstract class User2CollectionReference
    implements
        User2Query,
        FirestoreCollectionReference<User2, User2QuerySnapshot> {
  factory User2CollectionReference([FirebaseFirestore? firestore]) =
      _$User2CollectionReference;

  static User2 fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$User2FromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(User2 value, SetOptions? options) {
    return value.toJson();
  }

  @override
  CollectionReference<User2> get reference;

  @override
  User2DocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<User2DocumentReference> add(User2 value);
}

class _$User2CollectionReference extends _$User2Query
    implements User2CollectionReference {
  factory _$User2CollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$User2CollectionReference._(
      firestore
          .collection('users2')
          .withConverter(
            fromFirestore: User2CollectionReference.fromFirestore,
            toFirestore: User2CollectionReference.toFirestore,
          ),
    );
  }

  _$User2CollectionReference._(CollectionReference<User2> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User2> get reference =>
      super.reference as CollectionReference<User2>;

  @override
  User2DocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return User2DocumentReference(reference.doc(id));
  }

  @override
  Future<User2DocumentReference> add(User2 value) {
    return reference.add(value).then((ref) => User2DocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$User2CollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class User2DocumentReference
    extends FirestoreDocumentReference<User2, User2DocumentSnapshot> {
  factory User2DocumentReference(DocumentReference<User2> reference) =
      _$User2DocumentReference;

  DocumentReference<User2> get reference;

  /// A reference to the [User2CollectionReference] containing this document.
  User2CollectionReference get parent {
    return _$User2CollectionReference(reference.firestore);
  }

  @override
  Stream<User2DocumentSnapshot> snapshots();

  @override
  Future<User2DocumentSnapshot> get([GetOptions? options]);

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
    User2 model, {
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
    User2 model, {
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
    User2 model, {
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
    String? name,
    FieldValue nameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? name,
    FieldValue nameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String? name,
    FieldValue nameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    int? age,
    FieldValue ageFieldValue,
  });
}

class _$User2DocumentReference
    extends FirestoreDocumentReference<User2, User2DocumentSnapshot>
    implements User2DocumentReference {
  _$User2DocumentReference(this.reference);

  @override
  final DocumentReference<User2> reference;

  /// A reference to the [User2CollectionReference] containing this document.
  User2CollectionReference get parent {
    return _$User2CollectionReference(reference.firestore);
  }

  @override
  Stream<User2DocumentSnapshot> snapshots() {
    return reference.snapshots().map(User2DocumentSnapshot._);
  }

  @override
  Future<User2DocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(User2DocumentSnapshot._);
  }

  @override
  Future<User2DocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(User2DocumentSnapshot._);
  }

  Future<void> set(
    User2 model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$User2FieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null) _$User2FieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$User2FieldMap['age']!: ageFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User2 model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$User2FieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null) _$User2FieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$User2FieldMap['age']!: ageFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User2 model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? ageFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$User2FieldMap['name']!: nameFieldValue,

      if (emailFieldValue != null) _$User2FieldMap['email']!: emailFieldValue,

      if (ageFieldValue != null) _$User2FieldMap['age']!: ageFieldValue,
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
        _$User2FieldMap['name']!: _$User2PerFieldToJson.name(name as String?),

      if (nameFieldValue != null) _$User2FieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$User2FieldMap['email']!: _$User2PerFieldToJson.email(
          email as String?,
        ),

      if (emailFieldValue != null) _$User2FieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$User2FieldMap['age']!: _$User2PerFieldToJson.age(age as int?),

      if (ageFieldValue != null) _$User2FieldMap['age']!: ageFieldValue,
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
        _$User2FieldMap['name']!: _$User2PerFieldToJson.name(name as String?),

      if (nameFieldValue != null) _$User2FieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$User2FieldMap['email']!: _$User2PerFieldToJson.email(
          email as String?,
        ),

      if (emailFieldValue != null) _$User2FieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$User2FieldMap['age']!: _$User2PerFieldToJson.age(age as int?),

      if (ageFieldValue != null) _$User2FieldMap['age']!: ageFieldValue,
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
        _$User2FieldMap['name']!: _$User2PerFieldToJson.name(name as String?),

      if (nameFieldValue != null) _$User2FieldMap['name']!: nameFieldValue,

      if (email != _sentinel)
        _$User2FieldMap['email']!: _$User2PerFieldToJson.email(
          email as String?,
        ),

      if (emailFieldValue != null) _$User2FieldMap['email']!: emailFieldValue,

      if (age != _sentinel)
        _$User2FieldMap['age']!: _$User2PerFieldToJson.age(age as int?),

      if (ageFieldValue != null) _$User2FieldMap['age']!: ageFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is User2DocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class User2Query implements QueryReference<User2, User2QuerySnapshot> {
  @override
  User2Query limit(int limit);

  @override
  User2Query limitToLast(int limit);

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
  User2Query whereFieldPath(
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

  User2Query whereDocumentId({
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

  User2Query whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  User2Query whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  User2Query whereAge({
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
  User2Query orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  });

  User2Query orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  });

  User2Query orderByName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  });

  User2Query orderByEmail({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  });

  User2Query orderByAge({
    bool descending = false,
    int? startAt,
    int? startAfter,
    int? endAt,
    int? endBefore,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  });
}

class _$User2Query extends QueryReference<User2, User2QuerySnapshot>
    implements User2Query {
  _$User2Query(
    this._collection, {
    required Query<User2> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<User2QuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(User2QuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<User2QuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(User2QuerySnapshot._fromQuerySnapshot);
  }

  @override
  User2Query limit(int limit) {
    return _$User2Query(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  User2Query limitToLast(int limit) {
    return _$User2Query(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  User2Query whereFieldPath(
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
    return _$User2Query(
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
  User2Query whereDocumentId({
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
    return _$User2Query(
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
  User2Query whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$User2Query(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$User2FieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$User2PerFieldToJson.name(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$User2PerFieldToJson.name(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$User2PerFieldToJson.name(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$User2PerFieldToJson.name(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$User2PerFieldToJson.name(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$User2PerFieldToJson.name(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$User2PerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$User2PerFieldToJson.name(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  User2Query whereEmail({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$User2Query(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$User2FieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$User2PerFieldToJson.email(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$User2PerFieldToJson.email(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$User2PerFieldToJson.email(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$User2PerFieldToJson.email(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$User2PerFieldToJson.email(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$User2PerFieldToJson.email(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$User2PerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$User2PerFieldToJson.email(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  User2Query whereAge({
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
    return _$User2Query(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$User2FieldMap['age']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$User2PerFieldToJson.age(isEqualTo as int?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$User2PerFieldToJson.age(isNotEqualTo as int?)
            : null,
        isLessThan: isLessThan != null
            ? _$User2PerFieldToJson.age(isLessThan as int?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$User2PerFieldToJson.age(isLessThanOrEqualTo as int?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$User2PerFieldToJson.age(isGreaterThan as int?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$User2PerFieldToJson.age(isGreaterThanOrEqualTo as int?)
            : null,
        whereIn: whereIn?.map((e) => _$User2PerFieldToJson.age(e)),
        whereNotIn: whereNotIn?.map((e) => _$User2PerFieldToJson.age(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  User2Query orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
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

    return _$User2Query(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  User2Query orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
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

    return _$User2Query(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  User2Query orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$User2FieldMap['name']!,
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

    return _$User2Query(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  User2Query orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$User2FieldMap['email']!,
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

    return _$User2Query(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  User2Query orderByAge({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    User2DocumentSnapshot? startAtDocument,
    User2DocumentSnapshot? endAtDocument,
    User2DocumentSnapshot? endBeforeDocument,
    User2DocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$User2FieldMap['age']!,
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

    return _$User2Query(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$User2Query &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class User2DocumentSnapshot extends FirestoreDocumentSnapshot<User2> {
  User2DocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User2> snapshot;

  @override
  User2DocumentReference get reference {
    return User2DocumentReference(snapshot.reference);
  }

  @override
  final User2? data;
}

class User2QuerySnapshot
    extends FirestoreQuerySnapshot<User2, User2QueryDocumentSnapshot> {
  User2QuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory User2QuerySnapshot._fromQuerySnapshot(QuerySnapshot<User2> snapshot) {
    final docs = snapshot.docs.map(User2QueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, User2DocumentSnapshot._);
    }).toList();

    return User2QuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<User2DocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    User2DocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<User2DocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User2> snapshot;

  @override
  final List<User2QueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<User2DocumentSnapshot>> docChanges;
}

class User2QueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User2>
    implements User2DocumentSnapshot {
  User2QueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User2> snapshot;

  @override
  final User2 data;

  @override
  User2DocumentReference get reference {
    return User2DocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
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

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
  'first_name': instance.firstName,
  'LAST_NAME': instance.lastName,
};

PublicRedirected _$PublicRedirectedFromJson(Map<String, dynamic> json) =>
    PublicRedirected(value: json['value'] as String);

const _$PublicRedirectedFieldMap = <String, String>{'value': 'value'};

// ignore: unused_element
abstract class _$PublicRedirectedPerFieldToJson {
  // ignore: unused_element
  static Object? value(String instance) => instance;
}

Map<String, dynamic> _$PublicRedirectedToJson(PublicRedirected instance) =>
    <String, dynamic>{'value': instance.value};

User2 _$User2FromJson(Map<String, dynamic> json) => User2(
  name: json['name'] as String?,
  email: json['email'] as String?,
  age: (json['age'] as num?)?.toInt(),
);

const _$User2FieldMap = <String, String>{
  'name': 'name',
  'email': 'email',
  'age': 'age',
};

// ignore: unused_element
abstract class _$User2PerFieldToJson {
  // ignore: unused_element
  static Object? name(String? instance) => instance;
  // ignore: unused_element
  static Object? email(String? instance) => instance;
  // ignore: unused_element
  static Object? age(int? instance) => instance;
}

Map<String, dynamic> _$User2ToJson(User2 instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'age': instance.age,
};
