import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LinkCard extends StatelessWidget {
  final String path;

  const LinkCard({
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, top: 10, bottom: 10),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            path,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Bayar Serba Cepat",
              style: GoogleFonts.dmSans(fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
