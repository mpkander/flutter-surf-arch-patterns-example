import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/mvi/model/model.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ReduxCounterScreen extends StatelessWidget {
  const ReduxCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StoreConnector<CounterState, String>(
              converter: (store) => store.state.counter.toString(),
              builder: (context, counter) => Text(
                counter,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        children: [
          StoreConnector<CounterState, VoidCallback>(
            converter: (store) => () => store.dispatch(Increment()),
            builder: (context, callback) => FloatingActionButton(
              onPressed: callback,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
          const SizedBox(height: 8),
          StoreConnector<CounterState, VoidCallback>(
            converter: (store) => () => store.dispatch(Decrement()),
            builder: (context, callback) => FloatingActionButton(
              onPressed: callback,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
