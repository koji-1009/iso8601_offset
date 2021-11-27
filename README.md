# iso8601_offset

## Features

Provide a string containing offset information that is not processed by `DateTime.toIso8601String()`.

## Usage

```dart
import 'package:iso8601_offset/iso8601_offset.dart';

// When running on a terminal at JST(+09:00).
// 2021-11-25 03:00:00 UTC time, 2021-11-25 12:00:00 terminal time
final now = DateTime.now();

final defaultIsoString = dateTime.toIso8601String();
print(defaultIsoString); // 2021-11-25T12:00:00.0000

final utcIso8601String = dateTime.toIso8601UtcString();
print(defaultIsoString); // 2021-11-25T03:00:00.0000Z

final offsetIso8601String = dateTime.toIso8601OffsetString();
print(defaultIsoString); // 2021-11-25T12:00:00.0000+09:00
```
