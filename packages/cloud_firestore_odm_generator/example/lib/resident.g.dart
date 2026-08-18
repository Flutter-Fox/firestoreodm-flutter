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
  admittedAt: json['admitted_at'] == null
      ? null
      : DateTime.parse(json['admitted_at'] as String),
  stayDuration: json['stay_duration'] == null
      ? null
      : Duration(microseconds: (json['stay_duration'] as num).toInt()),
  homeAddress: json['home_address'] == null
      ? null
      : Address.fromJson(json['home_address'] as Map<String, dynamic>),
  previousAddresses: (json['previous_addresses'] as List<dynamic>?)
      ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
      .toList(),
  contactAddresses: (json['contact_addresses'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, Address.fromJson(e as Map<String, dynamic>)),
  ),
  visitDurations: (json['visit_durations'] as List<dynamic>?)
      ?.map((e) => Duration(microseconds: (e as num).toInt()))
      .toList(),
  milestones: (json['milestones'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, DateTime.parse(e as String)),
  ),
  nickname: const UpperCaseSerializer().fromJson(json['nickname']),
  alias: upperCaseSerializer.fromJson(json['alias']),
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
  'admittedAt': 'admitted_at',
  'stayDuration': 'stay_duration',
  'homeAddress': 'home_address',
  'previousAddresses': 'previous_addresses',
  'contactAddresses': 'contact_addresses',
  'visitDurations': 'visit_durations',
  'milestones': 'milestones',
  'nickname': 'nickname',
  'alias': 'alias',
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
  // ignore: unused_element
  static Object? nickname(String? instance) =>
      const UpperCaseSerializer().toJson(instance);
  // ignore: unused_element
  static Object? alias(String? instance) =>
      upperCaseSerializer.toJson(instance);
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
  'admitted_at': instance.admittedAt?.toIso8601String(),
  'stay_duration': instance.stayDuration?.inMicroseconds,
  'home_address': instance.homeAddress?.toJson(),
  'previous_addresses': instance.previousAddresses
      ?.map((e) => e.toJson())
      .toList(),
  'contact_addresses': instance.contactAddresses?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'visit_durations': instance.visitDurations
      ?.map((e) => e.inMicroseconds)
      .toList(),
  'milestones': instance.milestones?.map(
    (k, e) => MapEntry(k, e.toIso8601String()),
  ),
  'nickname': const UpperCaseSerializer().toJson(instance.nickname),
  'alias': upperCaseSerializer.toJson(instance.alias),
};
