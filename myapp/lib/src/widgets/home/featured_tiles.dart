import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';
import 'package:myapp/src/widgets/home/large_screen/large_featured_tiles.dart';
import 'package:myapp/src/widgets/home/small_screen/small_featured_tiles.dart';

class FeaturedTiles extends StatelessWidget {
  final Size screenSize;

  FeaturedTiles({Key? key, required this.screenSize,}) : super(key: key);

  final List<String> images = [
    AppImages.scifi,
    AppImages.fantasy,
    AppImages.adventure
  ];

  final List<String> title = ['Sci-fi', 'Fantasy', 'Adventure'];

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget.isSmallScreen(context)
    ? SmallFeaturedTiles(screenSize: screenSize, images: images, title: title,)
    : LargeFeaturedTiles(screenSize: screenSize, images: images, title: title,);
  }
}