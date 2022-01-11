import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'TaskTile.dart';
import 'package:todoey/states/TasksState.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          context.watch<TasksState>().tasks[index].title,
          context.watch<TasksState>().tasks[index].isDone,
          () {
            context
                .read<TasksState>()
                .updateTask(context.read<TasksState>().tasks[index]);
          },
          () {
            context
                .read<TasksState>()
                .deleteTask(context.read<TasksState>().tasks[index]);
          },
        );
      },
      itemCount: context.watch<TasksState>().tasksCount,
    );
  }
}
