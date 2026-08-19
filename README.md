# iso8601_offset

## Features

Provide a string containing offset information that is not processed by `DateTime.toIso8601String()`.

## Usage

```dart
import 'package:iso8601_offset/iso8601_offset.dart';

// When running on a terminal at JST(+09:00).
// 2021-11-25 03:00:00 UTC time, 2021-11-25 12:00:00 terminal time
final dateTime = DateTime(2021, 11, 25, 12, 0, 0);

print(dateTime.toIso8601String()); // 2021-11-25T12:00:00.000
print(dateTime.toIso8601UtcString()); // 2021-11-25T03:00:00.000Z
print(dateTime.toIso8601OffsetString()); // 2021-11-25T12:00:00.000+09:00
```

If you want to encode/decode JSON considering offset, please use `@DateTimeConverter` and `@DateTimeOrNullConverter`.

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iso8601_offset/iso8601_offset.dart';

part 'sample_json.freezed.dart';
part 'sample_json.g.dart';

@freezed
abstract class SampleJson with _$SampleJson {
  const factory SampleJson({
    @DateTimeConverter() required DateTime dateTime,
    @DateTimeOrNullConverter() required DateTime? dateTimeNull,
  }) = _SampleJson;

  factory SampleJson.fromJson(Map<String, dynamic> json) =>
      _$SampleJsonFromJson(json);
}
```

See [example](example) for a runnable version.
