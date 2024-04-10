import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/color.dart';

class KategoriInternet extends StatelessWidget {
  final String title;
  const KategoriInternet({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10, right: 10),
      padding: EdgeInsets.all(8),
      width: 139,
      height: 60,
      decoration: BoxDecoration(
        gradient: merahtgradient,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Text(
        title,
        style: GoogleFonts.dmSans(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
