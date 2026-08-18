// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visitor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Visitor _$VisitorFromJson(Map<String, dynamic> json) => Visitor(
  id: json['id'] as String?,
  homeAddress: json['homeAddress'] == null
      ? null
      : Address.fromJson(json['homeAddress'] as Map<String, dynamic>),
  previousAddresses: (json['previousAddresses'] as List<dynamic>?)
      ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
      .toList(),
);

const _$VisitorFieldMap = <String, String>{
  'id': 'id',
  'homeAddress': 'homeAddress',
  'previousAddresses': 'previousAddresses',
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
  'homeAddress': instance.homeAddress,
  'previousAddresses': instance.previousAddresses,
};
