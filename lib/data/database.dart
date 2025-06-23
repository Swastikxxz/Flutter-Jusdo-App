import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //Running this method if this is first time opening the app
  void createInitData() {
    todoList = [
      ["Default task 1", false],
      ["Default task 2", false],
    ];
  }

  //load the data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
//  //List of todo tasks
//   List todoList = [
//     ["make stuff", false],
//     ["go to gyme", false],
//   ];