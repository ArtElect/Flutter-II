import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class ItemCardTitle extends StatelessWidget {
  final Size screenSize;

  const ItemCardTitle({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.030),
      child: Text(
        'Reading The\nHistorical Books',
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