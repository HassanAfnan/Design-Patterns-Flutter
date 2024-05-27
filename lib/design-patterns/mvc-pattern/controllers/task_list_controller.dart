import '../model/task_model.dart';

class TaskListController{
  late List<Task> tasks = [
    Task("Task 1",false),
    Task("Task 2",false),
    Task("Task 2",false),
  ];

  void toggleTaskItemCompleted(index){
     tasks[index].completed = !tasks[index].completed;
  }
}