void main(List<String> list) {
  print(Me().show());
}

class Papa {
  show() => "papa";
}

/// implements 要覆寫父類的方法，但寫了 noSuchMethod 之後就可以不用了
class Me implements Papa {
  @override
  void noSuchMethod(Invocation invocation) {
    print("name = ${invocation.memberName}");
  }
}
