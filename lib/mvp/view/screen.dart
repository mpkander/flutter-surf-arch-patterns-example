import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/mvp/presenter/presenter.dart';
import 'package:flutter_arch_examples/mvp/view/view.dart';

class MvpCounterScreen extends StatefulWidget {
  final CounterPresenter presenter;

  const MvpCounterScreen({super.key, required this.presenter});

  @override
  State<MvpCounterScreen> createState() => _MvpCounterScreenState();
}

/// Keep your attention on the `implements CounterView` below.
class _MvpCounterScreenState extends State<MvpCounterScreen>
    implements CounterView {
  late int _counter;

  @override
  void initState() {
    super.initState();

    // This is necessary to bind the view to the presenter.
    widget.presenter.bindView(this);

    // One truth: the presenter is the source of truth for the view.
    _counter = widget.presenter.counter;
  }

  @override
  void updateCounter() {
    setState(() {
      _counter = widget.presenter.counter;
    });
  }

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
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            onPressed: widget.presenter.incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: widget.presenter.decrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
