import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rejalar_sanasi extends StatelessWidget {
  // const Rejalar_sanasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_left, size: 35)),
          TextButton(
              onPressed: () {},
              child: RichText(
                  text: const TextSpan(
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Friday , ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "6 Aug",
                  ),
                ],
              ))),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_right, size: 35)),
        ],
      ),
    );
  }
}
