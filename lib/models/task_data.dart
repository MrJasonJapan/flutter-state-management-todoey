import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Obisnack'),
    Task(name: 'Akiki Pasta'),
    Task(name: 'Pizz'),
  ];

  int get taskCount {
    return tasks.length;
  }

  // void changeTaskData(List<Task> newTasks) {
  //   tasks = newTasks;
  //   notifyListeners();
  // }
}
