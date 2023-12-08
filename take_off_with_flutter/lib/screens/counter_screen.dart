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
            heroTag: 'minus_button',
            onPressed: () => _onDecrementPressed(context),
            child: const Text(
              '-1',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          FloatingActionButton(
            heroTag: 'add_button',
            onPressed: () => _onIncrementPressed(context),
            child: const Text(
              '+2',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          '${counterBloc.state.counter}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void _onDecrementPressed(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();
    counterBloc.add(CounterDecrementedEvent(value: 1));
  }

  void _onIncrementPressed(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();
    counterBloc.add(CounterIncrementedEvent(value: 2));
  }
}
