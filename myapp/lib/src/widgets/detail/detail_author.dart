import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';

class DetailAuthor extends StatelessWidget {
  final Size screenSize;
  const DetailAuthor({Key? key, required this.screenSize}) : super(key: key);

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
        'By: Patricia Dutcher Walls',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.detailAuthorTextFont,
          fontSize: screenSize.width / 70,
        ),
      ),
    );
  }
}