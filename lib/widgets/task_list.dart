import 'package:flutter/material.dart';
import 'package:todo_application/models/task.dart';
import 'package:todo_application/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  TaskList(this.tasks);
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var task = widget.tasks[index];
        return TaskTile(
          name: task.name,
          isDone: task.isDone,
          checkBoxCallBack: (value) {
            setState(() {
              task.toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
