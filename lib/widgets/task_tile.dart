import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isCheck;
  final ValueChanged<bool?>?  checkboxVoidCallback;

  const TaskTile({super.key, required this.taskTitle ,required this.isCheck, required this.checkboxVoidCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle, style: TextStyle(decoration: isCheck ? TextDecoration.lineThrough : TextDecoration.none),),
      trailing: Checkbox(
          value: isCheck,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxVoidCallback,
      )
    );
  }
}



