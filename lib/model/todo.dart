class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  DateTime createdTime = DateTime.now();
  String title = '';
  String id = '';
  String description = '';
  bool isDone = false;

  Todo({
    required this.createdTime,
    required this.title,
    this.description = '',
    this.id = '',
    this.isDone = false,
  });
}
