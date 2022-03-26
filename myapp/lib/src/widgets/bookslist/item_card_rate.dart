import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class ItemCardRate extends StatelessWidget {
  final Size screenSize;
  final int review;
  
  const ItemCardRate({Key? key, required this.screenSize, required this.review}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.025),
      child: Row(
        children: [
          RatingBarIndicator(
            rating: review != 0 ? review.toDouble() : 0,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: AppColors.itemCardRateColor,
            ),
            itemCount: 5,
            itemSize: AdaptiveWidget.isSmallScreen(screenSize)
            ? screenSize.width / 36
            : screenSize.width / 50,
          ),
          Text(
            '$review',
            style: TextStyle(
              color: AppColors.itemCardRateNumberColor,
              fontFamily: AppFonts.itemCardRateNumberTextFont,
              fontSize: AdaptiveWidget.isSmallScreen(screenSize)
              ? screenSize.width / 35
              : screenSize.width / 80,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}