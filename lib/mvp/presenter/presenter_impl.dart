import 'package:flutter_arch_examples/mvp/model/model.dart';
import 'package:flutter_arch_examples/mvp/presenter/presenter.dart';
import 'package:flutter_arch_examples/mvp/view/view.dart';

class CounterPresenterImpl implements CounterPresenter {
  late final CounterView _view;
  final CounterModel _model;

  CounterPresenterImpl(this._model);

  @override
  int get counter => _model.counter;

  @override
  void decrementCounter() {
    _model.decrementCounter();
    _view.updateCounter();
  }

  @override
  void incrementCounter() {
    _model.incrementCounter();
    _view.updateCounter();
  }

  @override
  void bindView(CounterView view) {
    _view = view;
  }
} 
