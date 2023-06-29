import 'package:flutter_arch_examples/redux/model.dart';

CounterState counterReducer(CounterState state, action) => switch (action) {
      Increment() => CounterState(state.count + 1),
      Decrement() => CounterState(state.count - 1),
      _ => state,
    };
