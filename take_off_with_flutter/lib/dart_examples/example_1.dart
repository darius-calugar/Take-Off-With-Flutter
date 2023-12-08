/// Example 1
///
/// Simple OOP

abstract class Animal {
  final String name;

  Animal(this.name);
}

class Dog extends Animal {
  Dog(super.name);
}

class Cat extends Animal {
  final bool isAsleep;

  Cat(super.name, {this.isAsleep = false});
}

void main() {
  final Animal simon = Dog('Simon');
  final Animal manny = Cat('Manny');
  final Animal bingo = Cat('Bingo', isAsleep: false);
  final Animal geoff = Cat('Geoff', isAsleep: true);

  print(simon.runtimeType);
  print(manny.runtimeType);
  print(bingo.runtimeType);
  print(geoff.runtimeType);
}
