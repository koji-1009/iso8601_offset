// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SampleJson _$SampleJsonFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_SampleJson',
  json,
  ($checkedConvert) {
    final val = _SampleJson(
      id: $checkedConvert('id', (v) => v as String),
      dateTime: $checkedConvert(
        'date_time',
        (v) => const DateTimeConverter().fromJson(v as String),
      ),
      dateTimeNull: $checkedConvert(
        'date_time_null',
        (v) => const DateTimeOrNullConverter().fromJson(v as String?),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'dateTime': 'date_time',
    'dateTimeNull': 'date_time_null',
  },
);

Map<String, dynamic> _$SampleJsonToJson(_SampleJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_time': const DateTimeConverter().toJson(instance.dateTime),
      'date_time_null': const DateTimeOrNullConverter().toJson(
        instance.dateTimeNull,
      ),
    };
