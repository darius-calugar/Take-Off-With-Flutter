/// Example 2
///
/// Compile-time evaluation

abstract class Animal {
  final String name;

  const Animal(this.name);
}

mixin TalkingAnimalMixin on Animal {
  void talk() => print('$name: $phrase');

  String get phrase;
}

class Dog extends Animal with TalkingAnimalMixin {
  const Dog(super.name);

  @override
  String get phrase => 'Woof';
}

class Cat extends Animal with TalkingAnimalMixin {
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
