import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Modal extends StatefulWidget {
  final Function todoadd;

 Modal( this.todoadd);



  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> {

  // const modal({Key? key}) : super(key: key);

  DateTime? _addtodotime;
  final modeltextXontroller = TextEditingController();

  void selectModaldate(BuildContext context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2024))
        .then((tanlangankun) => {
      if (tanlangankun != null)
        {
          setState(() {
            _addtodotime = tanlangankun;
          })
        }
    });
  }
  void submit(){
    if(modeltextXontroller.text.isEmpty||_addtodotime == null){
      return;
    }
    widget.todoadd(modeltextXontroller.text,_addtodotime);
  }
  void notmodel(){
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "reja kiriting"),
              controller: modeltextXontroller,
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_addtodotime == null ?"Reja kuni tanlanmagan.." : "${DateFormat("EEEE, d MMMM, yyy").format(_addtodotime!)}"),
                  TextButton(
                      onPressed: () {
                        selectModaldate(context);
                      },
                      child: Text("KUNNI TANLANG")),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: () {notmodel();}, child: Text("Bekor Qilish")),
                ElevatedButton(onPressed: () {
                  submit();
                }, child: Text("Saqlash")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}