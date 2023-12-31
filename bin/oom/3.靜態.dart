void main() {
  // 大部分和 java 的觀念一樣
  // 但建構子可以調用靜態屬性
  print(StaticTest.sToS());
  StaticTest._a = 3;
  print(StaticTest.sToS());
}

class StaticTest {
  static int _a = 2;
  int _b = 1;

  static int sToS() {
    return _a;
  }

  // static int sToNonS() {
  //   return _b;
  // }

  int nonSToNonS() {
    return _b;
  }

  int nonSToS() {
    return _a;
  }
}
