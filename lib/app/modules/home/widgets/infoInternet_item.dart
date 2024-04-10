import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../../widget/color.dart';

class ItemPaket extends StatelessWidget {
  final String title;
  final String subtitle;
  final String ket;

  const ItemPaket({
    required this.title,
    required this.subtitle,
    required this.ket,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: Get.width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffF1F2F6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: GoogleFonts.dmSans(
                color: hitam,
                fontSize: 15,
              )),
          SizedBox(
            height: 4,
          ),
          RichText(
            text: TextSpan(
              text: subtitle,
              style: GoogleFonts.dmSans(
                color: merahMuda,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ket,
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff747D8C),
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
