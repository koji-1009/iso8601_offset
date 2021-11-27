extension DateTimeExt on DateTime {
  /// Converts to UCT `yyyy-MM-ddTHH:mm:ss.mmmuuZ` format and returns a string.
  String toIso8601UtcString() {
    return toUtc().toIso8601String();
  }

  /// Returns a string in ISO8601 format with respect to
  /// offset times other than UTC and with an offset according to the locale.
  String toIso8601OffsetString() {
    final base = toIso8601String();
    if (isUtc) {
      return base;
    }

    final offset = timeZoneOffset;
    final hour = offset.inHours;
    final minute = offset.inMinutes - hour * 60;
    final hh = hour.abs().toString().padLeft(2, '0');
    final mm = minute.abs().toString().padLeft(2, '0');
    final time = '$hh:$mm';

    return base + (offset.inMinutes >= 0 ? '+$time' : '-$time');
  }
}
