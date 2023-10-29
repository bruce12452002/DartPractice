void main(List<String> args) {
  var m1 = Map();
  var m2 = <String, String>{'k1': 'v1', 'k2': "v2"};
  var m3 = Map.from(m2); // from 的 key 可為 null，創建新的 map 時可以使用
  var m4 = Map.of(m2); // of 的 key 「不可」為 null，儘量使用 of
  print(m1);
  print(m2);
  print(m3);
  print(m4);
  m1.putIfAbsent('k', () => 'v');
  print(m1);
  m3.putIfAbsent('k3', () => 'v3');
  m4.putIfAbsent('k3', () => 'v3');
  // m4.putIfAbsent(null, () => 'v3');

  // 不會影響原來的值
  print(m1);
  print(m2);
  print(m3);
  print(m4);

  print('===== 常用方法 =====');
  // isEmpty isNotEmpty length keys values entries
  m1.forEach((key, value) => print('$key $value'));
  m1.entries.forEach((e) => print("${e.key} ${e.value}"));

  // addAll containsKey containsValue clear remove removeWhere
  m1.removeWhere((key, value) => key == 'k');
  print(m1);

  // update updateAll
  m3.updateAll((key, value) => "==$value==");
  print(m3);

  print('===== ...用法 =====');
  Map<String, int> map1 = {'k1': 1, 'k2': 2};
  Map<String, int> map2 = {...map1, 'k3': 3, 'k2': 4, ...map1};
  print(map2); // 會將 map 1 給 map 2，但一樣的 key 就不塞了
}
