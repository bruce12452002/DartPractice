/// sync* 可搭配 yield 或 yield*
/// Iterable 表示裡面的值，會一個一個回傳
/// sync* 表示會自動回傳 Iterable，所以不用 return
/// yield 或 yield* 不寫就不會回傳
/// yield 回傳 Iterable 裡的泛型
/// yield* 回傳整個 Iterable
main() {
  print(testYield(5)); // 一次全輸出
  // 一次輸出一筆
  var it = testYield(5).iterator;
  while (it.moveNext()) {
    print(it.current);
  }

  print("第二次不會跑");
  while (it.moveNext()) {
    print(it.current);
  }

  print("==========");
  print(testYieldStar(5));
  var it2 = testYieldStar(5).iterator;
  while (it2.moveNext()) {
    print(it2.current);
  }
}

Iterable<int> testYield(int n) sync* {
  for (var i = 0; i < n; i++) {
    yield i * i;
  }
}

Iterable<int> testYieldStar(int n) sync* {
  yield* testYield(5).map((e) => e + 1);
}
