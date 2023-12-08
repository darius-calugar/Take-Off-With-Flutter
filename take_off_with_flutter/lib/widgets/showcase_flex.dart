import 'package:flutter/material.dart';

class ShowcaseFlex extends StatelessWidget {
  const ShowcaseFlex({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'Flex',
            style: theme.textTheme.titleLarge,
          ),
        ),
        Row(
          children: [
            Container(
              color: Colors.purple[200],
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(16),
              child: const Text('Non-flexible'),
            ),
            Container(
              color: Colors.purple[200],
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(16),
              child: const Text('Non-flexible'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[200],
                margin: const EdgeInsets.all(1),
                padding: const EdgeInsets.all(16),
                child: const Text('Expanded (flex: 1)'),
              ),
            ),
            Container(
              color: Colors.purple[200],
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(16),
              child: const Text('Non-flexible'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[200],
                margin: const EdgeInsets.all(1),
                padding: const EdgeInsets.all(16),
                child: const Text('Expanded (flex: 1)'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red[200],
                margin: const EdgeInsets.all(1),
                padding: const EdgeInsets.all(16),
                child: const Text('Expanded (flex: 1)'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red[200],
                margin: const EdgeInsets.all(1),
                padding: const EdgeInsets.all(16),
                child: const Text('Expanded (flex: 1)'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red[200],
                margin: const EdgeInsets.all(1),
                padding: const EdgeInsets.all(16),
                child: const Text('Expanded (flex: 2)'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
