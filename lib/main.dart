import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todoapps/widget/modal.dart';
import 'package:todoapps/widget/rejalar.dart';
import 'package:todoapps/widget/rejalar_sanasi.dart';
import 'package:todoapps/widget/rejalar_soni.dart';
import 'models/reja_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: Rejalar(),
    );
  }
}

class Rejalar extends StatefulWidget {
  @override
  State<Rejalar> createState() => _RejalarState();
}

class _RejalarState extends State<Rejalar> {
  // const Rejalar({Key? key}) : super(key: key);
  DateTime _the_appointed_day = DateTime.now();
  ListTodo _rejalar = ListTodo();

  void _slectDate(BuildContext context) {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime(2024))
        .then((selected_day) {
      if (selected_day != null) {
        setState(() {
          _the_appointed_day = selected_day;
        });
      }
    });
  }

  void _nextday() {
    setState(() {
      _the_appointed_day = DateTime(_the_appointed_day.year,
          _the_appointed_day.month, _the_appointed_day.day + 1);
    });
  }

  void _lastday() {
    setState(() {
      _the_appointed_day = DateTime(_the_appointed_day.year,
          _the_appointed_day.month, _the_appointed_day.day - 1);
    });
  }

  void _bajarlididebbelgila(String rejamodelId) {
    setState(() {
      _rejalar.listTodo
          .firstWhere((rejamodel) => rejamodel.id == rejamodelId)
          .isdonemodel();
    });
  }

  int get _bajarilganlarsoni {
    return _rejalar.listTodo.where((element) => element.isdone).length;
  }

  int get _bajarilmaganlar {
    return _rejalar.listTodo.length;
  }

  void deletedTodo(String rejamodelId) {
    setState(() {
      _rejalar.listTodo.removeWhere((rejamodel) => rejamodel.id == rejamodelId);
    });
  }
  void todoadd(String name,DateTime  day){
    setState(() {
      _rejalar.addTodo(name, day);
    });
    Navigator.of(context).pop();
  }



  void _floutbattinopenmodel(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (cnx) => Modal(todoadd),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Column(
        children: [
          Rejalar_sanasi(_slectDate, _the_appointed_day, _nextday, _lastday),
          RejalarSoni(_bajarilganlarsoni, _bajarilmaganlar),
          ListTd(_rejalar.listTodo, _bajarlididebbelgila, deletedTodo),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _floutbattinopenmodel(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
