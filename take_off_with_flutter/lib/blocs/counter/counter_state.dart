part of 'counter_bloc.dart';

class CounterState {
  final int counter;

  CounterState({
    required this.counter,
  });

  CounterState.initial() : counter = 0;
}
