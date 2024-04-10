import 'package:flutter/material.dart';

class clipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 65);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 75,
    );
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
