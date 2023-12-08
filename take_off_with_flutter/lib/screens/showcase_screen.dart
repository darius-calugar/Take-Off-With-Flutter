import 'package:flutter/material.dart';
import 'package:take_off_with_flutter/widgets/navigation_drawer.dart';
import 'package:take_off_with_flutter/widgets/showcase_flex.dart';

class ShowcaseScreen extends StatelessWidget {
  const ShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Showcase'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ShowcaseFlex(),
        ],
      ),
    );
  }
}
