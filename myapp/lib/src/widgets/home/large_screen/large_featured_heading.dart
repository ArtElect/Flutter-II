import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';

class LargeFeaturedHeading extends StatelessWidget {
const LargeFeaturedHeading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        Text(
          'Featured',
          style: TextStyle(
            fontSize: 36,
            fontFamily: AppFonts.largeFeaturedHeadingFont,
            fontWeight: FontWeight.bold,
            color:AppColors.feautedHeadingColor,
          ),
        ),
      ],
    );
  }
}