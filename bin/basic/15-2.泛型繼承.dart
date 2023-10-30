main() {
  Other<Papa>();
  Other<Me>();
  Other<Son>();
}

class Other<T extends Papa> {}

class Papa {}

class Me extends Papa {}

class Son extends Me {}
