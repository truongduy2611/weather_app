extension DateTimeUtils on DateTime {
  static DateTime fromSecondsSinceEpoch(int seconds) {
    return DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
  }

  DateTime get timeIgnoreMinute {
    return DateTime(year, month, day, hour);
  }

  bool isSameHour(DateTime time) {
    return year == time.year &&
        month == time.month &&
        day == time.day &&
        hour == time.hour;
  }
}

extension DateTimeConvert on int {
  DateTime get dateTimeFromSeconds => DateTimeUtils.fromSecondsSinceEpoch(this);
}
