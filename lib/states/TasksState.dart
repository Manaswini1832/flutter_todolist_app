import 'package:flutter/cupertino.dart';
import 'package:todoey/models/Task.dart';
import 'dart:collection';

class TasksState extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get tasksCount => _tasks.length;

  void addTask(newTaskTitle) {
    _tasks.add(
      Task(newTaskTitle, false),
    );
    // Navigator.pop(context);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
