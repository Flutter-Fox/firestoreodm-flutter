// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

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
abstract class UserProfileCollectionReference
    implements
        UserProfileQuery,
        FirestoreCollectionReference<UserProfile, UserProfileQuerySnapshot> {
  factory UserProfileCollectionReference([FirebaseFirestore? firestore]) =
      _$UserProfileCollectionReference;

  static UserProfile fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserProfileFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    UserProfile value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<UserProfile> get reference;

  @override
  UserProfileDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserProfileDocumentReference> add(UserProfile value);
}

class _$UserProfileCollectionReference extends _$UserProfileQuery
    implements UserProfileCollectionReference {
  factory _$UserProfileCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserProfileCollectionReference._(
      firestore
          .collection('user_profiles')
          .withConverter(
            fromFirestore: UserProfileCollectionReference.fromFirestore,
            toFirestore: UserProfileCollectionReference.toFirestore,
          ),
    );
  }

  _$UserProfileCollectionReference._(CollectionReference<UserProfile> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<UserProfile> get reference =>
      super.reference as CollectionReference<UserProfile>;

  @override
  UserProfileDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserProfileDocumentReference(reference.doc(id));
  }

  @override
  Future<UserProfileDocumentReference> add(UserProfile value) {
    return reference
        .add(value)
        .then((ref) => UserProfileDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserProfileCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserProfileDocumentReference
    extends
        FirestoreDocumentReference<UserProfile, UserProfileDocumentSnapshot> {
  factory UserProfileDocumentReference(
    DocumentReference<UserProfile> reference,
  ) = _$UserProfileDocumentReference;

  DocumentReference<UserProfile> get reference;

  /// A reference to the [UserProfileCollectionReference] containing this document.
  UserProfileCollectionReference get parent {
    return _$UserProfileCollectionReference(reference.firestore);
  }

  @override
  Stream<UserProfileDocumentSnapshot> snapshots();

  @override
  Future<UserProfileDocumentSnapshot> get([GetOptions? options]);

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
    UserProfile model, {
    SetOptions? options,
    FieldValue userIdFieldValue,
    FieldValue emailFieldValue,
    FieldValue groupsFieldValue,
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
    UserProfile model, {
    SetOptions? options,
    FieldValue userIdFieldValue,
    FieldValue emailFieldValue,
    FieldValue groupsFieldValue,
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
    UserProfile model, {
    SetOptions? options,
    FieldValue userIdFieldValue,
    FieldValue emailFieldValue,
    FieldValue groupsFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String userId,
    FieldValue userIdFieldValue,
    String email,
    FieldValue emailFieldValue,
    List<String>? groups,
    FieldValue groupsFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String userId,
    FieldValue userIdFieldValue,
    String email,
    FieldValue emailFieldValue,
    List<String>? groups,
    FieldValue groupsFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String userId,
    FieldValue userIdFieldValue,
    String email,
    FieldValue emailFieldValue,
    List<String>? groups,
    FieldValue groupsFieldValue,
  });
}

class _$UserProfileDocumentReference
    extends FirestoreDocumentReference<UserProfile, UserProfileDocumentSnapshot>
    implements UserProfileDocumentReference {
  _$UserProfileDocumentReference(this.reference);

  @override
  final DocumentReference<UserProfile> reference;

  /// A reference to the [UserProfileCollectionReference] containing this document.
  UserProfileCollectionReference get parent {
    return _$UserProfileCollectionReference(reference.firestore);
  }

  @override
  Stream<UserProfileDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserProfileDocumentSnapshot._);
  }

  @override
  Future<UserProfileDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserProfileDocumentSnapshot._);
  }

  @override
  Future<UserProfileDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserProfileDocumentSnapshot._);
  }

  Future<void> set(
    UserProfile model, {
    SetOptions? options,
    FieldValue? userIdFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? groupsFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (userIdFieldValue != null)
        _$UserProfileFieldMap['userId']!: userIdFieldValue,

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (groupsFieldValue != null)
        _$UserProfileFieldMap['groups']!: groupsFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    UserProfile model, {
    SetOptions? options,
    FieldValue? userIdFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? groupsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (userIdFieldValue != null)
        _$UserProfileFieldMap['userId']!: userIdFieldValue,

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (groupsFieldValue != null)
        _$UserProfileFieldMap['groups']!: groupsFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    UserProfile model, {
    SetOptions? options,
    FieldValue? userIdFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? groupsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (userIdFieldValue != null)
        _$UserProfileFieldMap['userId']!: userIdFieldValue,

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (groupsFieldValue != null)
        _$UserProfileFieldMap['groups']!: groupsFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? groups = _sentinel,
    FieldValue? groupsFieldValue,
  }) async {
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      groups == _sentinel || groupsFieldValue == null,
      "Cannot specify both groups and groupsFieldValue",
    );
    final json = {
      if (userId != _sentinel)
        _$UserProfileFieldMap['userId']!: _$UserProfilePerFieldToJson.userId(
          userId as String,
        ),

      if (userIdFieldValue != null)
        _$UserProfileFieldMap['userId']!: userIdFieldValue,

      if (email != _sentinel)
        _$UserProfileFieldMap['email']!: _$UserProfilePerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (groups != _sentinel)
        _$UserProfileFieldMap['groups']!: _$UserProfilePerFieldToJson.groups(
          groups as List<String>?,
        ),

      if (groupsFieldValue != null)
        _$UserProfileFieldMap['groups']!: groupsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? groups = _sentinel,
    FieldValue? groupsFieldValue,
  }) {
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      groups == _sentinel || groupsFieldValue == null,
      "Cannot specify both groups and groupsFieldValue",
    );
    final json = {
      if (userId != _sentinel)
        _$UserProfileFieldMap['userId']!: _$UserProfilePerFieldToJson.userId(
          userId as String,
        ),

      if (userIdFieldValue != null)
        _$UserProfileFieldMap['userId']!: userIdFieldValue,

      if (email != _sentinel)
        _$UserProfileFieldMap['email']!: _$UserProfilePerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (groups != _sentinel)
        _$UserProfileFieldMap['groups']!: _$UserProfilePerFieldToJson.groups(
          groups as List<String>?,
        ),

      if (groupsFieldValue != null)
        _$UserProfileFieldMap['groups']!: groupsFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? groups = _sentinel,
    FieldValue? groupsFieldValue,
  }) {
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      groups == _sentinel || groupsFieldValue == null,
      "Cannot specify both groups and groupsFieldValue",
    );
    final json = {
      if (userId != _sentinel)
        _$UserProfileFieldMap['userId']!: _$UserProfilePerFieldToJson.userId(
          userId as String,
        ),

      if (userIdFieldValue != null)
        _$UserProfileFieldMap['userId']!: userIdFieldValue,

      if (email != _sentinel)
        _$UserProfileFieldMap['email']!: _$UserProfilePerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null)
        _$UserProfileFieldMap['email']!: emailFieldValue,

      if (groups != _sentinel)
        _$UserProfileFieldMap['groups']!: _$UserProfilePerFieldToJson.groups(
          groups as List<String>?,
        ),

      if (groupsFieldValue != null)
        _$UserProfileFieldMap['groups']!: groupsFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProfileDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserProfileQuery
    implements QueryReference<UserProfile, UserProfileQuerySnapshot> {
  @override
  UserProfileQuery limit(int limit);

  @override
  UserProfileQuery limitToLast(int limit);

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
  UserProfileQuery whereFieldPath(
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

  UserProfileQuery whereDocumentId({
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

  UserProfileQuery whereUserId({
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

  UserProfileQuery whereEmail({
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

  UserProfileQuery whereGroups({
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
  UserProfileQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });

  UserProfileQuery orderByGroups({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  });
}

class _$UserProfileQuery
    extends QueryReference<UserProfile, UserProfileQuerySnapshot>
    implements UserProfileQuery {
  _$UserProfileQuery(
    this._collection, {
    required Query<UserProfile> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserProfileQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(
      UserProfileQuerySnapshot._fromQuerySnapshot,
    );
  }

  @override
  Future<UserProfileQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserProfileQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserProfileQuery limit(int limit) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery limitToLast(int limit) {
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProfileQuery whereFieldPath(
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
    return _$UserProfileQuery(
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
  UserProfileQuery whereDocumentId({
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
    return _$UserProfileQuery(
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
  UserProfileQuery whereUserId({
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
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProfileFieldMap['userId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.userId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.userId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProfilePerFieldToJson.userId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.userId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProfilePerFieldToJson.userId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.userId(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$UserProfilePerFieldToJson.userId(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$UserProfilePerFieldToJson.userId(e),
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
  UserProfileQuery whereEmail({
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
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProfileFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProfilePerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProfilePerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.email(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$UserProfilePerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$UserProfilePerFieldToJson.email(e),
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
  UserProfileQuery whereGroups({
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
    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProfileFieldMap['groups']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.groups(isEqualTo as List<String>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProfilePerFieldToJson.groups(isNotEqualTo as List<String>?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProfilePerFieldToJson.groups(isLessThan as List<String>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.groups(
                isLessThanOrEqualTo as List<String>?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProfilePerFieldToJson.groups(isGreaterThan as List<String>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProfilePerFieldToJson.groups(
                isGreaterThanOrEqualTo as List<String>?,
              )
            : null,
        arrayContains: arrayContains != null
            ? (_$UserProfilePerFieldToJson.groups([arrayContains as String])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$UserProfilePerFieldToJson.groups(arrayContainsAny)
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
  UserProfileQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
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

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
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

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserProfileFieldMap['userId']!,
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

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserProfileFieldMap['email']!,
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

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProfileQuery orderByGroups({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProfileDocumentSnapshot? startAtDocument,
    UserProfileDocumentSnapshot? endAtDocument,
    UserProfileDocumentSnapshot? endBeforeDocument,
    UserProfileDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserProfileFieldMap['groups']!,
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

    return _$UserProfileQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserProfileQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserProfileDocumentSnapshot
    extends FirestoreDocumentSnapshot<UserProfile> {
  UserProfileDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserProfile> snapshot;

  @override
  UserProfileDocumentReference get reference {
    return UserProfileDocumentReference(snapshot.reference);
  }

  @override
  final UserProfile? data;
}

class UserProfileQuerySnapshot
    extends
        FirestoreQuerySnapshot<UserProfile, UserProfileQueryDocumentSnapshot> {
  UserProfileQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory UserProfileQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserProfile> snapshot,
  ) {
    final docs = snapshot.docs.map(UserProfileQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, UserProfileDocumentSnapshot._);
    }).toList();

    return UserProfileQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<UserProfileDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserProfileDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserProfileDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserProfile> snapshot;

  @override
  final List<UserProfileQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserProfileDocumentSnapshot>> docChanges;
}

class UserProfileQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserProfile>
    implements UserProfileDocumentSnapshot {
  UserProfileQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserProfile> snapshot;

  @override
  final UserProfile data;

  @override
  UserProfileDocumentReference get reference {
    return UserProfileDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserGroupCollectionReference
    implements
        UserGroupQuery,
        FirestoreCollectionReference<UserGroup, UserGroupQuerySnapshot> {
  factory UserGroupCollectionReference([FirebaseFirestore? firestore]) =
      _$UserGroupCollectionReference;

  static UserGroup fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserGroupFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    UserGroup value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<UserGroup> get reference;

  @override
  UserGroupDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserGroupDocumentReference> add(UserGroup value);
}

class _$UserGroupCollectionReference extends _$UserGroupQuery
    implements UserGroupCollectionReference {
  factory _$UserGroupCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserGroupCollectionReference._(
      firestore
          .collection('user_groups')
          .withConverter(
            fromFirestore: UserGroupCollectionReference.fromFirestore,
            toFirestore: UserGroupCollectionReference.toFirestore,
          ),
    );
  }

  _$UserGroupCollectionReference._(CollectionReference<UserGroup> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<UserGroup> get reference =>
      super.reference as CollectionReference<UserGroup>;

  @override
  UserGroupDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserGroupDocumentReference(reference.doc(id));
  }

  @override
  Future<UserGroupDocumentReference> add(UserGroup value) {
    return reference.add(value).then((ref) => UserGroupDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserGroupCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserGroupDocumentReference
    extends FirestoreDocumentReference<UserGroup, UserGroupDocumentSnapshot> {
  factory UserGroupDocumentReference(DocumentReference<UserGroup> reference) =
      _$UserGroupDocumentReference;

  DocumentReference<UserGroup> get reference;

  /// A reference to the [UserGroupCollectionReference] containing this document.
  UserGroupCollectionReference get parent {
    return _$UserGroupCollectionReference(reference.firestore);
  }

  @override
  Stream<UserGroupDocumentSnapshot> snapshots();

  @override
  Future<UserGroupDocumentSnapshot> get([GetOptions? options]);

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
    UserGroup model, {
    SetOptions? options,
    FieldValue groupIdFieldValue,
    FieldValue groupNameFieldValue,
    FieldValue membersFieldValue,
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
    UserGroup model, {
    SetOptions? options,
    FieldValue groupIdFieldValue,
    FieldValue groupNameFieldValue,
    FieldValue membersFieldValue,
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
    UserGroup model, {
    SetOptions? options,
    FieldValue groupIdFieldValue,
    FieldValue groupNameFieldValue,
    FieldValue membersFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String groupId,
    FieldValue groupIdFieldValue,
    String groupName,
    FieldValue groupNameFieldValue,
    List<String>? members,
    FieldValue membersFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String groupId,
    FieldValue groupIdFieldValue,
    String groupName,
    FieldValue groupNameFieldValue,
    List<String>? members,
    FieldValue membersFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String groupId,
    FieldValue groupIdFieldValue,
    String groupName,
    FieldValue groupNameFieldValue,
    List<String>? members,
    FieldValue membersFieldValue,
  });
}

class _$UserGroupDocumentReference
    extends FirestoreDocumentReference<UserGroup, UserGroupDocumentSnapshot>
    implements UserGroupDocumentReference {
  _$UserGroupDocumentReference(this.reference);

  @override
  final DocumentReference<UserGroup> reference;

  /// A reference to the [UserGroupCollectionReference] containing this document.
  UserGroupCollectionReference get parent {
    return _$UserGroupCollectionReference(reference.firestore);
  }

  @override
  Stream<UserGroupDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserGroupDocumentSnapshot._);
  }

  @override
  Future<UserGroupDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserGroupDocumentSnapshot._);
  }

  @override
  Future<UserGroupDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserGroupDocumentSnapshot._);
  }

  Future<void> set(
    UserGroup model, {
    SetOptions? options,
    FieldValue? groupIdFieldValue,
    FieldValue? groupNameFieldValue,
    FieldValue? membersFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (groupIdFieldValue != null)
        _$UserGroupFieldMap['groupId']!: groupIdFieldValue,

      if (groupNameFieldValue != null)
        _$UserGroupFieldMap['groupName']!: groupNameFieldValue,

      if (membersFieldValue != null)
        _$UserGroupFieldMap['members']!: membersFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    UserGroup model, {
    SetOptions? options,
    FieldValue? groupIdFieldValue,
    FieldValue? groupNameFieldValue,
    FieldValue? membersFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (groupIdFieldValue != null)
        _$UserGroupFieldMap['groupId']!: groupIdFieldValue,

      if (groupNameFieldValue != null)
        _$UserGroupFieldMap['groupName']!: groupNameFieldValue,

      if (membersFieldValue != null)
        _$UserGroupFieldMap['members']!: membersFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    UserGroup model, {
    SetOptions? options,
    FieldValue? groupIdFieldValue,
    FieldValue? groupNameFieldValue,
    FieldValue? membersFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (groupIdFieldValue != null)
        _$UserGroupFieldMap['groupId']!: groupIdFieldValue,

      if (groupNameFieldValue != null)
        _$UserGroupFieldMap['groupName']!: groupNameFieldValue,

      if (membersFieldValue != null)
        _$UserGroupFieldMap['members']!: membersFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? groupId = _sentinel,
    FieldValue? groupIdFieldValue,
    Object? groupName = _sentinel,
    FieldValue? groupNameFieldValue,
    Object? members = _sentinel,
    FieldValue? membersFieldValue,
  }) async {
    assert(
      groupId == _sentinel || groupIdFieldValue == null,
      "Cannot specify both groupId and groupIdFieldValue",
    );
    assert(
      groupName == _sentinel || groupNameFieldValue == null,
      "Cannot specify both groupName and groupNameFieldValue",
    );
    assert(
      members == _sentinel || membersFieldValue == null,
      "Cannot specify both members and membersFieldValue",
    );
    final json = {
      if (groupId != _sentinel)
        _$UserGroupFieldMap['groupId']!: _$UserGroupPerFieldToJson.groupId(
          groupId as String,
        ),

      if (groupIdFieldValue != null)
        _$UserGroupFieldMap['groupId']!: groupIdFieldValue,

      if (groupName != _sentinel)
        _$UserGroupFieldMap['groupName']!: _$UserGroupPerFieldToJson.groupName(
          groupName as String,
        ),

      if (groupNameFieldValue != null)
        _$UserGroupFieldMap['groupName']!: groupNameFieldValue,

      if (members != _sentinel)
        _$UserGroupFieldMap['members']!: _$UserGroupPerFieldToJson.members(
          members as List<String>?,
        ),

      if (membersFieldValue != null)
        _$UserGroupFieldMap['members']!: membersFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? groupId = _sentinel,
    FieldValue? groupIdFieldValue,
    Object? groupName = _sentinel,
    FieldValue? groupNameFieldValue,
    Object? members = _sentinel,
    FieldValue? membersFieldValue,
  }) {
    assert(
      groupId == _sentinel || groupIdFieldValue == null,
      "Cannot specify both groupId and groupIdFieldValue",
    );
    assert(
      groupName == _sentinel || groupNameFieldValue == null,
      "Cannot specify both groupName and groupNameFieldValue",
    );
    assert(
      members == _sentinel || membersFieldValue == null,
      "Cannot specify both members and membersFieldValue",
    );
    final json = {
      if (groupId != _sentinel)
        _$UserGroupFieldMap['groupId']!: _$UserGroupPerFieldToJson.groupId(
          groupId as String,
        ),

      if (groupIdFieldValue != null)
        _$UserGroupFieldMap['groupId']!: groupIdFieldValue,

      if (groupName != _sentinel)
        _$UserGroupFieldMap['groupName']!: _$UserGroupPerFieldToJson.groupName(
          groupName as String,
        ),

      if (groupNameFieldValue != null)
        _$UserGroupFieldMap['groupName']!: groupNameFieldValue,

      if (members != _sentinel)
        _$UserGroupFieldMap['members']!: _$UserGroupPerFieldToJson.members(
          members as List<String>?,
        ),

      if (membersFieldValue != null)
        _$UserGroupFieldMap['members']!: membersFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? groupId = _sentinel,
    FieldValue? groupIdFieldValue,
    Object? groupName = _sentinel,
    FieldValue? groupNameFieldValue,
    Object? members = _sentinel,
    FieldValue? membersFieldValue,
  }) {
    assert(
      groupId == _sentinel || groupIdFieldValue == null,
      "Cannot specify both groupId and groupIdFieldValue",
    );
    assert(
      groupName == _sentinel || groupNameFieldValue == null,
      "Cannot specify both groupName and groupNameFieldValue",
    );
    assert(
      members == _sentinel || membersFieldValue == null,
      "Cannot specify both members and membersFieldValue",
    );
    final json = {
      if (groupId != _sentinel)
        _$UserGroupFieldMap['groupId']!: _$UserGroupPerFieldToJson.groupId(
          groupId as String,
        ),

      if (groupIdFieldValue != null)
        _$UserGroupFieldMap['groupId']!: groupIdFieldValue,

      if (groupName != _sentinel)
        _$UserGroupFieldMap['groupName']!: _$UserGroupPerFieldToJson.groupName(
          groupName as String,
        ),

      if (groupNameFieldValue != null)
        _$UserGroupFieldMap['groupName']!: groupNameFieldValue,

      if (members != _sentinel)
        _$UserGroupFieldMap['members']!: _$UserGroupPerFieldToJson.members(
          members as List<String>?,
        ),

      if (membersFieldValue != null)
        _$UserGroupFieldMap['members']!: membersFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserGroupDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserGroupQuery
    implements QueryReference<UserGroup, UserGroupQuerySnapshot> {
  @override
  UserGroupQuery limit(int limit);

  @override
  UserGroupQuery limitToLast(int limit);

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
  UserGroupQuery whereFieldPath(
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

  UserGroupQuery whereDocumentId({
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

  UserGroupQuery whereGroupId({
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

  UserGroupQuery whereGroupName({
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

  UserGroupQuery whereMembers({
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
  UserGroupQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  });

  UserGroupQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  });

  UserGroupQuery orderByGroupId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  });

  UserGroupQuery orderByGroupName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  });

  UserGroupQuery orderByMembers({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  });
}

class _$UserGroupQuery extends QueryReference<UserGroup, UserGroupQuerySnapshot>
    implements UserGroupQuery {
  _$UserGroupQuery(
    this._collection, {
    required Query<UserGroup> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserGroupQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserGroupQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserGroupQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserGroupQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserGroupQuery limit(int limit) {
    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserGroupQuery limitToLast(int limit) {
    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserGroupQuery whereFieldPath(
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
    return _$UserGroupQuery(
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
  UserGroupQuery whereDocumentId({
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
    return _$UserGroupQuery(
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
  UserGroupQuery whereGroupId({
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
    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserGroupFieldMap['groupId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserGroupPerFieldToJson.groupId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserGroupPerFieldToJson.groupId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserGroupPerFieldToJson.groupId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserGroupPerFieldToJson.groupId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserGroupPerFieldToJson.groupId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserGroupPerFieldToJson.groupId(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$UserGroupPerFieldToJson.groupId(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$UserGroupPerFieldToJson.groupId(e),
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
  UserGroupQuery whereGroupName({
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
    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserGroupFieldMap['groupName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserGroupPerFieldToJson.groupName(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserGroupPerFieldToJson.groupName(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserGroupPerFieldToJson.groupName(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserGroupPerFieldToJson.groupName(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserGroupPerFieldToJson.groupName(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserGroupPerFieldToJson.groupName(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$UserGroupPerFieldToJson.groupName(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$UserGroupPerFieldToJson.groupName(e),
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
  UserGroupQuery whereMembers({
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
    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserGroupFieldMap['members']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserGroupPerFieldToJson.members(isEqualTo as List<String>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserGroupPerFieldToJson.members(isNotEqualTo as List<String>?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserGroupPerFieldToJson.members(isLessThan as List<String>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserGroupPerFieldToJson.members(
                isLessThanOrEqualTo as List<String>?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserGroupPerFieldToJson.members(isGreaterThan as List<String>?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserGroupPerFieldToJson.members(
                isGreaterThanOrEqualTo as List<String>?,
              )
            : null,
        arrayContains: arrayContains != null
            ? (_$UserGroupPerFieldToJson.members([arrayContains as String])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$UserGroupPerFieldToJson.members(arrayContainsAny)
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
  UserGroupQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
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

    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserGroupQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
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

    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserGroupQuery orderByGroupId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserGroupFieldMap['groupId']!,
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

    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserGroupQuery orderByGroupName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserGroupFieldMap['groupName']!,
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

    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserGroupQuery orderByMembers({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserGroupDocumentSnapshot? startAtDocument,
    UserGroupDocumentSnapshot? endAtDocument,
    UserGroupDocumentSnapshot? endBeforeDocument,
    UserGroupDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserGroupFieldMap['members']!,
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

    return _$UserGroupQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserGroupQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserGroupDocumentSnapshot extends FirestoreDocumentSnapshot<UserGroup> {
  UserGroupDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserGroup> snapshot;

  @override
  UserGroupDocumentReference get reference {
    return UserGroupDocumentReference(snapshot.reference);
  }

  @override
  final UserGroup? data;
}

class UserGroupQuerySnapshot
    extends FirestoreQuerySnapshot<UserGroup, UserGroupQueryDocumentSnapshot> {
  UserGroupQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory UserGroupQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserGroup> snapshot,
  ) {
    final docs = snapshot.docs.map(UserGroupQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, UserGroupDocumentSnapshot._);
    }).toList();

    return UserGroupQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<UserGroupDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserGroupDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserGroupDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserGroup> snapshot;

  @override
  final List<UserGroupQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserGroupDocumentSnapshot>> docChanges;
}

class UserGroupQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserGroup>
    implements UserGroupDocumentSnapshot {
  UserGroupQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserGroup> snapshot;

  @override
  final UserGroup data;

  @override
  UserGroupDocumentReference get reference {
    return UserGroupDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class _OrganizationCollectionReference
    implements
        _OrganizationQuery,
        FirestoreCollectionReference<
          _Organization,
          _OrganizationQuerySnapshot
        > {
  factory _OrganizationCollectionReference([FirebaseFirestore? firestore]) =
      _$_OrganizationCollectionReference;

  static _Organization fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$OrganizationFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    _Organization value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<_Organization> get reference;

  @override
  _OrganizationDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<_OrganizationDocumentReference> add(_Organization value);
}

class _$_OrganizationCollectionReference extends _$_OrganizationQuery
    implements _OrganizationCollectionReference {
  factory _$_OrganizationCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$_OrganizationCollectionReference._(
      firestore
          .collection('organizations')
          .withConverter(
            fromFirestore: _OrganizationCollectionReference.fromFirestore,
            toFirestore: _OrganizationCollectionReference.toFirestore,
          ),
    );
  }

  _$_OrganizationCollectionReference._(
    CollectionReference<_Organization> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<_Organization> get reference =>
      super.reference as CollectionReference<_Organization>;

  @override
  _OrganizationDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return _OrganizationDocumentReference(reference.doc(id));
  }

  @override
  Future<_OrganizationDocumentReference> add(_Organization value) {
    return reference
        .add(value)
        .then((ref) => _OrganizationDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$_OrganizationCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class _OrganizationDocumentReference
    extends
        FirestoreDocumentReference<
          _Organization,
          _OrganizationDocumentSnapshot
        > {
  factory _OrganizationDocumentReference(
    DocumentReference<_Organization> reference,
  ) = _$_OrganizationDocumentReference;

  DocumentReference<_Organization> get reference;

  /// A reference to the [_OrganizationCollectionReference] containing this document.
  _OrganizationCollectionReference get parent {
    return _$_OrganizationCollectionReference(reference.firestore);
  }

  @override
  Stream<_OrganizationDocumentSnapshot> snapshots();

  @override
  Future<_OrganizationDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();
}

class _$_OrganizationDocumentReference
    extends
        FirestoreDocumentReference<_Organization, _OrganizationDocumentSnapshot>
    implements _OrganizationDocumentReference {
  _$_OrganizationDocumentReference(this.reference);

  @override
  final DocumentReference<_Organization> reference;

  /// A reference to the [_OrganizationCollectionReference] containing this document.
  _OrganizationCollectionReference get parent {
    return _$_OrganizationCollectionReference(reference.firestore);
  }

  @override
  Stream<_OrganizationDocumentSnapshot> snapshots() {
    return reference.snapshots().map(_OrganizationDocumentSnapshot._);
  }

  @override
  Future<_OrganizationDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_OrganizationDocumentSnapshot._);
  }

  @override
  Future<_OrganizationDocumentSnapshot> transactionGet(
    Transaction transaction,
  ) {
    return transaction.get(reference).then(_OrganizationDocumentSnapshot._);
  }

  @override
  bool operator ==(Object other) {
    return other is _OrganizationDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class _OrganizationQuery
    implements QueryReference<_Organization, _OrganizationQuerySnapshot> {
  @override
  _OrganizationQuery limit(int limit);

  @override
  _OrganizationQuery limitToLast(int limit);

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
  _OrganizationQuery whereFieldPath(
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

  _OrganizationQuery whereDocumentId({
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
  _OrganizationQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    _OrganizationDocumentSnapshot? startAtDocument,
    _OrganizationDocumentSnapshot? endAtDocument,
    _OrganizationDocumentSnapshot? endBeforeDocument,
    _OrganizationDocumentSnapshot? startAfterDocument,
  });

  _OrganizationQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    _OrganizationDocumentSnapshot? startAtDocument,
    _OrganizationDocumentSnapshot? endAtDocument,
    _OrganizationDocumentSnapshot? endBeforeDocument,
    _OrganizationDocumentSnapshot? startAfterDocument,
  });
}

class _$_OrganizationQuery
    extends QueryReference<_Organization, _OrganizationQuerySnapshot>
    implements _OrganizationQuery {
  _$_OrganizationQuery(
    this._collection, {
    required Query<_Organization> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<_OrganizationQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(
      _OrganizationQuerySnapshot._fromQuerySnapshot,
    );
  }

  @override
  Future<_OrganizationQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(_OrganizationQuerySnapshot._fromQuerySnapshot);
  }

  @override
  _OrganizationQuery limit(int limit) {
    return _$_OrganizationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  _OrganizationQuery limitToLast(int limit) {
    return _$_OrganizationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  _OrganizationQuery whereFieldPath(
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
    return _$_OrganizationQuery(
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
  _OrganizationQuery whereDocumentId({
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
    return _$_OrganizationQuery(
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
  _OrganizationQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    _OrganizationDocumentSnapshot? startAtDocument,
    _OrganizationDocumentSnapshot? endAtDocument,
    _OrganizationDocumentSnapshot? endBeforeDocument,
    _OrganizationDocumentSnapshot? startAfterDocument,
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

    return _$_OrganizationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  _OrganizationQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    _OrganizationDocumentSnapshot? startAtDocument,
    _OrganizationDocumentSnapshot? endAtDocument,
    _OrganizationDocumentSnapshot? endBeforeDocument,
    _OrganizationDocumentSnapshot? startAfterDocument,
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

    return _$_OrganizationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$_OrganizationQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class _OrganizationDocumentSnapshot
    extends FirestoreDocumentSnapshot<_Organization> {
  _OrganizationDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<_Organization> snapshot;

  @override
  _OrganizationDocumentReference get reference {
    return _OrganizationDocumentReference(snapshot.reference);
  }

  @override
  final _Organization? data;
}

class _OrganizationQuerySnapshot
    extends
        FirestoreQuerySnapshot<
          _Organization,
          _OrganizationQueryDocumentSnapshot
        > {
  _OrganizationQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory _OrganizationQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<_Organization> snapshot,
  ) {
    final docs = snapshot.docs
        .map(_OrganizationQueryDocumentSnapshot._)
        .toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, _OrganizationDocumentSnapshot._);
    }).toList();

    return _OrganizationQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<_OrganizationDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    _OrganizationDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<_OrganizationDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<_Organization> snapshot;

  @override
  final List<_OrganizationQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<_OrganizationDocumentSnapshot>> docChanges;
}

class _OrganizationQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<_Organization>
    implements _OrganizationDocumentSnapshot {
  _OrganizationQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<_Organization> snapshot;

  @override
  final _Organization data;

  @override
  _OrganizationDocumentReference get reference {
    return _OrganizationDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
  userId: json['userId'] as String,
  email: json['email'] as String,
  groups: (json['groups'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

const _$UserProfileFieldMap = <String, String>{
  'userId': 'userId',
  'email': 'email',
  'groups': 'groups',
};

// ignore: unused_element
abstract class _$UserProfilePerFieldToJson {
  // ignore: unused_element
  static Object? userId(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? groups(List<String>? instance) => instance;
}

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'groups': instance.groups,
    };

_Organization _$OrganizationFromJson(Map<String, dynamic> json) =>
    _Organization();

const _$OrganizationFieldMap = <String, String>{};

// ignore: unused_element
abstract class _$OrganizationPerFieldToJson {}

Map<String, dynamic> _$OrganizationToJson(_Organization instance) =>
    <String, dynamic>{};

UserGroup _$UserGroupFromJson(Map<String, dynamic> json) => UserGroup(
  groupId: json['groupId'] as String,
  groupName: json['groupName'] as String,
  members: (json['members'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

const _$UserGroupFieldMap = <String, String>{
  'groupId': 'groupId',
  'groupName': 'groupName',
  'members': 'members',
};

// ignore: unused_element
abstract class _$UserGroupPerFieldToJson {
  // ignore: unused_element
  static Object? groupId(String instance) => instance;
  // ignore: unused_element
  static Object? groupName(String instance) => instance;
  // ignore: unused_element
  static Object? members(List<String>? instance) => instance;
}

Map<String, dynamic> _$UserGroupToJson(UserGroup instance) => <String, dynamic>{
  'groupId': instance.groupId,
  'groupName': instance.groupName,
  'members': instance.members,
};
