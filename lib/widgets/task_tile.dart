import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String name;
  final bool isDone;
  final Function(bool?) checkBoxCallBack;

  TaskTile({required this.isDone, required this.name, required this.checkBoxCallBack});
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.name,
        style: TextStyle(
            decoration: widget.isDone
                ? TextDecoration.lineThrough
                : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: widget.isDone,
        onChanged: widget.checkBoxCallBack
      ),
    );
  }
}
