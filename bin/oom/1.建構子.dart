void main() {
  Ooo o = new Ooo(1, 2); // new 可以省略
  print(o.show());

  print(Xxx(3).show());

  Aaa a = Aaa(5, 6);
  print([a.a, a.e, a.f]);

  var a2 = Aaa.fromJson({"k1": 1, "k2": 2});
  print([a.e, a.f]); // 不會影響其他人的
  print([a2.e, a2.f]);

  var a3 = Aaa.fromJson2({"k1": 3, "k2": 4});
  print([a3.e, a3.f]);

  Bbb b = Bbb(5, 6);
  print([b.a, b.b]);
}

/// 只能有一個建構子
class Ooo {
  int a = 0;
  int b = 0;

  // Ooo(int a, int b) {
  //   this.a = a;
  //   this.b = b;
  // }

  /// 以上的建構子可以改成如下的樣子
  Ooo(this.a, this.b); //後面是花括號也可以

  int show() {
    return a + b;
  }
}

class Xxx {
  int? c; // 如果不初始化會報錯，這時可用 ?
  int? d;

  Xxx(c, [int d = 10]) {
    this.c = c;
    this.d = d;
  }

  int? show() {
    // 回傳 c 或 d 可以，但相加就不行，因為是用 int? 宣告的
    return this.d;
  }
}

class Aaa {
  var e;
  var f;
  var a;

  Aaa(this.e, this.f) : a = 15; // 還可以初始化別的欄位
  // Aaa(this.e, this.f) : a = {e: e, f: f}; // 還可以初始化別的欄位

  // 命名建構子，命名一個叫 fromJson 的建構子，這種建構子可以多個
  Aaa.fromJson(Map m) {
    this.e = m['k1'];
    this.f = m['k2'];
    Aaa(m['k1'], m['k2']); // 會連到一般建構子
    Aaa.fromJson2({"k1": 3, "k2": 4}); // 會連到命名建構子
  }

  Aaa.fromJson1(Map m)
      : this.e = m['k1'],
        this.f = m['k2'] {
    print("a=${a}");
  }

  // 重定向建構子，可連到其他的建構子，這種建構子也可以多個
  Aaa.fromJson2(Map m) : this(m['k1'], m['k2']); // 會連到一般建構子
  Aaa.fromJson3(Map m) : this.fromJson({"k1": 3, "k2": 4}); // 會連到命名建構子
  Aaa.fromJson4(Map m) : this.fromJson2({"k1": 3, "k2": 4}); // 會連到重定向建構子
}

class Bbb {
  final int a;
  late int b; // late 讓 null 檢查到運行時才檢查

  Bbb(this.a, this.b) {}
}
