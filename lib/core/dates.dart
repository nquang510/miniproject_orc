/// Calendar helpers. Days are added through the DateTime constructor rather
/// than `Duration(days: n)` so daylight-saving transitions cannot shift a
/// date by one hour into the previous day.
library;

DateTime startOfDay(DateTime d) => DateTime(d.year, d.month, d.day);

DateTime addDays(DateTime d, int days) =>
    DateTime(d.year, d.month, d.day + days);

/// Monday of the week containing [d].
DateTime startOfWeek(DateTime d) => addDays(d, -(d.weekday - 1));

DateTime startOfMonth(DateTime d) => DateTime(d.year, d.month);

DateTime startOfNextMonth(DateTime d) => DateTime(d.year, d.month + 1);

bool isSameDay(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;
