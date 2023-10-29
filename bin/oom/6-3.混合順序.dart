main() {
  Me1 m = Me1();
}

/// 本來如下的註解是可以的
// class Person {}
// mixin Walk on Person {}
// mixin Fly on Person {}
// class Me1 extends Person with Walk, Fly {}

class Person {}

mixin Walk on Person {}

/// on 後面也可以是其他的 mixin
/// 先會走才能飛
mixin Fly on Walk, Person {}

class Me1 extends Person with Walk, Fly {} // 必需先會走才能飛

// class Me2 extends Person with Fly, Walk {} // 飛之前要先會走，所以報錯
