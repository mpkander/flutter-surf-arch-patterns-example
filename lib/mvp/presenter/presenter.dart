import 'package:flutter_arch_examples/mvp/view/view.dart';

/// The P in MVP
///
/// This is the presenter interface. It defines the methods that the presenter
/// will implement. The presenter is responsible for handling the business logic
/// of the application. It will interact with the model to get and set data.
abstract interface class CounterPresenter {
  int get counter;
  void incrementCounter();
  void decrementCounter();

  /// This is necessary to bind the view to the presenter.
  ///
  /// This is the only way to inject the view into the presenter bacause
  /// the presenter will init before the view.
  void bindView(CounterView view);
}
