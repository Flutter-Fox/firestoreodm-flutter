import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_normal.freezed.dart';
part 'freezed_normal.g.dart';

@Collection<Person>('freezed-test')
@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class Person with _$Person {
  const Person({required this.firstName, required this.lastName, this.ignored});

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);

  @override
  final String firstName;
  @override
  @JsonKey(name: 'LAST_NAME')
  final String lastName;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final int? ignored;
}

final personRef = PersonCollectionReference();

@Collection<PublicRedirected>('freezed-test')
@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
class PublicRedirected with _$PublicRedirected {
  const PublicRedirected({required this.value});

  factory PublicRedirected.fromJson(Map<String, Object?> json) => _$PublicRedirectedFromJson(json);

  Map<String, dynamic> toJson() => _$PublicRedirectedToJson(this);

  @override
  final String value;
}

@freezed
@JsonSerializable(fieldRename: FieldRename.snake)
@Collection<User2>('users2')
class User2 with _$User2 {
  const User2({this.name, this.email, this.age});

  factory User2.fromJson(Map<String, Object?> json) => _$User2FromJson(json);

  final String? name;
  final String? email;
  final int? age;

  Map<String, dynamic> toJson() => _$User2ToJson(this);

  bool get isOldEnough => age != null && age! >= 20;
}
