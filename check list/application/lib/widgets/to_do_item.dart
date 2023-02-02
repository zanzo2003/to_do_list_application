import 'package:application/constants/colours.dart';
import 'package:application/models/ToDo.dart';
import 'package:flutter/material.dart';

class ToDoItems extends StatelessWidget {
  final ToDO todo;
  const ToDoItems({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(bottom: 20), child: _ToDoItem());
  }

  Widget _ToDoItem() {
    return (ListTile(
      onTap: () {
        print("check box clicked!!");
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      tileColor: Colors.white,
      leading: const Icon(Icons.check_box, color: tdBlue),
      title:Text(todo.todoText!,
        style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: TextDecoration.lineThrough),
      ),
      trailing: Container(
        height: 35,
        width: 35,
        decoration:
            BoxDecoration(color: tdRed, borderRadius: BorderRadius.circular(5)),
        child: IconButton(
          color: Colors.white,
          iconSize: 18,
          icon: const Icon(Icons.delete),
          onPressed: () {
            print("Delete button pressed!!");
          },
        ),
      ),
    ));
  }
}
