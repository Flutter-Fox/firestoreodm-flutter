import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

/// Lives in its own library, two hops from the `@Collection` in user.dart.
///
/// Serialized through its public toJson/fromJson, so the collection never
/// needs this library's private json_serializable helpers.
@JsonSerializable()
class Address {
  const Address({this.street, this.city, this.zip});

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  final String? street;
  final String? city;
  final String? zip;

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
