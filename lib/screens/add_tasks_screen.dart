import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {
  final Function addTaskcallback;
  AddTasksScreen(this.addTaskcallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              autocorrect: true,
              textAlign: TextAlign.center,
              onChanged: (newtask) {
                newTaskTitle = newtask;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                "ADD",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                addTaskcallback(newTaskTitle);
                //Add task: add task to the list
              },
            )
          ],
        ),
      ),
    );
  }
}
