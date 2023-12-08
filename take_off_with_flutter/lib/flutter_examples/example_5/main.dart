import 'package:flutter/material.dart';
import 'package:take_off_with_flutter/flutter_examples/example_5/screens/counter_screen.dart';
import 'package:take_off_with_flutter/flutter_examples/example_5/screens/showcase_screen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/counter',
      routes: {
        '/counter': (context) => const CounterScreen(),
        '/showcase': (context) => const ShowcaseScreen(),
      },
    ),
  );
}
