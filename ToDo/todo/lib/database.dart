import 'package:hive/hive.dart';

class ToDoDataBase {
  List ToDoList = [];
  final _myBox = Hive.box('myBox');
  void createInitialData() {
    ToDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    ToDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", ToDoList);
  }
}
