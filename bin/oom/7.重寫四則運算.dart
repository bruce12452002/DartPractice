main() {
  Xy xy1 = Xy(2, 3);
  Xy xy2 = Xy(4, 5);
  Xy plus = xy1 + xy2;
  Xy subtract = xy1 - xy2;
  Xy multiply = xy1 * xy2;
  Xy divide1 = xy1 / xy2;
  Xy divide2 = xy1 ~/ xy2;
  Xy percent = xy1 % xy2;
  print("${plus.x} ${plus.y}");
  print("${subtract.x} ${subtract.y}");
  print("${multiply.x} ${multiply.y}");
  print([divide1.x, divide1.y]);
  print([divide2.x, divide2.y]);
  print([percent.x, percent.y]);
}

class Xy {
  late final num x, y;

  Xy(this.x, this.y);

  Xy operator +(Xy xy) => Xy(x + xy.x, y + xy.y);

  Xy operator -(Xy xy) => Xy(x - xy.x, y - xy.y);

  Xy operator *(Xy xy) => Xy(x * xy.x, y * xy.y);

  Xy operator /(Xy xy) => Xy(x / xy.x, y / xy.y); // 變數型態 double 才行，所以用 num 來接

  Xy operator ~/(Xy xy) => Xy(x ~/ xy.x, y ~/ xy.y); // 變數型態 int 才行，所以用 num 來接

  Xy operator %(Xy xy) => Xy(x % xy.x, y % xy.y);
}
