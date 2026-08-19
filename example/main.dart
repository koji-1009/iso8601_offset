import 'dart:convert';

import 'package:example/sample_json.dart';
import 'package:iso8601_offset/iso8601_offset.dart';

void main() {
  final now = DateTime.now();
  print('toIso8601String       = ${now.toIso8601String()}');
  print('toIso8601UtcString    = ${now.toIso8601UtcString()}');
  print('toIso8601OffsetString = ${now.toIso8601OffsetString()}');

  const source = '''
{
  "id": "sample",
  "date_time": "2022-03-20 18:30:00+09:00"
}
''';
  final sample = SampleJson.fromJson(
    json.decode(source) as Map<String, dynamic>,
  );
  print('decoded = $sample');
  print('encoded = ${json.encode(sample.toJson())}');
}
