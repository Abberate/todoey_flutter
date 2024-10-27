import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/providers/task_provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context ,taskData , child){
      return  ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: taskData.tasks[index].name,
            isCheck:taskData.tasks[index].isDone,
            checkboxVoidCallback: (bool? checkboxState) {
              taskData.changeTaskStatut(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
