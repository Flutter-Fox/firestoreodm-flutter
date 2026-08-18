import 'package:json_annotation/json_annotation.dart';

/// A field-level converter that visibly rewrites the value, so generated code
/// that skips it is obvious in the output.
class UpperCaseSerializer implements JsonConverter<String?, dynamic> {
  const UpperCaseSerializer();

  @override
  String? fromJson(dynamic value) => value == null ? null : '$value';

  @override
  dynamic toJson(String? instance) => instance?.toUpperCase();
}

/// The const-instance form, which is how most projects expose a converter.
const upperCaseSerializer = UpperCaseSerializer();
