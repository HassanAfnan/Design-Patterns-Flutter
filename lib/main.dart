import 'package:flutter/material.dart';
import 'package:flutterdesignpatterns/design-patterns/mvc-pattern/controllers/task_list_controller.dart';
import 'package:flutterdesignpatterns/design-patterns/mvc-pattern/views/task_list_view.dart';
import 'package:flutterdesignpatterns/screens/builder-screen.dart';
import 'package:flutterdesignpatterns/screens/factory-screen.dart';
import 'package:flutterdesignpatterns/screens/singleton-screen.dart';

import 'design-patterns/mvp-pattern/views/home_contract_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TaskListController controller = TaskListController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Pattern Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // For MVC
      //home: TaskListView(controller: controller,),
      home: Home(),
    );
  }
}

