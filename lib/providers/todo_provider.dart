import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/model/todo.dart';

List<Todo> todos = [
  Todo(datetime: DateTime.now().toString(), label: 'Watching Movie'),
  Todo(datetime: DateTime.now().toString(), label: 'Playing game '),
  Todo(datetime: DateTime.now().toString(), label: 'Watching Movie'),
  Todo(datetime: DateTime.now().toString(), label: 'Watching Movie'),
];

final todoProvider = StateNotifierProvider<TodoProvider, List<Todo>>(
    (ref) => TodoProvider(todos));

class TodoProvider extends StateNotifier<List<Todo>> {
  TodoProvider(super.state);

  void addTodo(Todo todo) {
    state = [...state, todo];
  }
}
