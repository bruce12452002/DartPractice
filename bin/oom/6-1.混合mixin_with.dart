main() {
  Me m = Me();
  m.attack();
}

/// 混合類別也可像 abstract 一樣，可以有無實體方法
mixin Sword {
  int point();

  attack() {
    print("劍擊，攻擊力 ${point()} 點");
  }
}

/// 混合類別不可宣告建構子
/// 混合類別不可使用 extends，但 implements 可以
mixin Gun {
  attack() {
    print("槍擊");
  }

// Gun() {}
}

/// 如果混合類別的方法一樣，會以後面的為主
class Me with Gun, Sword {
  @override
  int point() => 67; // 覆寫 Sword　方法
}
