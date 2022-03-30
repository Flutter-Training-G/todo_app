import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_application/models/task.dart';

class TaskModel extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount => _tasks.length;

  void addTask(String taskTitle) {
    _tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void checkTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
