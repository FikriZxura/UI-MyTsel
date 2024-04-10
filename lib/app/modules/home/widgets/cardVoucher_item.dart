import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardVoucher extends StatelessWidget {
  const CardVoucher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, top: 20, bottom: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(7),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/gopayBanner.png",
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Double Benefits from DOUBLE\nUNTUNG",
              style: GoogleFonts.dmSans(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
