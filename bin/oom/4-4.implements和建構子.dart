main() {
  Son(); // 只會執行自己的建構子
}

abstract class GrandPapa {
  GrandPapa() {
    print("grandPapa");
  }
}

class Papa implements GrandPapa {
  Papa() {
    print("papa");
  }
}

class Me implements Papa {
  Me() {
    print("me");
  }
}

class Son implements Me {
  Son() {
    print("son");
  }
}
