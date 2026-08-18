import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'resident.g.dart';

@JsonSerializable()
class Resident {
  const Resident({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.city,
    this.state,
    this.zip,
    this.admittedAt,
    this.stayDuration,
    this.homeAddress,
    this.previousAddresses,
    this.contactAddresses,
    this.visitDurations,
    this.milestones,
  });

  factory Resident.fromJson(Map<String, dynamic> json) => _$ResidentFromJson(json);

  final String? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? address;
  final String? city;
  final String? state;
  final String? zip;

  /// Encoded by json_serializable as an ISO-8601 String, not a Timestamp.
  final DateTime? admittedAt;

  /// Encoded by json_serializable as an int of microseconds.
  final Duration? stayDuration;

  /// Custom class from a third library, reached only via its public toJson.
  final Address? homeAddress;

  final List<Address>? previousAddresses;
  final Map<String, Address>? contactAddresses;

  /// Collections of natively-converted scalars, which pass through the
  /// element/value conversion rather than being written as-is.
  final List<Duration>? visitDurations;
  final Map<String, DateTime>? milestones;

  Map<String, dynamic> toJson() => _$ResidentToJson(this);
}
