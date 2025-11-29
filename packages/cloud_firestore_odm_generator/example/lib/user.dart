import 'package:cloud_firestore/cloud_firestore.dart' hide Index;
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

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
UserCollectionReference userRef(FirebaseFirestore? firestore) => UserCollectionReference(firestore);
