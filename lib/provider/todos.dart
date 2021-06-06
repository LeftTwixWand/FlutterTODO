import 'package:effective_time/model/todo.dart';
import 'package:flutter/cupertino.dart';

class TodosProvider extends ChangeNotifier {
  List<Todo> _todos = [
    // Todo(
    //     createdTime: DateTime.now(),
    //     title: 'Todo1',
    //     description: 'description1'),
    // Todo(
    //     createdTime: DateTime.now(),
    //     title: 'Todo2',
    //     description: '''description2
    //     description2'''),
    // Todo(
    //     createdTime: DateTime.now(),
    //     title: 'Todo3',
    //     description: '''description3description3'''),
    // Todo(
    //     createdTime: DateTime.now(),
    //     title: 'Todo4',
    //     description: '''description4
    //     description4'''),
  ];

  List<Todo> get todos => _todos.where((todo) => todo.isDone == false).toList();
  List<Todo> get completed => _todos.where((todo) => todo.isDone).toList();

  addTodo(Todo todo) {
    _todos.add(todo);

    notifyListeners();
  }

  removeTodo(Todo todo) {
    _todos.remove(todo);

    notifyListeners();
  }

  bool toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();

    return todo.isDone;
  }
}
