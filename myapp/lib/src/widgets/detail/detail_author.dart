import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class DetailAuthor extends StatelessWidget {
  final Size screenSize;
  final String author;

  const DetailAuthor({Key? key, required this.screenSize, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
        left: screenSize.width / 35,
        right: screenSize.width / 70,
        top: screenSize.width / 50,
        bottom: screenSize.width / 50,
      ),
      child: Text(
        'By: $author',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.detailAuthorTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(screenSize)
          ? screenSize.width / 30
          : screenSize.width / 70,
        ),
      ),
    );
  }
}