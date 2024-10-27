import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/providers/task_provider.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});
 @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, value ,child) => Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 30.0,
                      )),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Todoey',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${value.taskCount} tâches',
                    style: const TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0))),
                child: TasksList(),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => AddTaskScreen(
                  addTaskCallback: (newTaskTitle) {
                    final taskRead = context.read<TaskProvider>();
                    taskRead.addTask(newTaskTitle);
                    Navigator.pop(context);
                  },
                ));
          },
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
