import 'package:json_annotation/json_annotation.dart';
import 'package:iso8601_offset/src/datetime_ext.dart';

/// JsonConverter for non-null [DateTime] with localed offset
class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();

  @override
  String toJson(DateTime object) => object.toIso8601OffsetString();
}

/// JsonConverter for nullable [DateTime] with localed offset
class DateTimeOrNullConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeOrNullConverter();

  @override
  DateTime? fromJson(String? json) =>
      json != null ? DateTime.parse(json).toLocal() : null;

  @override
  String? toJson(DateTime? object) => object?.toIso8601OffsetString();
}
