import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class DetailCategory extends StatelessWidget {
  final Size screenSize;
  final String category;

  const DetailCategory({Key? key, required this.screenSize, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.028),
      child: Text(
        'Categories: $category',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.detailCategoryTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(screenSize)
          ? screenSize.width / 30
          : screenSize.width / 70,
        ),
      ),
    );
  }
}