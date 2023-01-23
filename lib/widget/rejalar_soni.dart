import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RejalarSoni extends StatelessWidget {
  // const RejalarSoni({Key? key}) : super(key: key);
  final int bajarilganlarsoni;
  final int bajarilmaganlar;

   RejalarSoni(  this.bajarilganlarsoni, this.bajarilmaganlar);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                bajarilmaganlar <10 ? "0$bajarilmaganlar":"$bajarilmaganlar",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const Text("Barcha rejalaringiz",
                  style: TextStyle(fontSize: 12, color: Colors.black54)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Text(
                bajarilganlarsoni < 10 ? "0$bajarilganlarsoni":"$bajarilganlarsoni",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const Text("Bajarilgan rejalaringiz",
                  style: TextStyle(fontSize: 12, color: Colors.black54)),
            ],
          ),
        ],
      ),
    );
  }
}
