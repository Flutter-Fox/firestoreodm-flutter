import 'package:json_annotation/json_annotation.dart';

part 'resident.g.dart';

@JsonSerializable()
class Resident {
  const Resident({this.id, this.name, this.email, this.phone, this.address, this.city, this.state, this.zip});

  factory Resident.fromJson(Map<String, dynamic> json) => _$ResidentFromJson(json);

  final String? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? address;
  final String? city;
  final String? state;
  final String? zip;

  Map<String, dynamic> toJson() => _$ResidentToJson(this);
}
