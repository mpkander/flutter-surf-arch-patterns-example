import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/redux/model.dart';
import 'package:flutter_arch_examples/redux/reducer.dart';
import 'package:flutter_arch_examples/redux/screen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ReduxCounterEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<CounterState>(
      store: Store<CounterState>(
        counterReducer,
        initialState: CounterState(0),
      ),
      child: const ReduxCounterScreen(),
    );
  }
}
