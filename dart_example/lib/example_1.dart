abstract class Animal {
  final String name;

  Animal(this.name);

  String get phrase;

  void talk() {
    print('$name: "$phrase"');
  }
}

class Dog extends Animal {
  Dog(super.name);

  @override
  String get phrase => 'Woof';
}

class Cat extends Animal {
  final bool isAsleep;

  Cat(super.name, {this.isAsleep = false});

  @override
  String get phrase => isAsleep ? 'Purr' : 'Meow';
}

void main() {
  final simon = Dog('Simon');
  final manny = Cat('Manny');
  final bingo = Cat('Bingo', isAsleep: false);
  final geoff = Cat('Geoff', isAsleep: true);

  simon.talk();
  manny.talk();
  bingo.talk();
  geoff.talk();
}
