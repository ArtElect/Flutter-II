import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class DetailTitle extends StatelessWidget {
  final Size screenSize;
  const DetailTitle({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
        left: screenSize.width * 0.025,
        top: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width * 0.02
        : screenSize.width * 0.025,
      ),
      child: Text(
        'Reading The\nHistorical Books',
        style: TextStyle(
          fontFamily: AppFonts.detailTitleTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(context)
          ? screenSize.width / 50
          : screenSize.width / 40,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}