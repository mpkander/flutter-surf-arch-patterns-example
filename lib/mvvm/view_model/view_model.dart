import 'package:flutter/foundation.dart';

/// The VM in MVVM.
///
/// This is the view model interface.
///
/// ViewModel doesn't know about the view and interacts only
/// with the model.
abstract interface class CounterViewModel {
  /// We just say to view: "Hey, update your counter!"
  ValueListenable<int> get counter;

  void incrementCounter();
  void decrementCounter();
}
