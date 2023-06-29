sealed class CounterAction {}

class Increment extends CounterAction {}

class Decrement extends CounterAction {}

class CounterState {
  final int count;

  CounterState(this.count);
}
