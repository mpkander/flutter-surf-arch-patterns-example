import 'package:flutter/material.dart';
import 'package:flutter_arch_examples/bloc/bloc.dart';
import 'package:flutter_arch_examples/bloc/screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounterEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const BlocCounterScreen(),
    );
  }
}
