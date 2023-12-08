/// Example 3
///
/// Compile-time evaluation

abstract class Animal {
  final String name;

  const Animal(this.name);
}

abstract class CanTalk {
  String get phrase;
}

class Dog extends Animal implements CanTalk {
  const Dog(super.name);

  @override
  String get phrase => 'Woof';
}

class Cat extends Animal implements CanTalk {
  final bool isAsleep;

  const Cat(super.name, {this.isAsleep = false});

  @override
  String get phrase => isAsleep ? 'Purr' : 'Meow';
}

void talk(CanTalk talking) {
  print(talking.phrase);
}

void main() {
  const simon = Dog('Simon');
  const manny = Cat('Manny');
  const bingo = Cat('Bingo', isAsleep: false);
  const geoff = Cat('Geoff', isAsleep: true);

  talk(simon);
  talk(manny);
  talk(bingo);
  talk(geoff);
}
