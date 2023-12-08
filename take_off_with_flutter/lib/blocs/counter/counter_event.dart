part of 'counter_bloc.dart';

sealed class CounterEvent {}

class CounterIncrementedEvent extends CounterEvent {
  final int value;

  CounterIncrementedEvent({
    required this.value,
  });
}

class CounterDecrementedEvent extends CounterEvent {
  final int value;

  CounterDecrementedEvent({
    required this.value,
  });
}
