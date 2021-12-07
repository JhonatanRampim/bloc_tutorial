import 'package:mobx/mobx.dart';

part 'counter.g.dart';

// This is the class used by rest of your codebase
class Counter = _Counter with _$Counter;

// The store-class
abstract class _Counter with Store {
  @observable
  int value = 0;
  late ReactionDisposer _dispose;

  @action
  void increment() {
    value++;
  }

  @action
  decrement() {
    value--;
  }
}
