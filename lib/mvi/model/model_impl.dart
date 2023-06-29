import 'package:flutter/foundation.dart';
import 'package:flutter_arch_examples/mvi/model/model.dart';
import 'package:flutter_arch_examples/mvi/reducer/reducer.dart';

class CounterModelImpl implements CounterModel {
  final CounterReducer _reducer;

  @override
  final ValueNotifier<CounterState> state;

  CounterModelImpl(
    this._reducer, {
    required CounterState initialState,
  }) : state = ValueNotifier(initialState);

  @override
  void dispatch(CounterIntent intent) =>
      state.value = _reducer.reduce(state.value, intent);
}
