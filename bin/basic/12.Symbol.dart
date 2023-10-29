import 'dart:mirrors';

/// 反射用
void main(List<String> list) {
  Symbol symbol = new Symbol("dart.io");
  MirrorSystem ms = currentMirrorSystem();
  LibraryMirror lm = ms.findLibrary(symbol);
  lm.declarations.forEach((k, v) => print("$k=$v"));
}
