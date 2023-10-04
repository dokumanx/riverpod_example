import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter.g.dart';

// @Riverpod(keepAlive: true)
@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    // Initial State
    return 0;
  }

  /// You can mutate [state] without returning a new state
  void increment() {
    state++;
  }
}
