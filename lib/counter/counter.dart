import 'dart:async';

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

@riverpod
Future<List<String>> movies(
  MoviesRef ref,
  Duration duration, {
  required String movieName,
}) async {
  final link = ref.keepAlive();
  final timer = Timer(const Duration(seconds: 5), () {
    link.close();
  });

  ref.onDispose(() {
    timer.cancel();
  });

  return ['a', 'b', 'c'];
}
