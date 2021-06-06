import 'package:effective_time/widget/todo_form_widget.dart';
import 'package:flutter/material.dart';

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
        content: Column(
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
              onSavedTodo: () {},
              description: description,
              key: this._formKey,
              title: title,
            ),
          ],
        ),
      );
}
