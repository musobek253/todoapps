import 'package:flutter/material.dart';
import 'package:todoapps/widget/reja_list.dart';

import '../models/reja_model.dart';

class ListTd extends StatelessWidget {
  // const rejalar({Key? key}) : super(key: key);
  final List<RejaModel> rejalar;
  final Function bajarlididebbelgila;
  final Function deletedTodo;

  ListTd(this.rejalar, this.bajarlididebbelgila, this.deletedTodo);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (ctx, index) {
        return reja_list(rejalar[index],bajarlididebbelgila,deletedTodo);
      },
        itemCount: rejalar.length,
      ),
    );
  }
}

