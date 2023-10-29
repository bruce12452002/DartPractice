void main(List<String> args) {
  // aaa(null);
  // bbb(5);
  // ccc(4);
  print(ddd(2));
}

int aaa([int? a]) {
  if (a == null) {
    // throw 'a is null';
    throw FormatException('a is null');
  }
  return a++;
}

/// catch 一有錯誤，就什麼都補獲
void bbb(int a) {
  if (a < 10) {
    try {
      print(a / 0); // Infinity，並不會報錯
      throw OutOfMemoryError();
    } catch (e) {
      print('xxx => $e');
    }
  }
}

/// on 為精確補獲，只有補獲到才會執行
void ccc(int a) {
  if (a < 10) {
    try {
      print(a / 0); // Infinity，並不會報錯
      throw OutOfMemoryError();
    } on FormatException {
      print("format exception");
      rethrow; // 可以再丟出去
    } on OutOfMemoryError {
      print("out of memory error");
    } catch (e) {
      print('xxx => $e');
    }
  }
}

/// 例外補獲有六種方式
/// finally 一定會執行
/// 如果有 return，return 也會執行，最後還是會執行 finally
///
/// try-finally
/// try-on
/// try-catch
/// try-on-finally
/// try-catch-finally
/// try-on-catch-finally
int ddd(int a) {
  int i = 0;
  // return ++i;
  try {
    return ++i;
  } on OutOfMemoryError {
    print("111");
    return 111;
  } catch (e) {
    print("222");
    return 222;
  } finally {
    print("333");
    return ++i;
  }
}
