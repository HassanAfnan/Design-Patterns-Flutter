import 'package:flutter/material.dart';
import 'package:flutterdesignpatterns/design-patterns/mvc-pattern/controllers/task_list_controller.dart';

class TaskListView extends StatefulWidget {
  final TaskListController controller;
  const TaskListView({super.key, required this.controller});

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Model View Controller"),
      ),
      body: ListView.builder(
          itemCount: widget.controller.tasks.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(widget.controller.tasks[index].title),
              trailing: IconButton(
                icon: widget.controller.tasks[index].completed == true ?
                  Icon(Icons.check_circle, color: Colors.green,) :
                  Icon(Icons.check_circle_outlined, color: Colors.grey,),
                onPressed: (){
                  widget.controller.toggleTaskItemCompleted(index);
                  setState(() {

                  });
                },
              ),
            );
          }
      ),
    );
  }
}
