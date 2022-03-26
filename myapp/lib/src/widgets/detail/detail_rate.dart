import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class DetailRate extends StatelessWidget {
  final Size screenSize;
  final int review;

  const DetailRate({Key? key, required this.screenSize, required this.review}) : super(key: key);

  String getFormatStepCount(int number) {
    var format = NumberFormat('0,000');
    return format.format(number);
  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.025),
      child: Row(
        children: [
          RatingBarIndicator(
            rating: review != 0 ? 4 : 0,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: AppColors.detailRateColor,
            ),
            itemCount: 5,
            itemSize: AdaptiveWidget.isSmallScreen(screenSize)
            ? screenSize.width / 20
            : screenSize.width / 50,
          ),
          Text(
            '($review reviews)',
            style: TextStyle(
              fontFamily: AppFonts.detailRateTextFont,
              fontSize: AdaptiveWidget.isSmallScreen(screenSize)
              ? screenSize.width / 30
              : screenSize.width / 80,
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      ),
    );
  }
}