import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/mvvm/view_model/view_model.dart';

class MvvmCounterScreen extends StatefulWidget {
  final CounterViewModel viewModel;

  const MvvmCounterScreen({Key? key, required this.viewModel})
      : super(key: key);

  @override
  State<MvvmCounterScreen> createState() => _MvvmCounterScreenState();
}

class _MvvmCounterScreenState extends State<MvvmCounterScreen> {
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

            // Bind view model to the view.
            ValueListenableBuilder<int>(
              valueListenable: widget.viewModel.counter,
              builder: (context, value, child) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            onPressed: widget.viewModel.incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: widget.viewModel.decrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
