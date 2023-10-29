void main(List<String> args) {
  var s = Set(); // <String>{};
  s.add('a');
  s.add('b');
  s.add('c');
  s.add('a');
  print(s);

  // isEmpty isNotEmpty first last length addAll contains containsAll
  // remove clear

  // diffenence(差集) 將兩個 Set 不一樣的挑出來
  var s2 = <String>{};
  s2.add('b');
  s2.add('c');
  print(s.difference(s2)); // s-s2 (abc-bc=a)
  print(s2.difference(s)); // s-s2 (bc-abc=空)

  // for
  s.forEach((element) => print(element));

  // union(聯集) intersection(交集)

  // retainAll retainWhere 只保留某些元素，兩個只差在寫法不同
  // s2.retainAll(['b']);
  // print(s2);

  s2.retainWhere((e) => e == 'b');
  print(s2);

  // firstwhere lastwhere 正向/反向查詢，如果找不到元素會報錯
  print(s.firstWhere((e) => e == 'c'));

  // elementAt
  Set ss = {'aaa', 'zzz', 'ooo'};
  print(ss.elementAt(1)); // 超過 index 會報錯

  // from 和 of 都是從別的地方抓來後，變成新的 Set
  // 兩個差別在 from 的 Iterable 沒有泛型
  // 如果使用 of 會有更好的效能
  Set ss1 = Set.from(s);
  Set ss2 = Set.of(s);
}
