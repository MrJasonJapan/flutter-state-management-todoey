import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  final Function checkboxIndexCallback;

  TasksList({this.tasks, this.checkboxIndexCallback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              checkboxIndexCallback(index);
            });
      },
      itemCount: tasks.length,
    );
  }
}
