import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapps/widget/rejalar_sanasi.dart';

void main() {
  runApp( MyApp());
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

class Rejalar extends StatelessWidget {
  // const Rejalar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Column(
        children:  [
          Rejalar_sanasi(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 35.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("03",style: TextStyle(fontWeight: FontWeight.w600),),
                    Text("Barcha rejalaringiz",style: TextStyle(fontSize: 12,color: Colors.black54)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("00",style: TextStyle(fontWeight: FontWeight.w600),),
                    Text("Barcha rejalaringiz",style: TextStyle(fontSize: 12,color: Colors.black54)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

