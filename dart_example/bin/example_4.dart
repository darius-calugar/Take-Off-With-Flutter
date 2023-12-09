abstract class Animal {
  final String name;

  const Animal(this.name);

  String get phrase;

  Future<void> talk() {
    print('$name: ...');
    return Future.delayed(
      Duration(seconds: 1),
      () => print('$name: "$phrase"'),
    );
  }
}

class Dog extends Animal {
  const Dog(super.name);

  @override
  String get phrase => 'Woof';
}

class Cat extends Animal {
  final bool isAsleep;
  final Mood? mood;

  const Cat(super.name, {this.isAsleep = false, this.mood});

  @override
  String get phrase {
    final sound = isAsleep ? 'Purr' : 'Meow';
    final moodText = switch (mood) {
      Mood.angry => '*angrily*',
      Mood.sad => '*sadly*',
      null => null,
    };
    if (moodText != null) {
      return '$sound $moodText';
    } else {
      return sound;
    }
  }
}

enum Mood {
  angry,
  sad,
}

void main() async {
  const simon = Dog('Simon');
  const manny = Cat('Manny', mood: Mood.angry);
  const bingo = Cat('Bingo', isAsleep: false, mood: Mood.sad);
  const geoff = Cat('Geoff', isAsleep: true);

  await simon.talk();
  manny.talk();
  bingo.talk();
  geoff.talk();
}
