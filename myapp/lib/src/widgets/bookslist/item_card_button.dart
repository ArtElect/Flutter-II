import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class ItemCardButton extends StatelessWidget {
  final Size screenSize;

  const ItemCardButton({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width / 50
        : screenSize.width / 40,
        right: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width / 50
        : screenSize.width / 40,
        top: screenSize.width / 100
      ),
      child: GFButton(
        text: 'Read',
        size: AdaptiveWidget.isSmallScreen(context)
        ? screenSize.width / 25
        : screenSize.width / 30,
        color:AppColors.itemCardButtonColor,
        shape: GFButtonShape.pills,
        textStyle: TextStyle(
          color: AppColors.itemCardButtonTextColor,
          fontFamily: AppFonts.itemCardButtonTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(context)
          ? screenSize.width / 35 
          : screenSize.width / 55,
          fontWeight: FontWeight.w500,
        ),
        onPressed: () {},
      ),
    );
  }
}