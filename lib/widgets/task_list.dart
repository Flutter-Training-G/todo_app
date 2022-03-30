import 'package:flutter/material.dart';
import 'package:todo_application/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_application/models/task_model.dart';
import 'package:todo_application/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var task = context.watch<TaskModel>().tasks[index];
        return TaskTile(
          name: task.name,
          isDone: task.isDone,
          checkBoxCallBack: (value) {
            context.read<TaskModel>().checkTask(task);
          },
          deleteTaskCallBack: () {
            context.read<TaskModel>().deleteTask(task);
          },
        );
      },
      itemCount: context.watch<TaskModel>().tasks.length,
    );
  }
}
