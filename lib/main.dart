import 'package:effective_time/page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Effective Time';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: Color(0xFFf6f5ee),
        ),
        home: HomePage(),
      );
}
