// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SampleJson _$$_SampleJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SampleJson',
      json,
      ($checkedConvert) {
        final val = _$_SampleJson(
          id: $checkedConvert('id', (v) => v as String),
          dateTime: $checkedConvert('date_time',
              (v) => const DateTimeConverter().fromJson(v as String)),
          dateTimeNull: $checkedConvert('date_time_null',
              (v) => const DateTimeOrNullConverter().fromJson(v as String?)),
        );
        return val;
      },
      fieldKeyMap: const {
        'dateTime': 'date_time',
        'dateTimeNull': 'date_time_null'
      },
    );

Map<String, dynamic> _$$_SampleJsonToJson(_$_SampleJson instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'date_time', const DateTimeConverter().toJson(instance.dateTime));
  writeNotNull('date_time_null',
      const DateTimeOrNullConverter().toJson(instance.dateTimeNull));
  return val;
}
