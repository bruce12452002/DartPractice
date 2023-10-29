main() {
  Me m = Me();
  m.attack();
  m.a();
}

mixin Sword on SwordPapa {
  attack() {
    print("劍擊");
  }
}

mixin Gun {
  attack() {
    print("槍擊");
  }

  a() {
    print("a");
  }
}

class SwordPapa {
  attack() {
    print("槍Papa擊");
  }

  b() {
    print("b");
  }
}

/// Sword on SwordPapa 表示必需是 SwordPapa 的子類才能混合(SwordPapa 也不行)
/// 此時 new Me() 後，就直接可以調用 Sword 的方法了，所以 with Sword 可不寫
class Me extends SwordPapa with Gun {}

/// extends with implements 順序要對，如果有重名方法會以後面為主
/// 注意 implements 如果 extends 或 with 已實現就不會報錯，這時會以
/// implements 前面的為主
