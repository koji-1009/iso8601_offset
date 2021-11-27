extension DateTimeExt on DateTime {
  String toIso8601UtcString() {
    return toUtc().toIso8601String();
  }

  String toIso8601OffsetString() {
    final base = toIso8601String();

    final offset = timeZoneOffset;
    if (offset.inMinutes == 0) {
      return base;
    }

    final hour = offset.inHours;
    final minute = offset.inMinutes - hour * 60;
    final hh = hour.abs().toString().padLeft(2, '0');
    final mm = minute.abs().toString().padLeft(2, '0');
    final time = '$hh:$mm';

    return base + (offset.inMinutes > 0 ? '+$time' : '-$time');
  }
}
