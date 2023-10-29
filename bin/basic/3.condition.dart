void main(List<String> args) {
  int o = 1;
  switch (o) {
    case 1:
      print('11'); // 不需要 break
    case 2:
      print('22');
    default:
      print('default');
  }

  int x = 1;
  switch (x) {
    case 1:
      print('111');
      continue xxx;

    case 2:
      print('222');

    xxx:
    case 5:
      print('555');

    default:
      print('end');
  }

  // if-else 和 java 一樣
}
