import 'package:flutter/material.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';
import 'package:myapp/src/widgets/home/large_screen/large_featured_heading.dart';
import 'package:myapp/src/widgets/home/small_screen/small_featured_heading.dart';

class FeaturedHeading extends StatelessWidget {
  final Size screenSize;

  const FeaturedHeading({Key? key, required this.screenSize,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child:  AdaptiveWidget.isSmallScreen(context)
        ? const SmallFeaturedHeading()
        : const LargeFeaturedHeading()
    );
  }
}