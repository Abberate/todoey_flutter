import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isCheck = false;

  void checkboxCallback(bool? checkboxState) {
    setState(() {
      isCheck = checkboxState ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Faire du café', style: TextStyle(decoration: isCheck ? TextDecoration.lineThrough : TextDecoration.none),),
      trailing: TaskCheckbox(checkBoxState: isCheck, toggleCheckboxState: checkboxCallback),
    );
  }
}


class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final ValueChanged<bool?>? toggleCheckboxState;
  const TaskCheckbox({super.key,  required this.checkBoxState,required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: toggleCheckboxState
    );
  }
}