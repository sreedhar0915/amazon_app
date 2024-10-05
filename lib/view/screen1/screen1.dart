import 'package:amazon_app/view/language_screen/language_screen.dart';
import 'package:amazon_app/view/utils/constants/image_constants/imageconstants.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LanguageScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(height: 300, ImageConstants.Amazon_front_icon)),
    );
  }
}
