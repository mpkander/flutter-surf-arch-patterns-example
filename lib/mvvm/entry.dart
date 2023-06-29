import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/mvvm/model/model_impl.dart';
import 'package:flutter_arch_examples/mvvm/view/screen.dart';
import 'package:flutter_arch_examples/mvvm/view_model/view_model_impl.dart';

class MvvmCounterEntry extends StatefulWidget {
  const MvvmCounterEntry({Key? key}) : super(key: key);

  @override
  State<MvvmCounterEntry> createState() => _MvvmCounterEntryState();
}

class _MvvmCounterEntryState extends State<MvvmCounterEntry> {
  late final CounterViewModelImpl _viewModel;
  late final CounterModelImpl _model;

  @override
  void initState() {
    super.initState();
    _model = CounterModelImpl(0);

    _viewModel = CounterViewModelImpl(_model);
  }

  @override
  Widget build(BuildContext context) {
    return MvvmCounterScreen(
      viewModel: _viewModel,
    );
  }

  @override
  void dispose() {
    /// Keep attention on this dispose method.
    _viewModel.dispose();
    super.dispose();
  }
}
