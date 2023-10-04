// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_example.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uncompletedTodosCountHash() =>
    r'4e69e632a897345c857cbb85ea7f69756c37fd1c';

/// The number of uncompleted todos
///
/// By using [Provider], this value is cached, making it performant.\
/// Even multiple widgets try to read the number of uncompleted todos,
/// the value will be computed only once (until the todo-list changes).
///
/// This will also optimise unneeded rebuilds if the todo-list changes, but the
/// number of uncompleted todos doesn't (such as when editing a todo).
///
///
/// Copied from [uncompletedTodosCount].
@ProviderFor(uncompletedTodosCount)
final uncompletedTodosCountProvider = AutoDisposeProvider<int>.internal(
  uncompletedTodosCount,
  name: r'uncompletedTodosCountProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$uncompletedTodosCountHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UncompletedTodosCountRef = AutoDisposeProviderRef<int>;
String _$filteredTodosHash() => r'a93f021fedb49cbb62f406dc70e7bf8e574b2d63';

/// The list of todos after applying of [todoListFilter].
///
/// This too uses [Provider], to avoid recomputing the filtered list unless either
/// the filter of or the todo-list updates.
///
///
///
///
/// Copied from [filteredTodos].
@ProviderFor(filteredTodos)
final filteredTodosProvider = AutoDisposeProvider<List<Todo>>.internal(
  filteredTodos,
  name: r'filteredTodosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$filteredTodosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FilteredTodosRef = AutoDisposeProviderRef<List<Todo>>;
String _$todosFilterHash() => r'0c941ab092e83283537760363e79a7bb0b9aa66a';

/// The currently active filter.
///
/// We use [StateProvider] here as there is no fancy logic behind manipulating
/// the value since it's just enum.
///
///
/// Copied from [TodosFilter].
@ProviderFor(TodosFilter)
final todosFilterProvider =
    AutoDisposeNotifierProvider<TodosFilter, TodoListFilter>.internal(
  TodosFilter.new,
  name: r'todosFilterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todosFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodosFilter = AutoDisposeNotifier<TodoListFilter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter
