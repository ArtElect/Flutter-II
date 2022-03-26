import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class ItemCardTitle extends StatelessWidget {
  final Size screenSize;
  final String title;

  const ItemCardTitle({Key? key, required this.screenSize, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.030),
      width: screenSize.width*0.2,
      child: Text(
        title,
        style: TextStyle(
          fontFamily: AppFonts.itemCardTitleTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(screenSize)
          ? screenSize.width / 45
          : screenSize.width / 80,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}