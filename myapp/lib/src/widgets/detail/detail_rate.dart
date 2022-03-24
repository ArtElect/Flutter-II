import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class DetailRate extends StatelessWidget {
  final Size screenSize;

  const DetailRate({Key? key, required this.screenSize}) : super(key: key);

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
            rating: 4,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: AppColors.detailRateColor,
            ),
            itemCount: 5,
            itemSize: screenSize.width / 50,
          ),
          Text(
            '(42 reviews)',
            style: TextStyle(
              fontFamily: AppFonts.detailRateTextFont,
              fontSize: AdaptiveWidget.isSmallScreen(context)
              ? screenSize.width / 35
              : screenSize.width / 80,
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      ),
    );
  }
}