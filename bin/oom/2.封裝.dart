void main() {
  Animal a = Animal();

  // 存取時不以用方法的方式，要用存取欄位的方式
  a.setName = "monkey";
  print(a.getName);

  a._name = "xx";
  print(a.getName);

  print("==========");
  Me();
  Me.xxx({});
}

class Animal {
  String? _name; // 封裝用_開頭，但這個檔案還是可以存取，別的檔案才不行

  void set setName(String name) {
    this._name = name;
  }

  /// getter 不可有圓括號
  String? get getName {
    return this._name;
  }

  /// 可簡寫成如下的樣子
// String? get getName => this._name;
}

class Papa {
  Papa(num n) {
    print("papa");
  }
}

class Me extends Papa {
  /// 一般建構子無法調用父類
  // Me() {
  //   super(5);
  //   print("me");
  // }

  /// 要調用父類的建構子可用另外兩種建構子
  Me() : super(5) {
    print("me1");
  }

  Me.xxx(Map m) : super(5) {
    print("me2");
  }
}
