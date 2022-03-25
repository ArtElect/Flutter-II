import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/config/images.dart';
import 'package:myapp/src/widgets/home/large_screen/large_carousel_bar.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({Key? key}) : super(key: key);

  @override
  _MainCarouselState createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {

  final CarouselController _controller = CarouselController();
  final List _isHovering = [false, false, false, false, false, false, false];
  final List _isSelected = [true, false, false, false, false, false, false];
  int _current = 0;
  final List<String> images = [
    AppImages.asia,
    AppImages.africa,
    AppImages.europe,
    AppImages.southAmerica,
    AppImages.australia,
    AppImages.antarctica
  ];
  final List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
    'AUSTRALIA',
    'ANTARCTICA',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images.map((element) => ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        element,
        fit: BoxFit.cover,
      ),
    ),).toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 18 / 8,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
                for (int i = 0; i < imageSliders.length; i++) {
                  i == index
                  ? _isSelected[i] = true
                  : _isSelected[i] = false;
                }
              });
            }
          ),
          carouselController: _controller,
        ),
        AspectRatio(
          aspectRatio: 18 / 8,
          child: Center(
            child: Text(
              places[_current],
              style: TextStyle(
                letterSpacing: 8,
                fontFamily: AppFonts.carouselTextFont,
                fontSize: screenSize.width / 25,
                color: AppColors.carouselTextColor,
              ),
            ),
          ),
        ),
        AdaptiveWidget.isSmallScreen(screenSize)
        ? Container()
        : LargeCarouselBar(screenSize: screenSize,places: places,isSelected: _isSelected,isHovering: _isHovering,controller: _controller,)
      ],
    );
  }
}