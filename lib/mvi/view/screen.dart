import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/mvi/model/model.dart';

class MviCounterScreen extends StatelessWidget {
  final CounterModel model;

  const MviCounterScreen({super.key, required this.model});

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
            ValueListenableBuilder<CounterState>(
              valueListenable: model.state,
              builder: (context, state, child) => Text(
                state.counter.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            onPressed: () => model.dispatch(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => model.dispatch(Decrement()),
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
