import 'package:flutter/material.dart';
import 'package:take_off_with_flutter/flutter_examples/example_4/widgets/navigation_drawer.dart';

class ShowcaseScreen extends StatelessWidget {
  const ShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Showcase'),
      ),
    );
  }
}
