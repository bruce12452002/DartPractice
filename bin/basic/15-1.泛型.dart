main() {
  // Dart 和 java 不同，沒有泛型擦除
  List<int> list = [];
  // list.add("");

  Map<String, int> map = {};
  // map.putIfAbsent(0, () => "");

  /// 泛型方法
  print(get(3.2)); // 調用時可不用泛形
  print(get<int>(3)); // 用了泛形會在編譯時檢查型態
  print(get<String>("abc"));

  /// 泛型類別
  print(Animal().get(2));
  print(Animal<String>().get("xx"));

  /// 泛型類別裡有泛型方法
  // 泛型類別的型態寫在類別後面；泛型方法的型態寫在方法後面
  print(Animal<String>().get2<int>(2));
}

/// P 是什麼型態由調用方決定
P get<P>(P p) {
  return p;
}

class Animal<T> {
  T? xxx;

  T get(T t) {
    return t;
  }

  T get2<T>(T t) {
    return t;
  }
}
