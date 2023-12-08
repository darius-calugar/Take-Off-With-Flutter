import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({
    super.key,
  });

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddPressed,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: _onToShowcasePressed,
              child: const Text('Go to showcase'),
            ),
          ],
        ),
      ),
    );
  }

  void _onAddPressed() {
    setState(() {
      counter++;
    });
  }

  void _onToShowcasePressed() {
    final navigator = Navigator.of(context);
    navigator.pushNamed('/showcase');
  }
}
