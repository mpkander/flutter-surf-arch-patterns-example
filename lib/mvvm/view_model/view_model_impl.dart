import 'package:flutter/foundation.dart';
import 'package:flutter_arch_examples/mvvm/model/model.dart';
import 'package:flutter_arch_examples/mvvm/view_model/view_model.dart';

class CounterViewModelImpl implements CounterViewModel {
  final CounterModel _model;

  CounterViewModelImpl(this._model);

  /// Init counter with the value from the model.
  @override
  late final ValueNotifier<int> counter = ValueNotifier(_model.counter);

  @override
  void decrementCounter() {
    _model.decrementCounter();
    counter.value = _model.counter;
  }

  @override
  void incrementCounter() {
    _model.incrementCounter();
    counter.value = _model.counter;
  }

  void dispose() {
    counter.dispose();
  }
}
