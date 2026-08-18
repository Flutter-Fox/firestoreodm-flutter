// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

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
    FieldValue ageFieldValue,
    FieldValue nameFieldValue,
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
    FieldValue ageFieldValue,
    FieldValue nameFieldValue,
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
    FieldValue ageFieldValue,
    FieldValue nameFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String age,
    FieldValue ageFieldValue,
    String name,
    FieldValue nameFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String age,
    FieldValue ageFieldValue,
    String name,
    FieldValue nameFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String age,
    FieldValue ageFieldValue,
    String name,
    FieldValue nameFieldValue,
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
    FieldValue? ageFieldValue,
    FieldValue? nameFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
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
    FieldValue? ageFieldValue,
    FieldValue? nameFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? ageFieldValue,
    FieldValue? nameFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
  }) async {
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    final json = {
      if (age != _sentinel)
        _$UserFieldMap['age']!: _$UserPerFieldToJson.age(age as String),

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,

      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
  }) {
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    final json = {
      if (age != _sentinel)
        _$UserFieldMap['age']!: _$UserPerFieldToJson.age(age as String),

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,

      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? age = _sentinel,
    FieldValue? ageFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
  }) {
    assert(
      age == _sentinel || ageFieldValue == null,
      "Cannot specify both age and ageFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    final json = {
      if (age != _sentinel)
        _$UserFieldMap['age']!: _$UserPerFieldToJson.age(age as String),

      if (ageFieldValue != null) _$UserFieldMap['age']!: ageFieldValue,

      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
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

  UserQuery whereAge({
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

  UserQuery orderByAge({
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
  UserQuery whereAge({
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
        _$UserFieldMap['age']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.age(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.age(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.age(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.age(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.age(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.age(isGreaterThanOrEqualTo as String)
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

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ResidentCollectionReference
    implements
        ResidentQuery,
        FirestoreCollectionReference<Resident, ResidentQuerySnapshot> {
  factory ResidentCollectionReference([FirebaseFirestore? firestore]) =
      _$ResidentCollectionReference;

  static Resident fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Resident.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(Resident value, SetOptions? options) {
    return value.toJson();
  }

  @override
  CollectionReference<Resident> get reference;

  @override
  ResidentDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ResidentDocumentReference> add(Resident value);
}

class _$ResidentCollectionReference extends _$ResidentQuery
    implements ResidentCollectionReference {
  factory _$ResidentCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ResidentCollectionReference._(
      firestore
          .collection('users/**/residents')
          .withConverter(
            fromFirestore: ResidentCollectionReference.fromFirestore,
            toFirestore: ResidentCollectionReference.toFirestore,
          ),
    );
  }

  _$ResidentCollectionReference._(CollectionReference<Resident> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Resident> get reference =>
      super.reference as CollectionReference<Resident>;

  @override
  ResidentDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ResidentDocumentReference(reference.doc(id));
  }

  @override
  Future<ResidentDocumentReference> add(Resident value) {
    return reference.add(value).then((ref) => ResidentDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ResidentCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ResidentDocumentReference
    extends FirestoreDocumentReference<Resident, ResidentDocumentSnapshot> {
  factory ResidentDocumentReference(DocumentReference<Resident> reference) =
      _$ResidentDocumentReference;

  DocumentReference<Resident> get reference;

  /// A reference to the [ResidentCollectionReference] containing this document.
  ResidentCollectionReference get parent {
    return _$ResidentCollectionReference(reference.firestore);
  }

  @override
  Stream<ResidentDocumentSnapshot> snapshots();

  @override
  Future<ResidentDocumentSnapshot> get([GetOptions? options]);

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
    Resident model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue phoneFieldValue,
    FieldValue addressFieldValue,
    FieldValue cityFieldValue,
    FieldValue stateFieldValue,
    FieldValue zipFieldValue,
    FieldValue admittedAtFieldValue,
    FieldValue stayDurationFieldValue,
    FieldValue homeAddressFieldValue,
    FieldValue previousAddressesFieldValue,
    FieldValue contactAddressesFieldValue,
    FieldValue visitDurationsFieldValue,
    FieldValue milestonesFieldValue,
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
    Resident model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue phoneFieldValue,
    FieldValue addressFieldValue,
    FieldValue cityFieldValue,
    FieldValue stateFieldValue,
    FieldValue zipFieldValue,
    FieldValue admittedAtFieldValue,
    FieldValue stayDurationFieldValue,
    FieldValue homeAddressFieldValue,
    FieldValue previousAddressesFieldValue,
    FieldValue contactAddressesFieldValue,
    FieldValue visitDurationsFieldValue,
    FieldValue milestonesFieldValue,
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
    Resident model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue phoneFieldValue,
    FieldValue addressFieldValue,
    FieldValue cityFieldValue,
    FieldValue stateFieldValue,
    FieldValue zipFieldValue,
    FieldValue admittedAtFieldValue,
    FieldValue stayDurationFieldValue,
    FieldValue homeAddressFieldValue,
    FieldValue previousAddressesFieldValue,
    FieldValue contactAddressesFieldValue,
    FieldValue visitDurationsFieldValue,
    FieldValue milestonesFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? id,
    FieldValue idFieldValue,
    String? name,
    FieldValue nameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    String? phone,
    FieldValue phoneFieldValue,
    String? address,
    FieldValue addressFieldValue,
    String? city,
    FieldValue cityFieldValue,
    String? state,
    FieldValue stateFieldValue,
    String? zip,
    FieldValue zipFieldValue,
    DateTime? admittedAt,
    FieldValue admittedAtFieldValue,
    Duration? stayDuration,
    FieldValue stayDurationFieldValue,
    Address? homeAddress,
    FieldValue homeAddressFieldValue,
    List<Address>? previousAddresses,
    FieldValue previousAddressesFieldValue,
    Map<String, Address>? contactAddresses,
    FieldValue contactAddressesFieldValue,
    List<Duration>? visitDurations,
    FieldValue visitDurationsFieldValue,
    Map<String, DateTime>? milestones,
    FieldValue milestonesFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? id,
    FieldValue idFieldValue,
    String? name,
    FieldValue nameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    String? phone,
    FieldValue phoneFieldValue,
    String? address,
    FieldValue addressFieldValue,
    String? city,
    FieldValue cityFieldValue,
    String? state,
    FieldValue stateFieldValue,
    String? zip,
    FieldValue zipFieldValue,
    DateTime? admittedAt,
    FieldValue admittedAtFieldValue,
    Duration? stayDuration,
    FieldValue stayDurationFieldValue,
    Address? homeAddress,
    FieldValue homeAddressFieldValue,
    List<Address>? previousAddresses,
    FieldValue previousAddressesFieldValue,
    Map<String, Address>? contactAddresses,
    FieldValue contactAddressesFieldValue,
    List<Duration>? visitDurations,
    FieldValue visitDurationsFieldValue,
    Map<String, DateTime>? milestones,
    FieldValue milestonesFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String? id,
    FieldValue idFieldValue,
    String? name,
    FieldValue nameFieldValue,
    String? email,
    FieldValue emailFieldValue,
    String? phone,
    FieldValue phoneFieldValue,
    String? address,
    FieldValue addressFieldValue,
    String? city,
    FieldValue cityFieldValue,
    String? state,
    FieldValue stateFieldValue,
    String? zip,
    FieldValue zipFieldValue,
    DateTime? admittedAt,
    FieldValue admittedAtFieldValue,
    Duration? stayDuration,
    FieldValue stayDurationFieldValue,
    Address? homeAddress,
    FieldValue homeAddressFieldValue,
    List<Address>? previousAddresses,
    FieldValue previousAddressesFieldValue,
    Map<String, Address>? contactAddresses,
    FieldValue contactAddressesFieldValue,
    List<Duration>? visitDurations,
    FieldValue visitDurationsFieldValue,
    Map<String, DateTime>? milestones,
    FieldValue milestonesFieldValue,
  });
}

class _$ResidentDocumentReference
    extends FirestoreDocumentReference<Resident, ResidentDocumentSnapshot>
    implements ResidentDocumentReference {
  _$ResidentDocumentReference(this.reference);

  @override
  final DocumentReference<Resident> reference;

  /// A reference to the [ResidentCollectionReference] containing this document.
  ResidentCollectionReference get parent {
    return _$ResidentCollectionReference(reference.firestore);
  }

  @override
  Stream<ResidentDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ResidentDocumentSnapshot._);
  }

  @override
  Future<ResidentDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ResidentDocumentSnapshot._);
  }

  @override
  Future<ResidentDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ResidentDocumentSnapshot._);
  }

  Future<void> set(
    Resident model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? phoneFieldValue,
    FieldValue? addressFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? stateFieldValue,
    FieldValue? zipFieldValue,
    FieldValue? admittedAtFieldValue,
    FieldValue? stayDurationFieldValue,
    FieldValue? homeAddressFieldValue,
    FieldValue? previousAddressesFieldValue,
    FieldValue? contactAddressesFieldValue,
    FieldValue? visitDurationsFieldValue,
    FieldValue? milestonesFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) 'id': idFieldValue,

      if (nameFieldValue != null) 'name': nameFieldValue,

      if (emailFieldValue != null) 'email': emailFieldValue,

      if (phoneFieldValue != null) 'phone': phoneFieldValue,

      if (addressFieldValue != null) 'address': addressFieldValue,

      if (cityFieldValue != null) 'city': cityFieldValue,

      if (stateFieldValue != null) 'state': stateFieldValue,

      if (zipFieldValue != null) 'zip': zipFieldValue,

      if (admittedAtFieldValue != null) 'admittedAt': admittedAtFieldValue,

      if (stayDurationFieldValue != null)
        'stayDuration': stayDurationFieldValue,

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,

      if (contactAddressesFieldValue != null)
        'contactAddresses': contactAddressesFieldValue,

      if (visitDurationsFieldValue != null)
        'visitDurations': visitDurationsFieldValue,

      if (milestonesFieldValue != null) 'milestones': milestonesFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Resident model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? phoneFieldValue,
    FieldValue? addressFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? stateFieldValue,
    FieldValue? zipFieldValue,
    FieldValue? admittedAtFieldValue,
    FieldValue? stayDurationFieldValue,
    FieldValue? homeAddressFieldValue,
    FieldValue? previousAddressesFieldValue,
    FieldValue? contactAddressesFieldValue,
    FieldValue? visitDurationsFieldValue,
    FieldValue? milestonesFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) 'id': idFieldValue,

      if (nameFieldValue != null) 'name': nameFieldValue,

      if (emailFieldValue != null) 'email': emailFieldValue,

      if (phoneFieldValue != null) 'phone': phoneFieldValue,

      if (addressFieldValue != null) 'address': addressFieldValue,

      if (cityFieldValue != null) 'city': cityFieldValue,

      if (stateFieldValue != null) 'state': stateFieldValue,

      if (zipFieldValue != null) 'zip': zipFieldValue,

      if (admittedAtFieldValue != null) 'admittedAt': admittedAtFieldValue,

      if (stayDurationFieldValue != null)
        'stayDuration': stayDurationFieldValue,

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,

      if (contactAddressesFieldValue != null)
        'contactAddresses': contactAddressesFieldValue,

      if (visitDurationsFieldValue != null)
        'visitDurations': visitDurationsFieldValue,

      if (milestonesFieldValue != null) 'milestones': milestonesFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Resident model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? phoneFieldValue,
    FieldValue? addressFieldValue,
    FieldValue? cityFieldValue,
    FieldValue? stateFieldValue,
    FieldValue? zipFieldValue,
    FieldValue? admittedAtFieldValue,
    FieldValue? stayDurationFieldValue,
    FieldValue? homeAddressFieldValue,
    FieldValue? previousAddressesFieldValue,
    FieldValue? contactAddressesFieldValue,
    FieldValue? visitDurationsFieldValue,
    FieldValue? milestonesFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) 'id': idFieldValue,

      if (nameFieldValue != null) 'name': nameFieldValue,

      if (emailFieldValue != null) 'email': emailFieldValue,

      if (phoneFieldValue != null) 'phone': phoneFieldValue,

      if (addressFieldValue != null) 'address': addressFieldValue,

      if (cityFieldValue != null) 'city': cityFieldValue,

      if (stateFieldValue != null) 'state': stateFieldValue,

      if (zipFieldValue != null) 'zip': zipFieldValue,

      if (admittedAtFieldValue != null) 'admittedAt': admittedAtFieldValue,

      if (stayDurationFieldValue != null)
        'stayDuration': stayDurationFieldValue,

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,

      if (contactAddressesFieldValue != null)
        'contactAddresses': contactAddressesFieldValue,

      if (visitDurationsFieldValue != null)
        'visitDurations': visitDurationsFieldValue,

      if (milestonesFieldValue != null) 'milestones': milestonesFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? state = _sentinel,
    FieldValue? stateFieldValue,
    Object? zip = _sentinel,
    FieldValue? zipFieldValue,
    Object? admittedAt = _sentinel,
    FieldValue? admittedAtFieldValue,
    Object? stayDuration = _sentinel,
    FieldValue? stayDurationFieldValue,
    Object? homeAddress = _sentinel,
    FieldValue? homeAddressFieldValue,
    Object? previousAddresses = _sentinel,
    FieldValue? previousAddressesFieldValue,
    Object? contactAddresses = _sentinel,
    FieldValue? contactAddressesFieldValue,
    Object? visitDurations = _sentinel,
    FieldValue? visitDurationsFieldValue,
    Object? milestones = _sentinel,
    FieldValue? milestonesFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      state == _sentinel || stateFieldValue == null,
      "Cannot specify both state and stateFieldValue",
    );
    assert(
      zip == _sentinel || zipFieldValue == null,
      "Cannot specify both zip and zipFieldValue",
    );
    assert(
      admittedAt == _sentinel || admittedAtFieldValue == null,
      "Cannot specify both admittedAt and admittedAtFieldValue",
    );
    assert(
      stayDuration == _sentinel || stayDurationFieldValue == null,
      "Cannot specify both stayDuration and stayDurationFieldValue",
    );
    assert(
      homeAddress == _sentinel || homeAddressFieldValue == null,
      "Cannot specify both homeAddress and homeAddressFieldValue",
    );
    assert(
      previousAddresses == _sentinel || previousAddressesFieldValue == null,
      "Cannot specify both previousAddresses and previousAddressesFieldValue",
    );
    assert(
      contactAddresses == _sentinel || contactAddressesFieldValue == null,
      "Cannot specify both contactAddresses and contactAddressesFieldValue",
    );
    assert(
      visitDurations == _sentinel || visitDurationsFieldValue == null,
      "Cannot specify both visitDurations and visitDurationsFieldValue",
    );
    assert(
      milestones == _sentinel || milestonesFieldValue == null,
      "Cannot specify both milestones and milestonesFieldValue",
    );
    final json = {
      if (id != _sentinel) 'id': ((Object? x) => x)(id as String?),

      if (idFieldValue != null) 'id': idFieldValue,

      if (name != _sentinel) 'name': ((Object? x) => x)(name as String?),

      if (nameFieldValue != null) 'name': nameFieldValue,

      if (email != _sentinel) 'email': ((Object? x) => x)(email as String?),

      if (emailFieldValue != null) 'email': emailFieldValue,

      if (phone != _sentinel) 'phone': ((Object? x) => x)(phone as String?),

      if (phoneFieldValue != null) 'phone': phoneFieldValue,

      if (address != _sentinel)
        'address': ((Object? x) => x)(address as String?),

      if (addressFieldValue != null) 'address': addressFieldValue,

      if (city != _sentinel) 'city': ((Object? x) => x)(city as String?),

      if (cityFieldValue != null) 'city': cityFieldValue,

      if (state != _sentinel) 'state': ((Object? x) => x)(state as String?),

      if (stateFieldValue != null) 'state': stateFieldValue,

      if (zip != _sentinel) 'zip': ((Object? x) => x)(zip as String?),

      if (zipFieldValue != null) 'zip': zipFieldValue,

      if (admittedAt != _sentinel)
        'admittedAt': ((DateTime? x) =>
            x?.toIso8601String())(admittedAt as DateTime?),

      if (admittedAtFieldValue != null) 'admittedAt': admittedAtFieldValue,

      if (stayDuration != _sentinel)
        'stayDuration': ((Duration? x) =>
            x?.inMicroseconds)(stayDuration as Duration?),

      if (stayDurationFieldValue != null)
        'stayDuration': stayDurationFieldValue,

      if (homeAddress != _sentinel)
        'homeAddress': ((Address? x) => x?.toJson())(homeAddress as Address?),

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddresses != _sentinel)
        'previousAddresses': ((List<Address>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(previousAddresses as List<Address>?),

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,

      if (contactAddresses != _sentinel)
        'contactAddresses': ((Map<String, Address>? x) =>
            (x as Map<String, dynamic>?)?.map(
              (k, v) => MapEntry(k, v.toJson()),
            ))(contactAddresses as Map<String, Address>?),

      if (contactAddressesFieldValue != null)
        'contactAddresses': contactAddressesFieldValue,

      if (visitDurations != _sentinel)
        'visitDurations': ((List<Duration>? x) => (x as List?)
            ?.map((e) => e.inMicroseconds)
            .toList())(visitDurations as List<Duration>?),

      if (visitDurationsFieldValue != null)
        'visitDurations': visitDurationsFieldValue,

      if (milestones != _sentinel)
        'milestones': ((Map<String, DateTime>? x) =>
            (x as Map<String, dynamic>?)?.map(
              (k, v) => MapEntry(k, v.toIso8601String()),
            ))(milestones as Map<String, DateTime>?),

      if (milestonesFieldValue != null) 'milestones': milestonesFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? state = _sentinel,
    FieldValue? stateFieldValue,
    Object? zip = _sentinel,
    FieldValue? zipFieldValue,
    Object? admittedAt = _sentinel,
    FieldValue? admittedAtFieldValue,
    Object? stayDuration = _sentinel,
    FieldValue? stayDurationFieldValue,
    Object? homeAddress = _sentinel,
    FieldValue? homeAddressFieldValue,
    Object? previousAddresses = _sentinel,
    FieldValue? previousAddressesFieldValue,
    Object? contactAddresses = _sentinel,
    FieldValue? contactAddressesFieldValue,
    Object? visitDurations = _sentinel,
    FieldValue? visitDurationsFieldValue,
    Object? milestones = _sentinel,
    FieldValue? milestonesFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      state == _sentinel || stateFieldValue == null,
      "Cannot specify both state and stateFieldValue",
    );
    assert(
      zip == _sentinel || zipFieldValue == null,
      "Cannot specify both zip and zipFieldValue",
    );
    assert(
      admittedAt == _sentinel || admittedAtFieldValue == null,
      "Cannot specify both admittedAt and admittedAtFieldValue",
    );
    assert(
      stayDuration == _sentinel || stayDurationFieldValue == null,
      "Cannot specify both stayDuration and stayDurationFieldValue",
    );
    assert(
      homeAddress == _sentinel || homeAddressFieldValue == null,
      "Cannot specify both homeAddress and homeAddressFieldValue",
    );
    assert(
      previousAddresses == _sentinel || previousAddressesFieldValue == null,
      "Cannot specify both previousAddresses and previousAddressesFieldValue",
    );
    assert(
      contactAddresses == _sentinel || contactAddressesFieldValue == null,
      "Cannot specify both contactAddresses and contactAddressesFieldValue",
    );
    assert(
      visitDurations == _sentinel || visitDurationsFieldValue == null,
      "Cannot specify both visitDurations and visitDurationsFieldValue",
    );
    assert(
      milestones == _sentinel || milestonesFieldValue == null,
      "Cannot specify both milestones and milestonesFieldValue",
    );
    final json = {
      if (id != _sentinel) 'id': ((Object? x) => x)(id as String?),

      if (idFieldValue != null) 'id': idFieldValue,

      if (name != _sentinel) 'name': ((Object? x) => x)(name as String?),

      if (nameFieldValue != null) 'name': nameFieldValue,

      if (email != _sentinel) 'email': ((Object? x) => x)(email as String?),

      if (emailFieldValue != null) 'email': emailFieldValue,

      if (phone != _sentinel) 'phone': ((Object? x) => x)(phone as String?),

      if (phoneFieldValue != null) 'phone': phoneFieldValue,

      if (address != _sentinel)
        'address': ((Object? x) => x)(address as String?),

      if (addressFieldValue != null) 'address': addressFieldValue,

      if (city != _sentinel) 'city': ((Object? x) => x)(city as String?),

      if (cityFieldValue != null) 'city': cityFieldValue,

      if (state != _sentinel) 'state': ((Object? x) => x)(state as String?),

      if (stateFieldValue != null) 'state': stateFieldValue,

      if (zip != _sentinel) 'zip': ((Object? x) => x)(zip as String?),

      if (zipFieldValue != null) 'zip': zipFieldValue,

      if (admittedAt != _sentinel)
        'admittedAt': ((DateTime? x) =>
            x?.toIso8601String())(admittedAt as DateTime?),

      if (admittedAtFieldValue != null) 'admittedAt': admittedAtFieldValue,

      if (stayDuration != _sentinel)
        'stayDuration': ((Duration? x) =>
            x?.inMicroseconds)(stayDuration as Duration?),

      if (stayDurationFieldValue != null)
        'stayDuration': stayDurationFieldValue,

      if (homeAddress != _sentinel)
        'homeAddress': ((Address? x) => x?.toJson())(homeAddress as Address?),

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddresses != _sentinel)
        'previousAddresses': ((List<Address>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(previousAddresses as List<Address>?),

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,

      if (contactAddresses != _sentinel)
        'contactAddresses': ((Map<String, Address>? x) =>
            (x as Map<String, dynamic>?)?.map(
              (k, v) => MapEntry(k, v.toJson()),
            ))(contactAddresses as Map<String, Address>?),

      if (contactAddressesFieldValue != null)
        'contactAddresses': contactAddressesFieldValue,

      if (visitDurations != _sentinel)
        'visitDurations': ((List<Duration>? x) => (x as List?)
            ?.map((e) => e.inMicroseconds)
            .toList())(visitDurations as List<Duration>?),

      if (visitDurationsFieldValue != null)
        'visitDurations': visitDurationsFieldValue,

      if (milestones != _sentinel)
        'milestones': ((Map<String, DateTime>? x) =>
            (x as Map<String, dynamic>?)?.map(
              (k, v) => MapEntry(k, v.toIso8601String()),
            ))(milestones as Map<String, DateTime>?),

      if (milestonesFieldValue != null) 'milestones': milestonesFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
    Object? address = _sentinel,
    FieldValue? addressFieldValue,
    Object? city = _sentinel,
    FieldValue? cityFieldValue,
    Object? state = _sentinel,
    FieldValue? stateFieldValue,
    Object? zip = _sentinel,
    FieldValue? zipFieldValue,
    Object? admittedAt = _sentinel,
    FieldValue? admittedAtFieldValue,
    Object? stayDuration = _sentinel,
    FieldValue? stayDurationFieldValue,
    Object? homeAddress = _sentinel,
    FieldValue? homeAddressFieldValue,
    Object? previousAddresses = _sentinel,
    FieldValue? previousAddressesFieldValue,
    Object? contactAddresses = _sentinel,
    FieldValue? contactAddressesFieldValue,
    Object? visitDurations = _sentinel,
    FieldValue? visitDurationsFieldValue,
    Object? milestones = _sentinel,
    FieldValue? milestonesFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    assert(
      address == _sentinel || addressFieldValue == null,
      "Cannot specify both address and addressFieldValue",
    );
    assert(
      city == _sentinel || cityFieldValue == null,
      "Cannot specify both city and cityFieldValue",
    );
    assert(
      state == _sentinel || stateFieldValue == null,
      "Cannot specify both state and stateFieldValue",
    );
    assert(
      zip == _sentinel || zipFieldValue == null,
      "Cannot specify both zip and zipFieldValue",
    );
    assert(
      admittedAt == _sentinel || admittedAtFieldValue == null,
      "Cannot specify both admittedAt and admittedAtFieldValue",
    );
    assert(
      stayDuration == _sentinel || stayDurationFieldValue == null,
      "Cannot specify both stayDuration and stayDurationFieldValue",
    );
    assert(
      homeAddress == _sentinel || homeAddressFieldValue == null,
      "Cannot specify both homeAddress and homeAddressFieldValue",
    );
    assert(
      previousAddresses == _sentinel || previousAddressesFieldValue == null,
      "Cannot specify both previousAddresses and previousAddressesFieldValue",
    );
    assert(
      contactAddresses == _sentinel || contactAddressesFieldValue == null,
      "Cannot specify both contactAddresses and contactAddressesFieldValue",
    );
    assert(
      visitDurations == _sentinel || visitDurationsFieldValue == null,
      "Cannot specify both visitDurations and visitDurationsFieldValue",
    );
    assert(
      milestones == _sentinel || milestonesFieldValue == null,
      "Cannot specify both milestones and milestonesFieldValue",
    );
    final json = {
      if (id != _sentinel) 'id': ((Object? x) => x)(id as String?),

      if (idFieldValue != null) 'id': idFieldValue,

      if (name != _sentinel) 'name': ((Object? x) => x)(name as String?),

      if (nameFieldValue != null) 'name': nameFieldValue,

      if (email != _sentinel) 'email': ((Object? x) => x)(email as String?),

      if (emailFieldValue != null) 'email': emailFieldValue,

      if (phone != _sentinel) 'phone': ((Object? x) => x)(phone as String?),

      if (phoneFieldValue != null) 'phone': phoneFieldValue,

      if (address != _sentinel)
        'address': ((Object? x) => x)(address as String?),

      if (addressFieldValue != null) 'address': addressFieldValue,

      if (city != _sentinel) 'city': ((Object? x) => x)(city as String?),

      if (cityFieldValue != null) 'city': cityFieldValue,

      if (state != _sentinel) 'state': ((Object? x) => x)(state as String?),

      if (stateFieldValue != null) 'state': stateFieldValue,

      if (zip != _sentinel) 'zip': ((Object? x) => x)(zip as String?),

      if (zipFieldValue != null) 'zip': zipFieldValue,

      if (admittedAt != _sentinel)
        'admittedAt': ((DateTime? x) =>
            x?.toIso8601String())(admittedAt as DateTime?),

      if (admittedAtFieldValue != null) 'admittedAt': admittedAtFieldValue,

      if (stayDuration != _sentinel)
        'stayDuration': ((Duration? x) =>
            x?.inMicroseconds)(stayDuration as Duration?),

      if (stayDurationFieldValue != null)
        'stayDuration': stayDurationFieldValue,

      if (homeAddress != _sentinel)
        'homeAddress': ((Address? x) => x?.toJson())(homeAddress as Address?),

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddresses != _sentinel)
        'previousAddresses': ((List<Address>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(previousAddresses as List<Address>?),

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,

      if (contactAddresses != _sentinel)
        'contactAddresses': ((Map<String, Address>? x) =>
            (x as Map<String, dynamic>?)?.map(
              (k, v) => MapEntry(k, v.toJson()),
            ))(contactAddresses as Map<String, Address>?),

      if (contactAddressesFieldValue != null)
        'contactAddresses': contactAddressesFieldValue,

      if (visitDurations != _sentinel)
        'visitDurations': ((List<Duration>? x) => (x as List?)
            ?.map((e) => e.inMicroseconds)
            .toList())(visitDurations as List<Duration>?),

      if (visitDurationsFieldValue != null)
        'visitDurations': visitDurationsFieldValue,

      if (milestones != _sentinel)
        'milestones': ((Map<String, DateTime>? x) =>
            (x as Map<String, dynamic>?)?.map(
              (k, v) => MapEntry(k, v.toIso8601String()),
            ))(milestones as Map<String, DateTime>?),

      if (milestonesFieldValue != null) 'milestones': milestonesFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ResidentDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ResidentQuery
    implements QueryReference<Resident, ResidentQuerySnapshot> {
  @override
  ResidentQuery limit(int limit);

  @override
  ResidentQuery limitToLast(int limit);

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
  ResidentQuery whereFieldPath(
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

  ResidentQuery whereDocumentId({
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

  ResidentQuery whereId({
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

  ResidentQuery whereName({
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

  ResidentQuery whereEmail({
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

  ResidentQuery wherePhone({
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

  ResidentQuery whereAddress({
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

  ResidentQuery whereCity({
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

  ResidentQuery whereState({
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

  ResidentQuery whereZip({
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

  ResidentQuery whereAdmittedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  ResidentQuery whereStayDuration({
    Duration? isEqualTo,
    Duration? isNotEqualTo,
    Duration? isLessThan,
    Duration? isLessThanOrEqualTo,
    Duration? isGreaterThan,
    Duration? isGreaterThanOrEqualTo,
    List<Duration?>? whereIn,
    List<Duration?>? whereNotIn,
    bool? isNull,
  });

  ResidentQuery whereHomeAddress({
    Address? isEqualTo,
    Address? isNotEqualTo,
    Address? isLessThan,
    Address? isLessThanOrEqualTo,
    Address? isGreaterThan,
    Address? isGreaterThanOrEqualTo,
    List<Address?>? whereIn,
    List<Address?>? whereNotIn,
    bool? isNull,
  });

  ResidentQuery wherePreviousAddresses({
    List<Address>? isEqualTo,
    List<Address>? isNotEqualTo,
    List<Address>? isLessThan,
    List<Address>? isLessThanOrEqualTo,
    List<Address>? isGreaterThan,
    List<Address>? isGreaterThanOrEqualTo,
    Address? arrayContains,
    List<Address>? arrayContainsAny,
    bool? isNull,
  });

  ResidentQuery whereContactAddresses({
    Map<String, Address>? isEqualTo,
    Map<String, Address>? isNotEqualTo,
    Map<String, Address>? isLessThan,
    Map<String, Address>? isLessThanOrEqualTo,
    Map<String, Address>? isGreaterThan,
    Map<String, Address>? isGreaterThanOrEqualTo,
    List<Map<String, Address>?>? whereIn,
    List<Map<String, Address>?>? whereNotIn,
    bool? isNull,
  });

  ResidentQuery whereVisitDurations({
    List<Duration>? isEqualTo,
    List<Duration>? isNotEqualTo,
    List<Duration>? isLessThan,
    List<Duration>? isLessThanOrEqualTo,
    List<Duration>? isGreaterThan,
    List<Duration>? isGreaterThanOrEqualTo,
    Duration? arrayContains,
    List<Duration>? arrayContainsAny,
    bool? isNull,
  });

  ResidentQuery whereMilestones({
    Map<String, DateTime>? isEqualTo,
    Map<String, DateTime>? isNotEqualTo,
    Map<String, DateTime>? isLessThan,
    Map<String, DateTime>? isLessThanOrEqualTo,
    Map<String, DateTime>? isGreaterThan,
    Map<String, DateTime>? isGreaterThanOrEqualTo,
    List<Map<String, DateTime>?>? whereIn,
    List<Map<String, DateTime>?>? whereNotIn,
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
  ResidentQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByEmail({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByPhone({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByAddress({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByCity({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByState({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByZip({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByAdmittedAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByStayDuration({
    bool descending = false,
    Duration? startAt,
    Duration? startAfter,
    Duration? endAt,
    Duration? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByHomeAddress({
    bool descending = false,
    Address? startAt,
    Address? startAfter,
    Address? endAt,
    Address? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByPreviousAddresses({
    bool descending = false,
    List<Address>? startAt,
    List<Address>? startAfter,
    List<Address>? endAt,
    List<Address>? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByContactAddresses({
    bool descending = false,
    Map<String, Address>? startAt,
    Map<String, Address>? startAfter,
    Map<String, Address>? endAt,
    Map<String, Address>? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByVisitDurations({
    bool descending = false,
    List<Duration>? startAt,
    List<Duration>? startAfter,
    List<Duration>? endAt,
    List<Duration>? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });

  ResidentQuery orderByMilestones({
    bool descending = false,
    Map<String, DateTime>? startAt,
    Map<String, DateTime>? startAfter,
    Map<String, DateTime>? endAt,
    Map<String, DateTime>? endBefore,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  });
}

class _$ResidentQuery extends QueryReference<Resident, ResidentQuerySnapshot>
    implements ResidentQuery {
  _$ResidentQuery(
    this._collection, {
    required Query<Resident> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ResidentQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ResidentQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ResidentQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(ResidentQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ResidentQuery limit(int limit) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ResidentQuery limitToLast(int limit) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ResidentQuery whereFieldPath(
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
    return _$ResidentQuery(
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
  ResidentQuery whereDocumentId({
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
    return _$ResidentQuery(
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
  ResidentQuery whereId({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'id',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery whereName({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'name',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery whereEmail({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'email',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery wherePhone({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'phone',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery whereAddress({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'address',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery whereCity({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'city',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery whereState({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'state',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery whereZip({
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
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'zip',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  ResidentQuery whereAdmittedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'admittedAt',
        isEqualTo: isEqualTo != _sentinel
            ? ((DateTime? x) => x?.toIso8601String())(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((DateTime? x) => x?.toIso8601String())(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? ((DateTime? x) => x?.toIso8601String())(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((DateTime? x) =>
                  x?.toIso8601String())(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((DateTime? x) =>
                  x?.toIso8601String())(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((DateTime? x) =>
                  x?.toIso8601String())(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map(
          (e) => ((DateTime? x) => x?.toIso8601String())(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => ((DateTime? x) => x?.toIso8601String())(e),
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
  ResidentQuery whereStayDuration({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Duration?>? whereIn,
    List<Duration?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'stayDuration',
        isEqualTo: isEqualTo != _sentinel
            ? ((Duration? x) => x?.inMicroseconds)(isEqualTo as Duration?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Duration? x) => x?.inMicroseconds)(isNotEqualTo as Duration?)
            : null,
        isLessThan: isLessThan != null
            ? ((Duration? x) => x?.inMicroseconds)(isLessThan as Duration?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Duration? x) =>
                  x?.inMicroseconds)(isLessThanOrEqualTo as Duration?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Duration? x) => x?.inMicroseconds)(isGreaterThan as Duration?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Duration? x) =>
                  x?.inMicroseconds)(isGreaterThanOrEqualTo as Duration?)
            : null,
        whereIn: whereIn?.map((e) => ((Duration? x) => x?.inMicroseconds)(e)),
        whereNotIn: whereNotIn?.map(
          (e) => ((Duration? x) => x?.inMicroseconds)(e),
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
  ResidentQuery whereHomeAddress({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Address?>? whereIn,
    List<Address?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'homeAddress',
        isEqualTo: isEqualTo != _sentinel
            ? ((Address? x) => x?.toJson())(isEqualTo as Address?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Address? x) => x?.toJson())(isNotEqualTo as Address?)
            : null,
        isLessThan: isLessThan != null
            ? ((Address? x) => x?.toJson())(isLessThan as Address?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Address? x) => x?.toJson())(isLessThanOrEqualTo as Address?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Address? x) => x?.toJson())(isGreaterThan as Address?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Address? x) => x?.toJson())(isGreaterThanOrEqualTo as Address?)
            : null,
        whereIn: whereIn?.map((e) => ((Address? x) => x?.toJson())(e)),
        whereNotIn: whereNotIn?.map((e) => ((Address? x) => x?.toJson())(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ResidentQuery wherePreviousAddresses({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Address>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'previousAddresses',
        isEqualTo: isEqualTo != _sentinel
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isEqualTo as List<Address>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isNotEqualTo as List<Address>?)
            : null,
        isLessThan: isLessThan != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isLessThan as List<Address>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isLessThanOrEqualTo as List<Address>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isGreaterThan as List<Address>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isGreaterThanOrEqualTo as List<Address>?)
            : null,
        arrayContains: arrayContains != null
            ? (((List<Address>? x) => (x as List?)
                          ?.map((e) => e.toJson())
                          .toList())([arrayContains as Address])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((List<Address>? x) => (x as List?)
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
  ResidentQuery whereContactAddresses({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Map<String, Address>?>? whereIn,
    List<Map<String, Address>?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'contactAddresses',
        isEqualTo: isEqualTo != _sentinel
            ? ((Map<String, Address>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toJson()),
              ))(isEqualTo as Map<String, Address>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Map<String, Address>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toJson()),
              ))(isNotEqualTo as Map<String, Address>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Map<String, Address>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toJson()),
              ))(isLessThan as Map<String, Address>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Map<String, Address>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toJson()),
              ))(isLessThanOrEqualTo as Map<String, Address>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Map<String, Address>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toJson()),
              ))(isGreaterThan as Map<String, Address>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Map<String, Address>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toJson()),
              ))(isGreaterThanOrEqualTo as Map<String, Address>?)
            : null,
        whereIn: whereIn?.map(
          (e) => ((Map<String, Address>? x) => (x as Map<String, dynamic>?)
              ?.map((k, v) => MapEntry(k, v.toJson())))(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => ((Map<String, Address>? x) => (x as Map<String, dynamic>?)
              ?.map((k, v) => MapEntry(k, v.toJson())))(e),
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
  ResidentQuery whereVisitDurations({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Duration>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'visitDurations',
        isEqualTo: isEqualTo != _sentinel
            ? ((List<Duration>? x) => (x as List?)
                  ?.map((e) => e.inMicroseconds)
                  .toList())(isEqualTo as List<Duration>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((List<Duration>? x) => (x as List?)
                  ?.map((e) => e.inMicroseconds)
                  .toList())(isNotEqualTo as List<Duration>?)
            : null,
        isLessThan: isLessThan != null
            ? ((List<Duration>? x) => (x as List?)
                  ?.map((e) => e.inMicroseconds)
                  .toList())(isLessThan as List<Duration>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((List<Duration>? x) => (x as List?)
                  ?.map((e) => e.inMicroseconds)
                  .toList())(isLessThanOrEqualTo as List<Duration>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((List<Duration>? x) => (x as List?)
                  ?.map((e) => e.inMicroseconds)
                  .toList())(isGreaterThan as List<Duration>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((List<Duration>? x) => (x as List?)
                  ?.map((e) => e.inMicroseconds)
                  .toList())(isGreaterThanOrEqualTo as List<Duration>?)
            : null,
        arrayContains: arrayContains != null
            ? (((List<Duration>? x) => (x as List?)
                          ?.map((e) => e.inMicroseconds)
                          .toList())([arrayContains as Duration])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((List<Duration>? x) => (x as List?)
                      ?.map((e) => e.inMicroseconds)
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
  ResidentQuery whereMilestones({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Map<String, DateTime>?>? whereIn,
    List<Map<String, DateTime>?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'milestones',
        isEqualTo: isEqualTo != _sentinel
            ? ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toIso8601String()),
              ))(isEqualTo as Map<String, DateTime>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toIso8601String()),
              ))(isNotEqualTo as Map<String, DateTime>?)
            : null,
        isLessThan: isLessThan != null
            ? ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toIso8601String()),
              ))(isLessThan as Map<String, DateTime>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toIso8601String()),
              ))(isLessThanOrEqualTo as Map<String, DateTime>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toIso8601String()),
              ))(isGreaterThan as Map<String, DateTime>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)?.map(
                (k, v) => MapEntry(k, v.toIso8601String()),
              ))(isGreaterThanOrEqualTo as Map<String, DateTime>?)
            : null,
        whereIn: whereIn?.map(
          (e) => ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)
              ?.map((k, v) => MapEntry(k, v.toIso8601String())))(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => ((Map<String, DateTime>? x) => (x as Map<String, dynamic>?)
              ?.map((k, v) => MapEntry(k, v.toIso8601String())))(e),
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
  ResidentQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy('id', descending: descending);
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'name',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'email',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByPhone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'phone',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'address',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByCity({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'city',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByState({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'state',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByZip({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'zip',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByAdmittedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'admittedAt',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByStayDuration({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'stayDuration',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByHomeAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'homeAddress',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByPreviousAddresses({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'previousAddresses',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByContactAddresses({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'contactAddresses',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByVisitDurations({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'visitDurations',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ResidentQuery orderByMilestones({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ResidentDocumentSnapshot? startAtDocument,
    ResidentDocumentSnapshot? endAtDocument,
    ResidentDocumentSnapshot? endBeforeDocument,
    ResidentDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'milestones',
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

    return _$ResidentQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ResidentQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ResidentDocumentSnapshot extends FirestoreDocumentSnapshot<Resident> {
  ResidentDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Resident> snapshot;

  @override
  ResidentDocumentReference get reference {
    return ResidentDocumentReference(snapshot.reference);
  }

  @override
  final Resident? data;
}

class ResidentQuerySnapshot
    extends FirestoreQuerySnapshot<Resident, ResidentQueryDocumentSnapshot> {
  ResidentQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory ResidentQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Resident> snapshot,
  ) {
    final docs = snapshot.docs.map(ResidentQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, ResidentDocumentSnapshot._);
    }).toList();

    return ResidentQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<ResidentDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ResidentDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ResidentDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Resident> snapshot;

  @override
  final List<ResidentQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ResidentDocumentSnapshot>> docChanges;
}

class ResidentQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Resident>
    implements ResidentDocumentSnapshot {
  ResidentQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Resident> snapshot;

  @override
  final Resident data;

  @override
  ResidentDocumentReference get reference {
    return ResidentDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class VisitorCollectionReference
    implements
        VisitorQuery,
        FirestoreCollectionReference<Visitor, VisitorQuerySnapshot> {
  factory VisitorCollectionReference([FirebaseFirestore? firestore]) =
      _$VisitorCollectionReference;

  static Visitor fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Visitor.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(Visitor value, SetOptions? options) {
    return value.toJson();
  }

  @override
  CollectionReference<Visitor> get reference;

  @override
  VisitorDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<VisitorDocumentReference> add(Visitor value);
}

class _$VisitorCollectionReference extends _$VisitorQuery
    implements VisitorCollectionReference {
  factory _$VisitorCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$VisitorCollectionReference._(
      firestore
          .collection('users/**/visitors')
          .withConverter(
            fromFirestore: VisitorCollectionReference.fromFirestore,
            toFirestore: VisitorCollectionReference.toFirestore,
          ),
    );
  }

  _$VisitorCollectionReference._(CollectionReference<Visitor> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Visitor> get reference =>
      super.reference as CollectionReference<Visitor>;

  @override
  VisitorDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return VisitorDocumentReference(reference.doc(id));
  }

  @override
  Future<VisitorDocumentReference> add(Visitor value) {
    return reference.add(value).then((ref) => VisitorDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$VisitorCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class VisitorDocumentReference
    extends FirestoreDocumentReference<Visitor, VisitorDocumentSnapshot> {
  factory VisitorDocumentReference(DocumentReference<Visitor> reference) =
      _$VisitorDocumentReference;

  DocumentReference<Visitor> get reference;

  /// A reference to the [VisitorCollectionReference] containing this document.
  VisitorCollectionReference get parent {
    return _$VisitorCollectionReference(reference.firestore);
  }

  @override
  Stream<VisitorDocumentSnapshot> snapshots();

  @override
  Future<VisitorDocumentSnapshot> get([GetOptions? options]);

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
    Visitor model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue homeAddressFieldValue,
    FieldValue previousAddressesFieldValue,
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
    Visitor model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue homeAddressFieldValue,
    FieldValue previousAddressesFieldValue,
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
    Visitor model, {
    SetOptions? options,
    FieldValue idFieldValue,
    FieldValue homeAddressFieldValue,
    FieldValue previousAddressesFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? id,
    FieldValue idFieldValue,
    Address? homeAddress,
    FieldValue homeAddressFieldValue,
    List<Address>? previousAddresses,
    FieldValue previousAddressesFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? id,
    FieldValue idFieldValue,
    Address? homeAddress,
    FieldValue homeAddressFieldValue,
    List<Address>? previousAddresses,
    FieldValue previousAddressesFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String? id,
    FieldValue idFieldValue,
    Address? homeAddress,
    FieldValue homeAddressFieldValue,
    List<Address>? previousAddresses,
    FieldValue previousAddressesFieldValue,
  });
}

class _$VisitorDocumentReference
    extends FirestoreDocumentReference<Visitor, VisitorDocumentSnapshot>
    implements VisitorDocumentReference {
  _$VisitorDocumentReference(this.reference);

  @override
  final DocumentReference<Visitor> reference;

  /// A reference to the [VisitorCollectionReference] containing this document.
  VisitorCollectionReference get parent {
    return _$VisitorCollectionReference(reference.firestore);
  }

  @override
  Stream<VisitorDocumentSnapshot> snapshots() {
    return reference.snapshots().map(VisitorDocumentSnapshot._);
  }

  @override
  Future<VisitorDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(VisitorDocumentSnapshot._);
  }

  @override
  Future<VisitorDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(VisitorDocumentSnapshot._);
  }

  Future<void> set(
    Visitor model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? homeAddressFieldValue,
    FieldValue? previousAddressesFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) 'id': idFieldValue,

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Visitor model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? homeAddressFieldValue,
    FieldValue? previousAddressesFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) 'id': idFieldValue,

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Visitor model, {
    SetOptions? options,
    FieldValue? idFieldValue,
    FieldValue? homeAddressFieldValue,
    FieldValue? previousAddressesFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (idFieldValue != null) 'id': idFieldValue,

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? homeAddress = _sentinel,
    FieldValue? homeAddressFieldValue,
    Object? previousAddresses = _sentinel,
    FieldValue? previousAddressesFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      homeAddress == _sentinel || homeAddressFieldValue == null,
      "Cannot specify both homeAddress and homeAddressFieldValue",
    );
    assert(
      previousAddresses == _sentinel || previousAddressesFieldValue == null,
      "Cannot specify both previousAddresses and previousAddressesFieldValue",
    );
    final json = {
      if (id != _sentinel) 'id': ((Object? x) => x)(id as String?),

      if (idFieldValue != null) 'id': idFieldValue,

      if (homeAddress != _sentinel)
        'homeAddress': ((Address? x) => x?.toJson())(homeAddress as Address?),

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddresses != _sentinel)
        'previousAddresses': ((List<Address>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(previousAddresses as List<Address>?),

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? homeAddress = _sentinel,
    FieldValue? homeAddressFieldValue,
    Object? previousAddresses = _sentinel,
    FieldValue? previousAddressesFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      homeAddress == _sentinel || homeAddressFieldValue == null,
      "Cannot specify both homeAddress and homeAddressFieldValue",
    );
    assert(
      previousAddresses == _sentinel || previousAddressesFieldValue == null,
      "Cannot specify both previousAddresses and previousAddressesFieldValue",
    );
    final json = {
      if (id != _sentinel) 'id': ((Object? x) => x)(id as String?),

      if (idFieldValue != null) 'id': idFieldValue,

      if (homeAddress != _sentinel)
        'homeAddress': ((Address? x) => x?.toJson())(homeAddress as Address?),

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddresses != _sentinel)
        'previousAddresses': ((List<Address>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(previousAddresses as List<Address>?),

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? homeAddress = _sentinel,
    FieldValue? homeAddressFieldValue,
    Object? previousAddresses = _sentinel,
    FieldValue? previousAddressesFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      homeAddress == _sentinel || homeAddressFieldValue == null,
      "Cannot specify both homeAddress and homeAddressFieldValue",
    );
    assert(
      previousAddresses == _sentinel || previousAddressesFieldValue == null,
      "Cannot specify both previousAddresses and previousAddressesFieldValue",
    );
    final json = {
      if (id != _sentinel) 'id': ((Object? x) => x)(id as String?),

      if (idFieldValue != null) 'id': idFieldValue,

      if (homeAddress != _sentinel)
        'homeAddress': ((Address? x) => x?.toJson())(homeAddress as Address?),

      if (homeAddressFieldValue != null) 'homeAddress': homeAddressFieldValue,

      if (previousAddresses != _sentinel)
        'previousAddresses': ((List<Address>? x) => (x as List?)
            ?.map((e) => e.toJson())
            .toList())(previousAddresses as List<Address>?),

      if (previousAddressesFieldValue != null)
        'previousAddresses': previousAddressesFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is VisitorDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class VisitorQuery
    implements QueryReference<Visitor, VisitorQuerySnapshot> {
  @override
  VisitorQuery limit(int limit);

  @override
  VisitorQuery limitToLast(int limit);

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
  VisitorQuery whereFieldPath(
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

  VisitorQuery whereDocumentId({
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

  VisitorQuery whereId({
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

  VisitorQuery whereHomeAddress({
    Address? isEqualTo,
    Address? isNotEqualTo,
    Address? isLessThan,
    Address? isLessThanOrEqualTo,
    Address? isGreaterThan,
    Address? isGreaterThanOrEqualTo,
    List<Address?>? whereIn,
    List<Address?>? whereNotIn,
    bool? isNull,
  });

  VisitorQuery wherePreviousAddresses({
    List<Address>? isEqualTo,
    List<Address>? isNotEqualTo,
    List<Address>? isLessThan,
    List<Address>? isLessThanOrEqualTo,
    List<Address>? isGreaterThan,
    List<Address>? isGreaterThanOrEqualTo,
    Address? arrayContains,
    List<Address>? arrayContainsAny,
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
  VisitorQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  });

  VisitorQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  });

  VisitorQuery orderById({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  });

  VisitorQuery orderByHomeAddress({
    bool descending = false,
    Address? startAt,
    Address? startAfter,
    Address? endAt,
    Address? endBefore,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  });

  VisitorQuery orderByPreviousAddresses({
    bool descending = false,
    List<Address>? startAt,
    List<Address>? startAfter,
    List<Address>? endAt,
    List<Address>? endBefore,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  });
}

class _$VisitorQuery extends QueryReference<Visitor, VisitorQuerySnapshot>
    implements VisitorQuery {
  _$VisitorQuery(
    this._collection, {
    required Query<Visitor> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<VisitorQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(VisitorQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<VisitorQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(VisitorQuerySnapshot._fromQuerySnapshot);
  }

  @override
  VisitorQuery limit(int limit) {
    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  VisitorQuery limitToLast(int limit) {
    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  VisitorQuery whereFieldPath(
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
    return _$VisitorQuery(
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
  VisitorQuery whereDocumentId({
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
    return _$VisitorQuery(
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
  VisitorQuery whereId({
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
    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'id',
        isEqualTo: isEqualTo != _sentinel
            ? ((Object? x) => x)(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Object? x) => x)(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? ((Object? x) => x)(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Object? x) => x)(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Object? x) => x)(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Object? x) => x)(isGreaterThanOrEqualTo as String?)
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
  VisitorQuery whereHomeAddress({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Address?>? whereIn,
    List<Address?>? whereNotIn,
    bool? isNull,
  }) {
    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'homeAddress',
        isEqualTo: isEqualTo != _sentinel
            ? ((Address? x) => x?.toJson())(isEqualTo as Address?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((Address? x) => x?.toJson())(isNotEqualTo as Address?)
            : null,
        isLessThan: isLessThan != null
            ? ((Address? x) => x?.toJson())(isLessThan as Address?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((Address? x) => x?.toJson())(isLessThanOrEqualTo as Address?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((Address? x) => x?.toJson())(isGreaterThan as Address?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((Address? x) => x?.toJson())(isGreaterThanOrEqualTo as Address?)
            : null,
        whereIn: whereIn?.map((e) => ((Address? x) => x?.toJson())(e)),
        whereNotIn: whereNotIn?.map((e) => ((Address? x) => x?.toJson())(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  VisitorQuery wherePreviousAddresses({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Address>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        'previousAddresses',
        isEqualTo: isEqualTo != _sentinel
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isEqualTo as List<Address>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isNotEqualTo as List<Address>?)
            : null,
        isLessThan: isLessThan != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isLessThan as List<Address>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isLessThanOrEqualTo as List<Address>?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isGreaterThan as List<Address>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? ((List<Address>? x) => (x as List?)
                  ?.map((e) => e.toJson())
                  .toList())(isGreaterThanOrEqualTo as List<Address>?)
            : null,
        arrayContains: arrayContains != null
            ? (((List<Address>? x) => (x as List?)
                          ?.map((e) => e.toJson())
                          .toList())([arrayContains as Address])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? ((List<Address>? x) => (x as List?)
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
  VisitorQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
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

    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  VisitorQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
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

    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  VisitorQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy('id', descending: descending);
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

    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  VisitorQuery orderByHomeAddress({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'homeAddress',
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

    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  VisitorQuery orderByPreviousAddresses({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    VisitorDocumentSnapshot? startAtDocument,
    VisitorDocumentSnapshot? endAtDocument,
    VisitorDocumentSnapshot? endBeforeDocument,
    VisitorDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      'previousAddresses',
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

    return _$VisitorQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$VisitorQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class VisitorDocumentSnapshot extends FirestoreDocumentSnapshot<Visitor> {
  VisitorDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Visitor> snapshot;

  @override
  VisitorDocumentReference get reference {
    return VisitorDocumentReference(snapshot.reference);
  }

  @override
  final Visitor? data;
}

class VisitorQuerySnapshot
    extends FirestoreQuerySnapshot<Visitor, VisitorQueryDocumentSnapshot> {
  VisitorQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory VisitorQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Visitor> snapshot,
  ) {
    final docs = snapshot.docs.map(VisitorQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, VisitorDocumentSnapshot._);
    }).toList();

    return VisitorQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<VisitorDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    VisitorDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<VisitorDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Visitor> snapshot;

  @override
  final List<VisitorQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<VisitorDocumentSnapshot>> docChanges;
}

class VisitorQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Visitor>
    implements VisitorDocumentSnapshot {
  VisitorQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Visitor> snapshot;

  @override
  final Visitor data;

  @override
  VisitorDocumentReference get reference {
    return VisitorDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) =>
    User(json['name'] as String, json['age'] as String);

const _$UserFieldMap = <String, String>{'age': 'age', 'name': 'name'};

// ignore: unused_element
abstract class _$UserPerFieldToJson {
  // ignore: unused_element
  static Object? age(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'age': instance.age,
  'name': instance.name,
};
