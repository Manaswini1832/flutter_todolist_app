import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/states/TasksState.dart';

class AddTaskScreen extends StatelessWidget {
  String newTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: 30.0,
            left: 30.0,
            right: 30.0,
          ),
          child: Column(
            children: [
              TextField(
                autofocus: true,
                onChanged: (newText) {
                  newTitle = newText;
                },
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        if (newTitle != '') {
                          context.read<TasksState>().addTask(newTitle);
                          Navigator.pop(context);
                        }
                      },
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 24,
                          ),
                          backgroundColor: Colors.lightBlueAccent,
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10.0,
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
