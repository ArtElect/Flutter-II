import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';

class SmallFeaturedHeading extends StatelessWidget {
const SmallFeaturedHeading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Featured',
              style: TextStyle(
                fontSize: 36,
                fontFamily: AppFonts.smallFeaturedHeadingFont,
                fontWeight: FontWeight.bold,
                color: AppColors.feautedHeadingColor
              ),
            ),
            SizedBox(height: 5,),
          ],
        ),
      ],
    );
  }
}