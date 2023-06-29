/// The V in MVP.
///
/// This is the view interface. It defines the methods that the view will
/// implement. The view is responsible for displaying the data of the application.
/// It will not interact with the model directly. It will only interact with the
/// presenter.
abstract interface class CounterView {
  /// We just say to view: "Hey, update your counter!"
  ///
  /// We don't pass any data to the view. The view will get the data from the
  /// presenter.
  void updateCounter();
}
