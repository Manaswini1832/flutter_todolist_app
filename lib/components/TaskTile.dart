import 'dart:ffi';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final VoidCallback toggleCheckboxState;
  final VoidCallback deleteTaskOnLongPress;

  TaskTile(this.taskTitle, this.isChecked, this.toggleCheckboxState,
      this.deleteTaskOnLongPress);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        deleteTaskOnLongPress();
      },
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 20.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (newValue) {
          toggleCheckboxState();
        },
      ),
    );
  }
}
