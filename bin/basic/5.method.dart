void main() {
  print(xxx('a'));
  print(xxx('b', '123'));

  print(ooo('a'));
  print(ooo('b', o: '123'));

  noVoid();
  get(noVoid);

  // 箭頭函數
  List<String> list = ['aaa', "bbb", "ccc"];
  list.forEach((e) {
    // 參數的圓括號不可省略
    print(e);
  });

  list.forEach((e) => print(e)); // 如果只有一行可以省略花括

  // 匿名方法
  var show = (String s) {
    print(s);
  };
  var show2 = (String s) => print(s);
  show("ss");
  show2("ss");

  // 自執行函數
  ((String s) => print(s))("qoo");

  var c = closure();
  for (int i = 0; i < 5; i++) {
    c();
  }
}

/* 沒有 overloading 方法 */
String xxx(String x, [String o = '000']) {
  // 預設就給值，要給值直接給即可
  return "x=$x o=$o";
}

String ooo(String x, {String o = '000'}) {
  // 預設就給值，要給值要用 key:給值
  return "x=>$x o=>$o";
}

noVoid() {
  // 回傳值可省略
  print("no void");
}

get(fn) {
  fn();
}

/* 
  閉包：函數裡有函數，內部函數調用外部函數的變數，變數不會被系統回收，
  使得記憶體無法釋放

  寫法：外部函數 return 內部函數
*/
Function closure() {
  int i = 0;
  return () => print(i++);
}
