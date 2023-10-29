void main(List<String> args) {
  var dt1 = DateTime.now();
  var dt2 = DateTime(2000); // 預設 1 月 1 日
  print(dt1);
  print(dt2);

  DateTime dt3 = DateTime.utc(2000); // 銫原子時鐘
  print(dt3);

  DateTime dt4 = DateTime.parse("2000-01-01 00:00:00");
  DateTime dt5 = DateTime.parse("2000-01-01 00:00:00.000");
  DateTime dt6 = DateTime.parse("2000-01-01 00:00:00.000Z");
  DateTime dt7 = DateTime.parse("2000-01-01 00:00:00+0800"); // UTC-8
  print(dt4);
  print(dt5);
  print(dt6);
  print(dt7);
  DateTime dt8 = dt7.add(Duration(hours: 8));
  DateTime dt9 = dt7.subtract(Duration(hours: -8));
  print(dt7); // 不會影響原來的時間
  print(dt8);
  print(dt9);

  // 日期比較
  var d1 = DateTime(2000, 10, 10);
  var d2 = DateTime(2000, 10, 11);
  print(d1.isAfter(d2)); // d1 在 d2 之後嗎？ false
  print(d1.isBefore(d2)); // d1 在 d2 之前嗎？ true
  print(d1.isAtSameMomentAs(d2)); // 相同時間嗎？
  print(d1.toIso8601String()); // 格式為 yyyy-MM-ddTHH:mm:ss.mmmuuu 或最後多個 Z

  // 相差
  Duration result = d1.difference(d2);
  print(result.inDays); // -1
  print(result.inHours); // -24

  // 時間戳
  print(d1.microsecondsSinceEpoch); // 到微秒，所以會比毫秒多 3 位
  print(d1.millisecondsSinceEpoch); // 到毫秒
}
