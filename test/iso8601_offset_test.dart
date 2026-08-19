import 'package:iso8601_offset/iso8601_offset.dart';
import 'package:test/test.dart';

/// A [DateTime] whose time zone is fixed, so that the tests do not depend on
/// the time zone of the machine running them.
class _FixedOffsetDateTime implements DateTime {
  const _FixedOffsetDateTime({
    required String iso8601String,
    required DateTime utc,
    required this.timeZoneOffset,
  }) : _iso8601String = iso8601String,
       _utc = utc;

  final String _iso8601String;
  final DateTime _utc;

  @override
  final Duration timeZoneOffset;

  @override
  bool get isUtc => false;

  @override
  String toIso8601String() => _iso8601String;

  @override
  DateTime toUtc() => _utc;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  test('UTC time', () {
    final dateTime = DateTime.utc(2020, 1, 1, 10, 30, 0);

    expect(dateTime.toIso8601String(), '2020-01-01T10:30:00.000Z');
    expect(dateTime.toIso8601UtcString(), '2020-01-01T10:30:00.000Z');
    expect(dateTime.toIso8601OffsetString(), '2020-01-01T10:30:00.000Z');
  });

  test('+00:00', () {
    final dateTime = _FixedOffsetDateTime(
      iso8601String: '2020-01-01T10:30:00.000',
      utc: DateTime.utc(2020, 1, 1, 10, 30, 0),
      timeZoneOffset: Duration.zero,
    );

    expect(dateTime.toIso8601String(), '2020-01-01T10:30:00.000');
    expect(dateTime.toIso8601UtcString(), '2020-01-01T10:30:00.000Z');
    expect(dateTime.toIso8601OffsetString(), '2020-01-01T10:30:00.000+00:00');
  });

  test('+09:00', () {
    final dateTime = _FixedOffsetDateTime(
      iso8601String: '2020-01-01T10:30:00.000',
      utc: DateTime.utc(2020, 1, 1, 1, 30, 0),
      timeZoneOffset: const Duration(hours: 9),
    );

    expect(dateTime.toIso8601String(), '2020-01-01T10:30:00.000');
    expect(dateTime.toIso8601UtcString(), '2020-01-01T01:30:00.000Z');
    expect(dateTime.toIso8601OffsetString(), '2020-01-01T10:30:00.000+09:00');
  });

  test('+11:30', () {
    final dateTime = _FixedOffsetDateTime(
      iso8601String: '2020-01-01T10:30:00.000',
      utc: DateTime.utc(2019, 12, 31, 23, 0, 0),
      timeZoneOffset: const Duration(hours: 11, minutes: 30),
    );

    expect(dateTime.toIso8601String(), '2020-01-01T10:30:00.000');
    expect(dateTime.toIso8601UtcString(), '2019-12-31T23:00:00.000Z');
    expect(dateTime.toIso8601OffsetString(), '2020-01-01T10:30:00.000+11:30');
  });

  test('-05:00', () {
    final dateTime = _FixedOffsetDateTime(
      iso8601String: '2020-01-01T10:30:00.000',
      utc: DateTime.utc(2020, 1, 1, 15, 30, 0),
      timeZoneOffset: const Duration(hours: -5),
    );

    expect(dateTime.toIso8601String(), '2020-01-01T10:30:00.000');
    expect(dateTime.toIso8601UtcString(), '2020-01-01T15:30:00.000Z');
    expect(dateTime.toIso8601OffsetString(), '2020-01-01T10:30:00.000-05:00');
  });

  test('-09:30', () {
    final dateTime = _FixedOffsetDateTime(
      iso8601String: '2020-01-01T10:30:00.000',
      utc: DateTime.utc(2020, 1, 1, 20, 0, 0),
      timeZoneOffset: const Duration(hours: -9, minutes: -30),
    );

    expect(dateTime.toIso8601String(), '2020-01-01T10:30:00.000');
    expect(dateTime.toIso8601UtcString(), '2020-01-01T20:00:00.000Z');
    expect(dateTime.toIso8601OffsetString(), '2020-01-01T10:30:00.000-09:30');
  });

  test('-00:30', () {
    final dateTime = _FixedOffsetDateTime(
      iso8601String: '2020-01-01T10:30:00.000',
      utc: DateTime.utc(2020, 1, 1, 11, 0, 0),
      timeZoneOffset: const Duration(minutes: -30),
    );

    expect(dateTime.toIso8601String(), '2020-01-01T10:30:00.000');
    expect(dateTime.toIso8601UtcString(), '2020-01-01T11:00:00.000Z');
    expect(dateTime.toIso8601OffsetString(), '2020-01-01T10:30:00.000-00:30');
  });

  group('DateTimeConverter', () {
    const converter = DateTimeConverter();

    test('fromJson keeps the moment of a string with an offset', () {
      final dateTime = converter.fromJson('2022-03-20T18:30:00.000+09:00');

      expect(dateTime.isUtc, isFalse);
      expect(dateTime.toUtc(), DateTime.utc(2022, 3, 20, 9, 30, 0));
    });

    test('fromJson keeps the moment of a UTC string', () {
      final dateTime = converter.fromJson('2022-03-20T09:30:00.000Z');

      expect(dateTime.isUtc, isFalse);
      expect(dateTime.toUtc(), DateTime.utc(2022, 3, 20, 9, 30, 0));
    });

    test('fromJson reads a string without an offset as local time', () {
      final dateTime = converter.fromJson('2022-03-20T18:30:00.000');

      expect(dateTime.isUtc, isFalse);
      expect(dateTime, DateTime(2022, 3, 20, 18, 30, 0));
    });

    test('fromJson throws on a malformed string', () {
      expect(() => converter.fromJson('20 March 2022'), throwsFormatException);
    });

    test('toJson writes the offset', () {
      final dateTime = _FixedOffsetDateTime(
        iso8601String: '2020-01-01T10:30:00.000',
        utc: DateTime.utc(2020, 1, 1, 1, 30, 0),
        timeZoneOffset: const Duration(hours: 9),
      );

      expect(converter.toJson(dateTime), '2020-01-01T10:30:00.000+09:00');
    });

    test('toJson writes Z for a UTC value', () {
      expect(
        converter.toJson(DateTime.utc(2020, 1, 1, 10, 30, 0)),
        '2020-01-01T10:30:00.000Z',
      );
    });

    test('round trip keeps a local value', () {
      final dateTime = DateTime(2022, 3, 20, 18, 30, 0);

      expect(converter.fromJson(converter.toJson(dateTime)), dateTime);
    });
  });

  group('DateTimeOrNullConverter', () {
    const converter = DateTimeOrNullConverter();

    test('fromJson returns null for null', () {
      expect(converter.fromJson(null), isNull);
    });

    test('fromJson keeps the moment of a string with an offset', () {
      final dateTime = converter.fromJson('2022-03-20T18:30:00.000+09:00');

      expect(dateTime, isNotNull);
      expect(dateTime!.isUtc, isFalse);
      expect(dateTime.toUtc(), DateTime.utc(2022, 3, 20, 9, 30, 0));
    });

    test('toJson returns null for null', () {
      expect(converter.toJson(null), isNull);
    });

    test('toJson writes the offset', () {
      final dateTime = _FixedOffsetDateTime(
        iso8601String: '2020-01-01T10:30:00.000',
        utc: DateTime.utc(2020, 1, 1, 15, 30, 0),
        timeZoneOffset: const Duration(hours: -5),
      );

      expect(converter.toJson(dateTime), '2020-01-01T10:30:00.000-05:00');
    });

    test('round trip keeps a local value', () {
      final dateTime = DateTime(2022, 3, 20, 18, 30, 0);

      expect(converter.fromJson(converter.toJson(dateTime)), dateTime);
    });
  });
}
