import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<CounterDecrementedEvent>(_onDecremented);
    on<CounterIncrementedEvent>(_onIncremented);
  }

  FutureOr<void> _onDecremented(
    CounterDecrementedEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(CounterState(
      counter: state.counter - event.value,
    ));
  }

  void _onIncremented(
    CounterIncrementedEvent event,
    Emitter<CounterState> emit,
  ) {
    emit(CounterState(
      counter: state.counter + event.value,
    ));
  }
}
