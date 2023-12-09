abstract class Animal {
  final String name;

  const Animal(this.name);

  String get phrase;

  void talk() {
    print('$name: "$phrase"');
  }
}

class Dog extends Animal {
  const Dog(super.name);

  @override
  String get phrase => 'Woof';
}

class Cat extends Animal {
  final bool isAsleep;

  const Cat(super.name, {this.isAsleep = false});

  @override
  String get phrase => isAsleep ? 'Purr' : 'Meow';
}

void main() {
  const simon = Dog('Simon');
  const manny = Cat('Manny');
  const bingo = Cat('Bingo', isAsleep: false);
  const geoff = Cat('Geoff', isAsleep: true);

  simon.talk();
  manny.talk();
  bingo.talk();
  geoff.talk();
}
