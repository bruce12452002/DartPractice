main() {
  Me m1 = Me();
  print(m1.j);
  m1.get2();

  Papa m2 = Me();
  print(m2.j);
  m2.get2();
  print("==========");
  Son s1 = Son();
  print(s1.j);
  s1.get2();

  Papa s2 = Son();
  print(s2.j);
  s2.get2();
}

abstract class Papa {
  static int i = 1; // 靜態不會被繼承
  int j = 2;

  /// 靜態不會被繼承
  static get1() {
    print("papa get1");
  }

  get2() {
    print("papa get2");
  }
}

class Me extends Papa {}

class Son extends Papa {
  // extends 後面只能一個類別
  @override // 沒有強制作用，只是標識覆寫
  int j = 4;

  @override
  get2() {
    print("Son get2");
  }
}
