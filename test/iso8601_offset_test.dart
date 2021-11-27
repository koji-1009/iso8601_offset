import 'package:flutter_test/flutter_test.dart';
import 'package:iso8601_offset/iso8601_offset.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'iso8601_offset_test.mocks.dart';

@GenerateMocks([DateTime])
void main() {
  test('UTC time', () {
    final dateTime = DateTime.utc(2020, 1, 1, 10, 30, 0);
    final defaultIsoString = dateTime.toIso8601String();
    final utcIso8601String = dateTime.toIso8601UtcString();
    final offsetIso8601String = dateTime.toIso8601OffsetString();

    expect(defaultIsoString, '2020-01-01T10:30:00.000Z');
    expect(utcIso8601String, '2020-01-01T10:30:00.000Z');
    expect(offsetIso8601String, '2020-01-01T10:30:00.000Z');
  });

  test('+09:00', () {
    final dateTime = MockDateTime();

    when(dateTime.toIso8601String()).thenReturn('2020-01-01T10:30:00.000');
    when(dateTime.toUtc()).thenReturn(DateTime.utc(2020, 1, 1, 1, 30, 0));
    when(dateTime.timeZoneOffset).thenReturn(const Duration(hours: 9));

    final defaultIsoString = dateTime.toIso8601String();
    final utcIso8601String = dateTime.toIso8601UtcString();
    final offsetIso8601String = dateTime.toIso8601OffsetString();

    expect(defaultIsoString, '2020-01-01T10:30:00.000');
    expect(utcIso8601String, '2020-01-01T01:30:00.000Z');
    expect(offsetIso8601String, '2020-01-01T10:30:00.000+09:00');
  });

  test('+11:30', () {
    final dateTime = MockDateTime();

    when(dateTime.toIso8601String()).thenReturn('2020-01-01T10:30:00.000');
    when(dateTime.toUtc()).thenReturn(DateTime.utc(2019, 12, 31, 22, 30, 0));
    when(dateTime.timeZoneOffset).thenReturn(
      const Duration(
        hours: 11,
        minutes: 30,
      ),
    );

    final defaultIsoString = dateTime.toIso8601String();
    final utcIso8601String = dateTime.toIso8601UtcString();
    final offsetIso8601String = dateTime.toIso8601OffsetString();

    expect(defaultIsoString, '2020-01-01T10:30:00.000');
    expect(utcIso8601String, '2019-12-31T22:30:00.000Z');
    expect(offsetIso8601String, '2020-01-01T10:30:00.000+11:30');
  });

  test('-05:00', () {
    final dateTime = MockDateTime();

    when(dateTime.toIso8601String()).thenReturn('2020-01-01T10:30:00.000');
    when(dateTime.toUtc()).thenReturn(DateTime.utc(2020, 1, 1, 15, 30, 0));
    when(dateTime.timeZoneOffset).thenReturn(const Duration(hours: -5));

    final defaultIsoString = dateTime.toIso8601String();
    final utcIso8601String = dateTime.toIso8601UtcString();
    final offsetIso8601String = dateTime.toIso8601OffsetString();

    expect(defaultIsoString, '2020-01-01T10:30:00.000');
    expect(utcIso8601String, '2020-01-01T15:30:00.000Z');
    expect(offsetIso8601String, '2020-01-01T10:30:00.000-05:00');
  });

  test('-00:30', () {
    final dateTime = MockDateTime();

    when(dateTime.toIso8601String()).thenReturn('2020-01-01T10:30:00.000');
    when(dateTime.toUtc()).thenReturn(DateTime.utc(2020, 1, 1, 11, 0, 0));
    when(dateTime.timeZoneOffset).thenReturn(const Duration(minutes: -30));

    final defaultIsoString = dateTime.toIso8601String();
    final utcIso8601String = dateTime.toIso8601UtcString();
    final offsetIso8601String = dateTime.toIso8601OffsetString();

    expect(defaultIsoString, '2020-01-01T10:30:00.000');
    expect(utcIso8601String, '2020-01-01T11:00:00.000Z');
    expect(offsetIso8601String, '2020-01-01T10:30:00.000-00:30');
  });
}
