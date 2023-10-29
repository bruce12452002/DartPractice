main() {
  // 和 java 相同
  GrandPapa gp = Son();
  print(gp.j);
  gp.get();
}

abstract class GrandPapa {
  int j = 1;

  get() {
    print("GrandPapa get");
  }
}

abstract class Papa extends GrandPapa {
  int j = 2;

  get() {
    print("Papa get");
  }
}

class Me extends Papa {}

class Son extends Papa {
  // int j = 3;
  //
  // get() {
  //   print("Son get");
  // }
}
