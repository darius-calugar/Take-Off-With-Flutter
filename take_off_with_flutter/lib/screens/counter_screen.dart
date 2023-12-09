import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:take_off_with_flutter/blocs/counter/counter_bloc.dart';
import 'package:take_off_with_flutter/widgets/navigation_drawer.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final counterBloc = context.watch<CounterBloc>();

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text(
          'Counter',
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'minus_2',
            onPressed: () => _onDecrementPressed(context, 2),
            child: const Text('-2'),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            heroTag: 'minus_1',
            onPressed: () => _onDecrementPressed(context, 1),
            child: const Text('-1'),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            heroTag: 'add_1',
            onPressed: () => _onIncrementPressed(context, 1),
            child: const Text('+1'),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            heroTag: 'add_2',
            onPressed: () => _onIncrementPressed(context, 2),
            child: const Text('+2'),
          ),
        ],
      ),
      body: Center(
        child: SizedBox.square(
          dimension: 50 + max(0, counterBloc.state.counter).toDouble(),
          child: Material(
            color: theme.colorScheme.primaryContainer,
            shape: const CircleBorder(),
            child: Center(
              child: Text(
                '${counterBloc.state.counter}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onDecrementPressed(BuildContext context, int value) {
    final counterBloc = context.read<CounterBloc>();
    counterBloc.add(CounterDecrementedEvent(value: value));
  }

  void _onIncrementPressed(BuildContext context, int value) {
    final counterBloc = context.read<CounterBloc>();
    counterBloc.add(CounterIncrementedEvent(value: value));
  }
}
