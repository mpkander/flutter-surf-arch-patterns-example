import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/mvp/model/model_impl.dart';
import 'package:flutter_arch_examples/mvp/presenter/presenter_impl.dart';
import 'package:flutter_arch_examples/mvp/view/screen.dart';

class MvpCounterEntry extends StatelessWidget {
  const MvpCounterEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Init model with initial value.
    final model = CounterModelImpl(0);

    // Inject model.
    final presenter = CounterPresenterImpl(model);

    // Inject presenter.
    return MvpCounterScreen(
      presenter: presenter,
    );
  }
}
