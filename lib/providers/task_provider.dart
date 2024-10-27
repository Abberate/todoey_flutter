import 'package:flutter/cupertino.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskProvider extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Aller au boulot', isDone: false),
    Task(name: 'Faire un bon code', isDone: false),
    Task(name: 'Finir et faire un bilan', isDone: false),
    Task(name: 'Aller à IAT', isDone: false),
  ];

  int get taskCount{
    return tasks.length;
  }

  void changeTaskStatut(Task theTask){
   theTask.toggleDone();
    notifyListeners();
  }

  void addTask(String newTask) async {
    tasks.add(Task(name: newTask, isDone: false));
    notifyListeners();
  }

}