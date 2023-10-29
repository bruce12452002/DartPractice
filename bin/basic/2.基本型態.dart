import 'dart:io';

void main(List<String> arguments) {
  int i = 1;
  double d = 1.1;
  bool b = true;
  String s = "";

  // 看型態
  print(i.runtimeType);
  print(d.runtimeType);
  print(b.runtimeType);
  print(s.runtimeType);

  // + - * /(有小數點) ~/(無小數點) %

  // 以下是數字才有的方法
  // isFinite isInfinite，是否有限、是否無限
  // isNaN isNegative，是否是非數字、是否是負數
  // sign 回傳 0 1 -1 或 0.0 -0.0 1.0 -1.0，表示 0 正數 負數
  print(i.isFinite);
  print(d.isInfinite);
  print(i.isNaN);
  print(d.isNegative);
  print(-0.sign);
  print(-0.0.sign);

  // 以下為 int 才有的方法
  print(50.bitLength); // 轉成二進制時，需要的位數
  print(i.isEven); // 是否是偶數
  print(i.isOdd); // 是否是奇數

  // 以下為 double 才有的方法
  // round 四捨五入、不是 down，也不是 even
  print(1.5.round());

  // 二進位 & | ~ ^ << >> >>> (工作不常用)
  print(1 >> 1);

  // 型態互轉
  // parse toInt toDouble toStirng
  print(num.parse("1.23"));
  print(int.parse("1"));
  print(double.parse("1"));
  print(bool.parse("true"));

  // bool
  // && || ! (工作常用)
  // == != > < >= <=
  String a = "x";
  assert(a == "x");
  print("true");

  // String
  // 可用兩個 " 或 '；三個 " 或 ' 有換行的功能
  String sss = """a
  b
c
  """;
  print(sss);

  // String 裡使用變數 ${}
  print("$i + $i"); // 1 + 1
  print("${i + i}"); // 2

  // 串接
  String s1 = "a";
  String s2 = "b";
  print(s1 + s2);
  print("xx" "oo"); // 如果字串寫死在裡面，還可省略 +
  print("x" * 5); // xxxxx
  // print(s1 + 2); // 不可 + 其他類型

  // 跳脫字元
  // \r \n \t \b

  // 不用跳脫字元(全部是字串)
  print(r"\r \n abc");

  // 字串的方法
  print("abcde".substring(1, 2)); // 不支援負的
  print("  \r\n\t　  abc  ".trim()); // 全形空格也能去除
  
  // StringBuffer
  // .. 操作
  var sb1 = new StringBuffer("abc"); // new 可省略
  sb1.write("d");
  sb1.write("e");
  sb1.toString();
  print(sb1);

  var sb2 = StringBuffer("abc")
  ..write("d")
  ..write("e")
  ..toString();
  print(sb2);

  // 和 print 一樣，但不換行，但需先 import
  stdout.write("aaa");
}
