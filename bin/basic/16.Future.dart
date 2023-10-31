/// async 可單獨存在；await 不行
/// 沒有 sync，但有 sync*，下一章會說明
/// 加了 async，如果有寫回傳值，一定要是 Future 或 void
/// await 表示等待執行完後，才往下執行
void main() async {
  print(await firstAsync());
  print(await secondAsync());
  print(await thirdAsync());
  print('finish');
}

Future<String> firstAsync() async {
  await Future.delayed(const Duration(seconds: 2));
  return "111";
}

Future<String> secondAsync() async {
  // 如果沒有 await，會直接回傳 222
  await Future.delayed(const Duration(seconds: 2));
  return "222";
}

Future<String> thirdAsync() async {
  await Future.delayed(const Duration(seconds: 2));
  return "333";
}
