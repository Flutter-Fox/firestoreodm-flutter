import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'visitor.g.dart';

/// Overrides the `explicit_to_json: true` set in build.yaml back to false, to
/// show what the annotation changes for a cross-library collection.
///
/// json_serializable then emits the nested [Address] itself rather than a Map,
/// while the collection's inline field conversion still calls toJson. The two
/// disagree, and only the toJson form is writable to Firestore.
@JsonSerializable(explicitToJson: false)
class Visitor {
  const Visitor({this.id, this.homeAddress, this.previousAddresses});

  factory Visitor.fromJson(Map<String, dynamic> json) => _$VisitorFromJson(json);

  final String? id;
  final Address? homeAddress;
  final List<Address>? previousAddresses;

  Map<String, dynamic> toJson() => _$VisitorToJson(this);
}
