import 'package:flutter/material.dart';
import 'package:todoapps/models/reja_model.dart';

class reja_list extends StatelessWidget {
  // const reja_list({Key? key}) : super(key: key);
  final RejaModel rejaModel;
  final Function bajarlididebbelgila;
  final Function deletedTodo;

  reja_list(this.rejaModel, this.bajarlididebbelgila, this.deletedTodo);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
          onPressed: () {
            bajarlididebbelgila(rejaModel.id);
          },
          icon: rejaModel.isdone
              ? const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                )
              : Icon(Icons.circle_outlined),
          color: Colors.red),
      title: Text("${rejaModel.name}",
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              decoration: rejaModel.isdone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              color: rejaModel.isdone ? Colors.green : Colors.black)),
      trailing: IconButton(
          onPressed: () {
            deletedTodo(rejaModel.id);
          },
          icon: const Icon(
            Icons.delete_forever_rounded,
            size: 20,
            color: Colors.redAccent,
          )),
    );
  }
}
