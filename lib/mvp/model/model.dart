/// The M in MVP.
///
/// This is the model interface. It defines the methods that the model will
/// implement. The model is responsible for storing the data of the application.
/// It will not interact with the view directly. It will only interact with the
/// presenter.
abstract interface class CounterModel {
  int get counter;
  void incrementCounter();
  void decrementCounter();
}
