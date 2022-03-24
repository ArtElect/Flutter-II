import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class DetailCategory extends StatelessWidget {
  final Size screenSize;

  const DetailCategory({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.028),
      child: Text(
        'Categories: History & Literature',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.detailCategoryTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(context)
          ? screenSize.width / 30
          : screenSize.width / 70,
        ),
      ),
    );
  }
}