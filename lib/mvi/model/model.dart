import 'package:flutter/foundation.dart';

abstract interface class CounterModel {
  void dispatch(CounterIntent intent);
  ValueListenable<CounterState> get state;
}

sealed class CounterIntent {}

class Increment extends CounterIntent {}

class Decrement extends CounterIntent {}

class CounterState {
  final int counter;

  CounterState(this.counter);
}
