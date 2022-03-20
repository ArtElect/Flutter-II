import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';

class MainHeading extends StatelessWidget {
  final Size screenSize;
  
  const MainHeading({Key? key, required this.screenSize,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: screenSize.height / 10,
        bottom: screenSize.height / 15,
      ),
      width: screenSize.width,
      child: const Text(
        'Knowledge diversity',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontFamily: AppFonts.mainHeadingTextFont,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}