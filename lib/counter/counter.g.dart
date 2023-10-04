// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$moviesHash() => r'f4b3a0c42ce2dd5b8d4d35485ed647e95096c038';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [movies].
@ProviderFor(movies)
const moviesProvider = MoviesFamily();

/// See also [movies].
class MoviesFamily extends Family<AsyncValue<List<String>>> {
  /// See also [movies].
  const MoviesFamily();

  /// See also [movies].
  MoviesProvider call(
    Duration duration, {
    required String movieName,
  }) {
    return MoviesProvider(
      duration,
      movieName: movieName,
    );
  }

  @override
  MoviesProvider getProviderOverride(
    covariant MoviesProvider provider,
  ) {
    return call(
      provider.duration,
      movieName: provider.movieName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'moviesProvider';
}

/// See also [movies].
class MoviesProvider extends AutoDisposeFutureProvider<List<String>> {
  /// See also [movies].
  MoviesProvider(
    Duration duration, {
    required String movieName,
  }) : this._internal(
          (ref) => movies(
            ref as MoviesRef,
            duration,
            movieName: movieName,
          ),
          from: moviesProvider,
          name: r'moviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$moviesHash,
          dependencies: MoviesFamily._dependencies,
          allTransitiveDependencies: MoviesFamily._allTransitiveDependencies,
          duration: duration,
          movieName: movieName,
        );

  MoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.duration,
    required this.movieName,
  }) : super.internal();

  final Duration duration;
  final String movieName;

  @override
  Override overrideWith(
    FutureOr<List<String>> Function(MoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MoviesProvider._internal(
        (ref) => create(ref as MoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        duration: duration,
        movieName: movieName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<String>> createElement() {
    return _MoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MoviesProvider &&
        other.duration == duration &&
        other.movieName == movieName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, duration.hashCode);
    hash = _SystemHash.combine(hash, movieName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MoviesRef on AutoDisposeFutureProviderRef<List<String>> {
  /// The parameter `duration` of this provider.
  Duration get duration;

  /// The parameter `movieName` of this provider.
  String get movieName;
}

class _MoviesProviderElement
    extends AutoDisposeFutureProviderElement<List<String>> with MoviesRef {
  _MoviesProviderElement(super.provider);

  @override
  Duration get duration => (origin as MoviesProvider).duration;
  @override
  String get movieName => (origin as MoviesProvider).movieName;
}

String _$counterHash() => r'dae67e44133cfcea2b08ab5eace07d8554509bb8';

/// See also [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
