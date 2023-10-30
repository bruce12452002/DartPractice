main() {
  Other<Papa>();
  Other<Me>();
  Other<Son>();
}

/// 沒有 T super Xxx
class Other<T extends Papa> {}

class Papa {}

class Me extends Papa {}

class Son extends Me {}
