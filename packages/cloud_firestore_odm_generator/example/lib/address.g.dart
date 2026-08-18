// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  street: json['street'] as String?,
  city: json['city'] as String?,
  zip: json['zip'] as String?,
);

const _$AddressFieldMap = <String, String>{
  'street': 'street',
  'city': 'city',
  'zip': 'zip',
};

// ignore: unused_element
abstract class _$AddressPerFieldToJson {
  // ignore: unused_element
  static Object? street(String? instance) => instance;
  // ignore: unused_element
  static Object? city(String? instance) => instance;
  // ignore: unused_element
  static Object? zip(String? instance) => instance;
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'street': instance.street,
  'city': instance.city,
  'zip': instance.zip,
};
