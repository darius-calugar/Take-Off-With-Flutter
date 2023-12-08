/// Example 2
///
/// Advanced OOP

abstract class Animal {
  final String name;

  Animal(this.name);
}

abstract class CanTalk {
  String get phrase;
}

class Dog extends Animal implements CanTalk {
  Dog(super.name);

  @override
  String get phrase => 'Woof';
}

class Cat extends Animal implements CanTalk {
  final bool isAsleep;

  Cat(super.name, {this.isAsleep = false});

  @override
  String get phrase => isAsleep ? 'Purr' : 'Meow';
}

void talk(CanTalk talking) {
  print('"${talking.phrase}"');
}

void main() {
  final simon = Dog('Simon');
  final manny = Cat('Manny');
  final bingo = Cat('Bingo', isAsleep: false);
  final geoff = Cat('Geoff', isAsleep: true);

  talk(simon);
  talk(manny);
  talk(bingo);
  talk(geoff);
}
