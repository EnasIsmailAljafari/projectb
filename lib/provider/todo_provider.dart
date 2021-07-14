import 'package:flutter/cupertino.dart';
import 'package:projectb/models/todo.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    Todo(
      createdTime: DateTime.now(),
      title: 'Playing',
      description: 'playing football ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'Studying',
      description: 'studying flutter ',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'walking',
    ),
    Todo(
      createdTime: DateTime.now(),
      title: 'eating',
    ),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
}
