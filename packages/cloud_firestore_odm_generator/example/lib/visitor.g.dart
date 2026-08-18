// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visitor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Visitor _$VisitorFromJson(Map<String, dynamic> json) => Visitor(
  id: json['id'] as String?,
  homeAddress: json['home_address'] == null
      ? null
      : Address.fromJson(json['home_address'] as Map<String, dynamic>),
  previousAddresses: (json['previous_addresses'] as List<dynamic>?)
      ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
      .toList(),
);

const _$VisitorFieldMap = <String, String>{
  'id': 'id',
  'homeAddress': 'home_address',
  'previousAddresses': 'previous_addresses',
};

// ignore: unused_element
abstract class _$VisitorPerFieldToJson {
  // ignore: unused_element
  static Object? id(String? instance) => instance;
  // ignore: unused_element
  static Object? homeAddress(Address? instance) => instance;
  // ignore: unused_element
  static Object? previousAddresses(List<Address>? instance) => instance;
}

Map<String, dynamic> _$VisitorToJson(Visitor instance) => <String, dynamic>{
  'id': instance.id,
  'home_address': instance.homeAddress,
  'previous_addresses': instance.previousAddresses,
};
