/// Example 4
///
/// Sound null safety

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
  final Mood? mood;

  const Cat(super.name, {this.isAsleep = false, this.mood});

  @override
  String get phrase {
    final sound = isAsleep ? 'Purr' : 'Meow';
    final moodText = switch (mood) {
      Mood.angry => '*angrily*',
      Mood.sad => '*sadly*',
      null => '',
    };
    return '$sound $moodText';
  }
}

enum Mood {
  angry,
  sad,
}

void talk(CanTalk talking) {
  print(talking.phrase);
}

void main() {
  const simon = Dog('Simon');
  const manny = Cat('Manny', mood: Mood.angry);
  const bingo = Cat('Bingo', isAsleep: false, mood: Mood.sad);
  const geoff = Cat('Geoff', isAsleep: true);

  talk(simon);
  talk(manny);
  talk(bingo);
  talk(geoff);
}
