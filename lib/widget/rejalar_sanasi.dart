import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Rejalar_sanasi extends StatelessWidget {
  // const Rejalar_sanasi({Key? key}) : super(key: key);
  final Function selectdate;
  final DateTime the_appointed_day;
  final Function() nextday;
  final Function() lastday;

  Rejalar_sanasi(this.selectdate, this.the_appointed_day,this.nextday,this.lastday);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: lastday,
              icon: Icon(Icons.arrow_left, size: 35)),
          TextButton(
              onPressed: () {selectdate(context);},
              child: RichText(
                  text: TextSpan(
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: [
                  TextSpan(
                    text: "${DateFormat.EEEE().format(the_appointed_day)} ,",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                   TextSpan(
                    text: "${DateFormat("d MMM").format(the_appointed_day)}",
                  ),
                ],
              ))),
          IconButton(onPressed: nextday, icon: Icon(Icons.arrow_right, size: 35)),
        ],
      ),
    );
  }
}
