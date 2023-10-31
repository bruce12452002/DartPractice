/// 官方文件：https://dart.dev/language
/// 使用的是 dart 3.1.3 版本
void main(List<String> args) {
  /* 強類型：指定是什麼型態的，Object 也是強類型，只不過裡面放什麼都可以 */

  /*
  https://dart.dev/language/built-in-types
  num 包括 int 和 double 型態
  bool，只有 true 和 false，null 要有 ?
  String
  null

  Lists
  Sets
  Maps

  Records
  Runes
  Symbols
  */

  /* 賦多個值 */
  // 用方括或圓括都可以
  // var i, j;
  var (i, j) = ('x', "o");
  // [i, j] = ['x', "o"];
  print("$i $j");

  /* 弱類型：自動判別是什麼類型 */
  // var 宣告時就賦值時，不能修改成其他類型
  var i1 = 'x';
  i1 = 'o'; // 同類型可以
  // i1 = 5; // 錯誤

  // 宣告時「不」賦值，可修改成其他類型
  var i2;
  i2 = 'x';
  i2 = 5;

  // 以上，如果使用 Object、dynamic 沒有這個問題
  // Object、dynamic 區別：
  dynamic i3 = '';
  print(i3.startsWith("a")); // dynamic 可以使用賦值型態的方法

  Object i4 = '';
  // i4.startsWith("a"); // Object 「不可」使用賦值型態的方法

  Object age = 25;
  // int age1 = age; // Object 不可賦值給其他變數
  int age1 = age as int; // 如一定要賦值，要用 as 加型態

  /* null */
  // 強類型：
  // 以上不賦值時，要用時會執行期錯誤，因為預設為 null，
  // 但要賦值為 null 時，要在型態後面加?，如 int? a = null; 或 int? a;

  // 弱類型：
  // Object 是強類型，所以也是要加上 ?；而 var 一定「不可」加 ?(可為null)；dynamic 可加可不加

  print("======== ?? =======");
  String? aaa;
  String bbb = aaa ?? 'bbb'; // 如果 aaa 是 null 就賦值，否則報錯相當於三元運算子
  print(bbb);
  aaa ??= 'aaa'; // 如果 aaa 是 null 就賦值，否則報錯
  print(aaa);
  print(aaa?.length); // null 就賦值 null，不會有警告；但如果非 null 可以，但會有警告

  print("======== ! =======");
  // 在變數後加!，可告訴處理器，這時已不是 null 了
  String? abc = 'a';
  print(abc!.length); // null 會報錯；非 null 可以，但都會有警告

  print("======== is =======");
  print(abc is int);

  print("======== const 和 final =======");
  /* const 和 final */
  /*
  const：宣告一定要賦值，一賦值就不可改
  final：宣告時可不賦值，但一賦值就不可改
  */
  final a = 4;
  final int b = 4; // 寫型態比較清楚
  const c = 4;
  const int d = 4; // 寫型態比較清楚
  print("$a $b $c $d");

  /*
  以上四種方法都是一樣的
  注意以上的型態寫弱類型時，只有 var 「不可」搭配這兩個關鍵字
  */

  // 使用在 List 時
  const List list = ['a', 'b'];
  // list[0] = 'c'; // 使用 const 是執行期錯誤
  print(list);

  final List list2 = ['a', 'b'];
  list2[0] = 'c'; // 使用 final 是可以的，整個記憶體的指向不變
  // list2 = []; // 此時記憶體的指向變了，所以會編譯錯誤
  print(list2);

  // identical 可比較記憶體位址相不相同
  const i1a = [];
  const i2a = [];
  print(identical(i1a, i2a)); // true

  final i3a = [];
  final i4a = [];
  print(identical(i3a, i4a)); // false，但是值類型如果是單值，如數字、浮點數、布林、字串，結果是 true

  // 使用在 DateTime 時
  // const dt1 = DateTime.now(); // DateTime.now() 在運行時才會決定，所以會報錯
  // print(dt1);

  final dt2 = DateTime.now(); // final 可在運行時才決定，所以「不會」報錯
  print(dt2);
}
