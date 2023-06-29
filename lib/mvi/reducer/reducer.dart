import 'package:flutter_arch_examples/mvi/model/model.dart';

abstract interface class CounterReducer {
  CounterState reduce(CounterState state, CounterIntent intent);
}
