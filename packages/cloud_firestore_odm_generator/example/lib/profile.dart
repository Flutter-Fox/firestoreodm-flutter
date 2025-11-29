import 'package:cloud_firestore/cloud_firestore.dart' hide Index;
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';
part 'user_group.dart';

@JsonSerializable()
class UserProfile {
  const UserProfile({required this.userId, required this.email, this.groups});

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

  final String userId;
  final String email;
  final List<String>? groups;

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}

// Define multiple collections: UserProfile and UserGroup (from part file)
@Collection<UserProfile>('user_profiles')
@Collection<UserGroup>('user_groups')
_OrganizationCollectionReference profilesRef([FirebaseFirestore? firestore]) =>
    _OrganizationCollectionReference(firestore);

// Placeholder class to satisfy the generator
@JsonSerializable()
class _Organization {
  const _Organization();

  factory _Organization.fromJson(Map<String, dynamic> json) => const _Organization();
  Map<String, dynamic> toJson() => {};
}

@Collection<_Organization>('organizations')
_OrganizationCollectionReference organizationsRef([FirebaseFirestore? firestore]) =>
    _OrganizationCollectionReference(firestore);
