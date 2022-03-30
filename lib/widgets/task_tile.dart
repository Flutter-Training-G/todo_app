import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String name;
  final bool isDone;
  final void Function(bool?) checkBoxCallBack;
  final void Function()? deleteTaskCallBack;

  TaskTile({required this.isDone, required this.name, required this.checkBoxCallBack, required this.deleteTaskCallBack,});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration: isDone
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      onLongPress: deleteTaskCallBack,
      trailing: Checkbox(
        value: isDone,
        onChanged: checkBoxCallBack
      ),
    );
  }
}
