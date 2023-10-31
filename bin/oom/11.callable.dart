main() {
  var a = Animal();
  a("xxx");
}

class Animal {
  /// 一定要叫 call，參數隨意
  call(s) {
    print(s);
  }
}
