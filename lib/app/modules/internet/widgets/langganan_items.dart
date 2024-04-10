import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/color.dart';

class LanggananItems extends StatelessWidget {
  final String potongan;
  final String price;
  final String giga;
  final String label;

  const LanggananItems({
    required this.potongan,
    required this.price,
    required this.giga,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 5, top: 5, left: 10),
      width: 248,
      height: 116,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // * 14 GB
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // * Text
              Text(
                giga,
                style: GoogleFonts.dmSans(
                    fontSize: 24, fontWeight: FontWeight.bold, color: hitam),
              ),
              // * Container
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffF1F2F6),
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/timer_ic.png"),
                    Text(
                      " 30 Hari",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold, color: hitam),
                    )
                  ],
                ),
              ),
              // * icons
              Image.asset("assets/images/save_ic.png"),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          // * 99.000
          Text(
            potongan,
            style: GoogleFonts.dmSans(
                color: Color(0xff747D8C),
                fontSize: 12,
                decoration: TextDecoration.lineThrough),
          ),
          // * 96.000 & internet omg
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: GoogleFonts.dmSans(
                  color: merahMuda,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                label,
                style: GoogleFonts.dmSans(
                  color: hitam,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
