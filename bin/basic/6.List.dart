main() {
  // 如果一開始就塞不同類型，那之後就可塞不同類型
  // 但如果一開始只塞同一個類型，那之後只能塞相同的類型
  // 以上指的是用 var(編譯期錯)、Object(編譯期錯)、dynamic(執行期錯)
  // 用 List 是可以的
  // 巢狀時，只有 dynamic 和 List 可以取得
  List l1 = [
    1,
    2,
    3,
    [4, 5]
  ];
  l1.add("a");
  print(l1[3][0]);

  // var i = <String>["a", "b"]; // var 要限定裡面的型態可這樣用

  List l2 = List.filled(2, "a"); // 固定長度後，就不可以再變動陣列大小，但可以刪改查
  print(l2);
  l2[0] = "b";
  print(l2);

  // index 不會自動往上
  List<String> l3 = ["a", "b", "b", "c"];
  for (int i = 0; i < l3.length; i++) {
    l3.remove("b");
  }
  print(l3);

  // insert addAll insertAll

  // l1 += [4, 5];

  // indexOf remove removeAt sort

  // first last length isEmpty isNotEmpty reversed

  print('======== collection if ========');
  bool b = true;
  var myList = ['a', 'b'];
  if (b) {
    myList.add('c');
    myList.add('d');
  }

  // 以上可以簡化成下一行的寫法
  var myList2 = ['a', 'b', if (b) 'c', 'd'];
  print(myList);
  print(myList2);

  print('======== collection for ========');
  var myList3 = ['a', 'b'];
  var myList4 = ['c'];
  myList4.addAll(myList3);
  print(myList4);

  // 以上可簡化成下一行的寫法
  var myList5 = ['c', for (var i in myList3) i];
  print(myList5);

  // 如果想將迴圈裡的資料加點東西，可用字串配合$符號
  var myList6 = ['c', for (var i in myList3) '&$i'];
  print(myList6);

  print('======== while + list ========');
  final listIter = ['a', 'b', 'c'].iterator;
  while (listIter.moveNext()) {
    print(listIter.current);
  }

  print('======== while + for ========');
  for (var i in ['a', 'b', 'c']) {
    print(i);
  }

  // from 和 of 都是從別的地方抓來後，變成新的 List
  // 兩個差別在 from 的 Iterable 沒有泛型
  // 如果使用 of 會有更好的效能
  List ll1 = List.from(myList2);
  List ll2 = List.of(myList2);
}
