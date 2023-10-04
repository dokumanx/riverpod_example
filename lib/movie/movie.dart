import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie.g.dart';

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
