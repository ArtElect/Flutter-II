import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class FeaturedHeading extends StatelessWidget {
  final Size screenSize;

  const FeaturedHeading({Key? key, required this.screenSize,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Featured',
            style: TextStyle(
              fontSize: AdaptiveWidget.isSmallScreen(context) ? screenSize.width / 15 : screenSize.width / 30,
              fontFamily: AppFonts.largeFeaturedHeadingFont,
              fontWeight: FontWeight.bold,
              color:AppColors.feautedHeadingColor,
            ),
          ),
        ],
      ),
    );
  }
}