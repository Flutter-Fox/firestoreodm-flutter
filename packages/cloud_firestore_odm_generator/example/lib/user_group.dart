part of 'profile.dart';

@JsonSerializable()
class UserGroup {
  const UserGroup({required this.groupId, required this.groupName, this.members});

  factory UserGroup.fromJson(Map<String, dynamic> json) => _$UserGroupFromJson(json);

  final String groupId;
  final String groupName;
  final List<String>? members;

  Map<String, dynamic> toJson() => _$UserGroupToJson(this);
}
