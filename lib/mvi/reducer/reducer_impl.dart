import 'package:flutter_arch_examples/mvi/model/model.dart';
import 'package:flutter_arch_examples/mvi/reducer/reducer.dart';

class CounterReducerImpl implements CounterReducer {
  @override
  CounterState reduce(CounterState state, CounterIntent intent) => switch (intent) {
        Increment() => CounterState(state.counter + 1),
        Decrement() => CounterState(state.counter - 1),
      };
}
