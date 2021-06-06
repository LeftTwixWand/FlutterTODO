import 'package:flutter/material.dart';

class TodoFormWidget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSavedTodo;

  TodoFormWidget({
    required Key key,
    this.title = '',
    this.description = '',
    required this.onChangedDescription,
    required this.onChangedTitle,
    required this.onSavedTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildTitle(),
            SizedBox(height: 8),
            buildDescription(),
          ],
        ),
      );

  Widget buildTitle() => TextFormField(
        initialValue: title,
        maxLines: 1,
        onChanged: onChangedTitle,
        validator: (title) {
          if (title == null) return null;
          if (title.isEmpty) return 'The title cannot be empty of null';
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Title',
        ),
      );

  Widget buildDescription() => TextFormField(
        initialValue: description,
        maxLines: 3,
        onChanged: onChangedDescription,
        validator: (title) {
          if (title == null) return null;
          if (title.isEmpty) return 'The description cannot be empty of null';
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: 'Description',
        ),
      );
}
