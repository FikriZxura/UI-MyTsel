import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoPaket extends StatelessWidget {
  final LinearGradient gradient;
  final String title;
  final String description;
  final String path;
  const InfoPaket({
    required this.gradient,
    required this.title,
    required this.description,
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      height: 100,
      width: 248,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: gradient,
      ),
      child: Row(
        children: [
          Image.asset(path),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Text(
                description,
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
