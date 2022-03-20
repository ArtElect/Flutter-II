import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  const BottomBarColumn({
    Key? key, 
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
  }) : super(key: key);

  Widget buildTextItem(String text, Color? color, double? fontSize, FontWeight? fontWeight) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTextItem(heading, AppColors.bottomBarHeadingColor, 18, FontWeight.w500),
          const SizedBox(height: 10,),
          buildTextItem(s1, AppColors.bottomBarTextColor, 14, FontWeight.w500),
          buildTextItem(s2, AppColors.bottomBarTextColor, 14, FontWeight.w500),
          buildTextItem(s3, AppColors.bottomBarTextColor, 14, FontWeight.w500),
        ],
      ),
    );
  }
}