void main(List<String> args) {
  // https://copychar.cc/
  String s = '😭';
  print(s.length);
  print(s.runes);

  String sss = "𠆤";
  print(sss.codeUnits);
  print(sss.codeUnits.length);
  print(sss.codeUnitAt(1));

  // Runes r = Runes('\u{1f596} \u6211'); // 剛好4位時，可不用花括號
  Runes r = Runes('\u7479');
  print(String.fromCharCodes(r));
}