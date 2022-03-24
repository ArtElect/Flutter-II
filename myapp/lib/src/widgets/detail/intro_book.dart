import 'package:flutter/material.dart';
import 'package:myapp/src/config/fonts.dart';

class IntroBook extends StatelessWidget {
  final Size screenSize;

  const IntroBook({Key? key, required this.screenSize,}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: screenSize.width / 40,
            bottom: screenSize.width / 40,
            left: screenSize.width * 0.01,
          ),
          child: Text(
            "Synopsis",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              fontFamily: AppFonts.detailIntroTitleTextFont,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: screenSize.width / 40,
            left: screenSize.width * 0.01,
          ),
          child: Text(
            "Why do the rich stay rich and the poor stay poor? Because the rich teach their kids how to manage money and the others don't! Most employees would rather spend year after year in college and university learning nothing about money than become successful themselves."
            "\nRobert T. Kiyosaki had a \"rich dad\" and a \"poor dad\" growing up. After heeding the advice of the former, he was able to retire at the age of 47. He had learned to make money work for him instead of the other way around. In \"Rich Dad Poor Dad\" he shares his knowledge and shows how anyone can be successful.",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: AppFonts.detailIntroContentTextFont,
            ),
          ),
        ),
      ],
    );
  }
}