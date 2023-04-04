

import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  final List<Task> _tasks=[
    Task(name: 'first todo'),
    Task(name: 'second todo')
  ];
  int get taskCount{
     return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks{
  return UnmodifiableListView(_tasks);
  }

  void addTaskMethod(taskText) {
    _tasks.add(Task(name: taskText));
    notifyListeners();
  }

  void updateTaskState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
   _tasks.removeAt(index);
   notifyListeners();
  }
 }