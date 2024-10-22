import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Faire du café'),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}