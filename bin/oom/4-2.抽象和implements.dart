main() {
  Me m1 = Me();
  print(m1.j);
  m1.get();
}

class Papa {
  int j = 2;

  get() {
    print("papa get");
  }
}

/// implements 一定要把父類的屬性和方法都實作
/// implements 後面可以寫多個類別
class Me implements Papa {
  @override
  int j = 2;

  @override
  get() {
    print("Me get");
  }
}
