import 'package:flutter_arch_examples/mvp/model/model.dart';

/// An implementation of the model.
class CounterModelImpl implements CounterModel {
  CounterModelImpl(this._counter);

  int _counter = 0;

  @override
  int get counter => _counter;

  @override
  void decrementCounter() {
    _counter--;
  }

  @override
  void incrementCounter() {
    _counter++;
  }
}
