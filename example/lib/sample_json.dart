import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iso8601_offset/iso8601_offset.dart';

part 'sample_json.freezed.dart';
part 'sample_json.g.dart';

@freezed
class SampleJson with _$SampleJson {
  const factory SampleJson({
    required String id,
    @DateTimeConverter() required DateTime dateTime,
    @DateTimeOrNullConverter() required DateTime? dateTimeNull,
  }) = _SampleJson;

  factory SampleJson.fromJson(Map<String, dynamic> json) =>
      _$SampleJsonFromJson(json);
}
