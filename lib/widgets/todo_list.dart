// flutter and ui libraries
import 'package:flutter/material.dart';
// amplify models that should have been generated for you
import 'package:todos/models/todo.dart';
// presentational widgets
import 'todo_item.dart';

class TodosList extends StatelessWidget {
  final List<Todo> todos;

  const TodosList({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return todos.isNotEmpty
        ? ListView(
            padding: const EdgeInsets.all(8),
            children: todos.map((todo) => TodoItem(todo: todo)).toList(),
          )
        : const Center(child: Text('Tap button below to add a todo!'));
  }
}
