import 'package:flutter/cupertino.dart';

class Task extends ChangeNotifier{
  Task({required this.name , required this.isDone});

  late String name;
  bool isDone = false;

  void toggleDone(){
    isDone = !isDone;
  }


}