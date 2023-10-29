main() {
  Son(2); // 會從最頂的父類建構子一路下來
}

abstract class GrandPapa {
  GrandPapa() {
    print("grandPapa");
  }
}

class Papa extends GrandPapa {
  Papa() {
    print("papa");
  }
}

class Me extends Papa {
  Me(){
    print("me");
  }
}

class Son extends Me {
  Son(num a) {
    print("son");
  }
}
