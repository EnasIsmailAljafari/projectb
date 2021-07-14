import 'package:flutter/material.dart';
import 'package:projectb/provider/todo_provider.dart';
import 'package:projectb/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: Colors.purple,
            scaffoldBackgroundColor: Color(0xFFf6f5ee),
          ),
          home: HomePage(),
        ),
      );
}
