import 'package:effective_time/model/todo.dart';
import 'package:effective_time/provider/todos.dart';
import 'package:effective_time/widget/todo_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTodoDialogWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddTodoDialogWidgetState();
}

class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) => AlertDialog(
        content: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Todo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 8),
              TodoFormWidget(
                onChangedTitle: (title) => setState(() => this.title = title),
                onChangedDescription: (description) =>
                    setState(() => this.description = description),
                onSavedTodo: addTodo,
                description: description,
                title: title,
              ),
            ],
          ),
        ),
      );

  void addTodo() {
    final isValid = _formKey.currentState?.validate();

    if (isValid != null && !isValid) {
      return;
    } else {
      final todo = Todo(
        createdTime: DateTime.now(),
        title: title,
        id: DateTime.now().toString(),
        description: description,
      );

      final provider = Provider.of<TodosProvider>(context, listen: false);
      provider.addTodo(todo);

      Navigator.of(context).pop();
    }
  }
}
