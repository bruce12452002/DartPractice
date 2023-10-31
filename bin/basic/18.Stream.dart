/// async* 可搭配 yield 或 yield*
/// Stream 和 Iterable 一樣，但它是非同步的，整筆都執行完了，才會回傳
/// sync* 表示會自動回傳 Stream，所以不用 return
/// yield 或 yield* 不寫就不會回傳
/// yield 回傳 Stream 裡的泛型
/// yield* 回傳整個 Stream
main() {
  testYield(5).listen(print);
  print("==========");
  testYieldStar(5).listen(print);
}

Stream<int> testYield(int n) async* {
  for (var i = 1; i <= n; i++) {
    yield i * i;
  }
}

Stream<int> testYieldStar(int n) async* {
  yield* testYield(5).map((e) => e * e);
}
