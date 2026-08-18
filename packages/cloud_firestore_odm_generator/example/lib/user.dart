import 'package:cloud_firestore/cloud_firestore.dart' hide Index;
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

// Address is never named here, but the generated part file types its filters
// with it. A part file cannot carry its own imports, so every nested type
// reachable from a collection's model has to be imported at the @Collection.
import 'address.dart';
import 'resident.dart';
import 'visitor.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User(this.name, this.age);

  /// Maps the incoming Json to a Data Transfer Object (DTO).
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String age;
  final String name;

  /// Convert the Data Transfer Object (DTO) to Json format (Map<String, dynamic>).
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@Collection<User>('users')
@Collection<Resident>('users/**/residents')
@Collection<Visitor>('users/**/visitors')
UserCollectionReference userRef(FirebaseFirestore? firestore) => UserCollectionReference(firestore);
