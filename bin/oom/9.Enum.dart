main() {
  print(Money1.ONE);
  print(Money1.FIVE.index);
  print(Money1.TEN.name);
  print(Money1.ONE.runtimeType);
  print("==========");
  print(Money2.ONE);
  print(Money2.FIVE.digit);
  print(Money2.TEN.chinese);
  Money2.getXxx();
  Money2.ONE.getOoo();
  Money2.TEN.getOoo();
  print("==========");
  print(Money3.ONE);
  print(Money3.FIVE.digit);
  print(Money3.TEN.chinese);
  Money3.getXxx();
  Money3.FIVE.getOoo();
}

enum Money1 {
  ONE,
  FIVE,
  TEN;
}

enum Money2 {
  ONE(digit: 1, chinese: "一"),
  FIVE(digit: 5, chinese: "五"),
  // TEN(digit: 10, chinese: "十");
  TEN(digit: 10); // 如果建構子沒有 required，可以不寫

  /// 屬性一定要宣告成 final，否則報錯
  final int digit;
  final String? chinese;
  static int a = 10;

  /// enum 建構子要宣告成 const，否則報錯
  // const Money2({required this.digit, required this.chinese});
  const Money2({required this.digit, this.chinese});

  static getXxx() {
    print("a=${a}");
  }

  getOoo() {
    print("${this.digit}, ${this.chinese}");
  }
}

enum Money3 {
  ONE(1, "一"),
  FIVE(5, "五"),
  TEN(10, "十");

  final int digit;
  final String chinese;
  static int a = 10;

  const Money3(int digit, String chinese)
      : this.digit = digit,
        this.chinese = chinese;

  static getXxx() {
    print("a=${a}");
  }

  getOoo() {
    print("${this.digit}, ${this.chinese}");
  }
}
