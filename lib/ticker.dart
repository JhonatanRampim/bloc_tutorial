class Ticker {
  const Ticker();
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) {
      int decreaseRate = x + (x * 1); // decreate minus 2 seconds for test
      return (ticks - decreaseRate - 1);
    }).take(ticks);
  }
}
