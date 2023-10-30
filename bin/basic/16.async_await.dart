void main() async {
  print(await firstAsync());
  print(await secondAsync());
  print(await thirdAsync());
  print('finish');
}

/// 可不寫回傳值
firstAsync() async {
  await Future.delayed(const Duration(seconds: 2));
  return "111";
}

Future<String> secondAsync() async {
  await Future.delayed(const Duration(seconds: 2));
  return "222";
}

Future<String> thirdAsync() async {
  await Future.delayed(const Duration(seconds: 2));
  return "333";
}
