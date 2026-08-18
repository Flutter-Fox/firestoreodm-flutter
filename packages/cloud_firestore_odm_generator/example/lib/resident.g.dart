// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resident _$ResidentFromJson(Map<String, dynamic> json) => Resident(
  id: json['id'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  address: json['address'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
  zip: json['zip'] as String?,
  admittedAt: json['admittedAt'] == null
      ? null
      : DateTime.parse(json['admittedAt'] as String),
  stayDuration: json['stayDuration'] == null
      ? null
      : Duration(microseconds: (json['stayDuration'] as num).toInt()),
  homeAddress: json['homeAddress'] == null
      ? null
      : Address.fromJson(json['homeAddress'] as Map<String, dynamic>),
  previousAddresses: (json['previousAddresses'] as List<dynamic>?)
      ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
      .toList(),
  contactAddresses: (json['contactAddresses'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Address.fromJson(e as Map<String, dynamic>)),
  ),
  visitDurations: (json['visitDurations'] as List<dynamic>?)
      ?.map((e) => Duration(microseconds: (e as num).toInt()))
      .toList(),
  milestones: (json['milestones'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, DateTime.parse(e as String)),
  ),
);

const _$ResidentFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'email': 'email',
  'phone': 'phone',
  'address': 'address',
  'city': 'city',
  'state': 'state',
  'zip': 'zip',
  'admittedAt': 'admittedAt',
  'stayDuration': 'stayDuration',
  'homeAddress': 'homeAddress',
  'previousAddresses': 'previousAddresses',
  'contactAddresses': 'contactAddresses',
  'visitDurations': 'visitDurations',
  'milestones': 'milestones',
};

// ignore: unused_element
abstract class _$ResidentPerFieldToJson {
  // ignore: unused_element
  static Object? id(String? instance) => instance;
  // ignore: unused_element
  static Object? name(String? instance) => instance;
  // ignore: unused_element
  static Object? email(String? instance) => instance;
  // ignore: unused_element
  static Object? phone(String? instance) => instance;
  // ignore: unused_element
  static Object? address(String? instance) => instance;
  // ignore: unused_element
  static Object? city(String? instance) => instance;
  // ignore: unused_element
  static Object? state(String? instance) => instance;
  // ignore: unused_element
  static Object? zip(String? instance) => instance;
  // ignore: unused_element
  static Object? admittedAt(DateTime? instance) => instance?.toIso8601String();
  // ignore: unused_element
  static Object? stayDuration(Duration? instance) => instance?.inMicroseconds;
  // ignore: unused_element
  static Object? homeAddress(Address? instance) => instance?.toJson();
  // ignore: unused_element
  static Object? previousAddresses(List<Address>? instance) =>
      instance?.map((e) => e.toJson()).toList();
  // ignore: unused_element
  static Object? contactAddresses(Map<String, Address>? instance) =>
      instance?.map((k, e) => MapEntry(k, e.toJson()));
  // ignore: unused_element
  static Object? visitDurations(List<Duration>? instance) =>
      instance?.map((e) => e.inMicroseconds).toList();
  // ignore: unused_element
  static Object? milestones(Map<String, DateTime>? instance) =>
      instance?.map((k, e) => MapEntry(k, e.toIso8601String()));
}

Map<String, dynamic> _$ResidentToJson(Resident instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'address': instance.address,
  'city': instance.city,
  'state': instance.state,
  'zip': instance.zip,
  'admittedAt': instance.admittedAt?.toIso8601String(),
  'stayDuration': instance.stayDuration?.inMicroseconds,
  'homeAddress': instance.homeAddress?.toJson(),
  'previousAddresses': instance.previousAddresses
      ?.map((e) => e.toJson())
      .toList(),
  'contactAddresses': instance.contactAddresses?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'visitDurations': instance.visitDurations
      ?.map((e) => e.inMicroseconds)
      .toList(),
  'milestones': instance.milestones?.map(
    (k, e) => MapEntry(k, e.toIso8601String()),
  ),
};
