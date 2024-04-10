import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KategorPaket extends StatelessWidget {
  final String path;
  final String title;
  final void Function()? ontap;

  const KategorPaket({
    this.ontap,
    required this.path,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(path),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
