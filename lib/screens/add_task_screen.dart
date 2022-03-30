// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_application/models/task_model.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? taskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
          ),
          TextFormField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              taskTitle = value;
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (taskTitle != null) {
                context.read<TaskModel>().addTask(taskTitle!);
              }
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            child: Text(
              'Add',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
