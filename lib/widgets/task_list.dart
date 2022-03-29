import 'package:flutter/material.dart';
import 'package:todo_application/models/task.dart';
import 'package:todo_application/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'Finish Homework'),
    Task(name: 'Finish Assesment'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var task = tasks[index];
        return TaskTile(name: task.name, isDone: task.isDone, checkBoxCallBack: (value) {
          setState(() {
            task.toggleDone();
          });
        },);
      },
      itemCount: tasks.length,
    );
  }
}
