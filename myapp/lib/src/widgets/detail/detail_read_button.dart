import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class DetailReadButton extends StatelessWidget {
  final Size screenSize;

  const DetailReadButton({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(
        left: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width / 50
        : screenSize.width / 40,
        right: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width / 50
        : screenSize.width / 40,
        top: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width / 5
        : screenSize.width * 0.05
      ),
      child: GFButton(
        padding: EdgeInsets.only(
          left: screenSize.width / 20,
          right: screenSize.width / 20,
        ),
        elevation: 10,
        text: 'Start reading',
        size: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width / 13
        : screenSize.width / 40,
        color:AppColors.detailButtonColor,
        shape: GFButtonShape.pills,
        textStyle: TextStyle(
          color: AppColors.detailButtonTextColor,
          fontFamily: AppFonts.detailButtonTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(context)
          ? screenSize.width / 25
          : screenSize.width / 50,
          fontWeight: AdaptiveWidget.isSmallScreen(context) 
          ? FontWeight.w600
          : FontWeight.w200,
        ),
        onPressed: () {},
      ),
    );
  }
}