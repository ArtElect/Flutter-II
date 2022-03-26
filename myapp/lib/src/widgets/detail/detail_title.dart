import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class DetailTitle extends StatelessWidget {
  final Size screenSize;
  final String title;

  const DetailTitle({Key? key, required this.screenSize, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(
        left: screenSize.width * 0.025,
        top: AdaptiveWidget.isSmallScreen(screenSize)
        ? screenSize.width * 0.02
        : screenSize.width * 0.025,
      ),
      width: screenSize.width*0.45,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: AppFonts.detailTitleTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(screenSize)
          ? screenSize.width / 18
          : screenSize.width / 40,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}