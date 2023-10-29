main() {
  Animal? a1 = animalFactory('bird');
  Animal? a2 = animalFactory('cat');
  Animal? a3 = animalFactory('dog');
  print(a1.runtimeType);
  print(a2.runtimeType);
  print(a3.runtimeType);
}

Animal? animalFactory(String name) {
  switch (name) {
    case 'bird':
      return new Bird();
    case 'cat':
      return Cat();
    default:
      return null;
  }
}

abstract class Animal {}

class Bird extends Animal {}

class Cat extends Animal {}
