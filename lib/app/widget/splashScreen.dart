import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:my_tsel/app/widget/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: merahMuda,
        body: Center(
          child: Container(
            width: 180,
            height: 180,
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
      ),
    );
  }
}
