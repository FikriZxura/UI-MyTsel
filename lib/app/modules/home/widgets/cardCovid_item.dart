import 'package:flutter/material.dart';

class CardCovid extends StatelessWidget {
  final String path;
  final String title;
  const CardCovid({
    required this.path,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, top: 10, bottom: 10),
      width: 248,
      height: 172,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 8,
              offset: Offset(
                1,
                1,
              ),
            ),
          ],
          borderRadius: BorderRadius.circular(4),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            path,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
