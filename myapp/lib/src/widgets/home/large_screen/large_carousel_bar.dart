import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myapp/src/config/colors.dart';

class LargeCarouselBar extends StatefulWidget {
  final Size screenSize;
  final List<String> places;
  final List isHovering;  
  final List isSelected;
  final CarouselController controller;

  const LargeCarouselBar({
    Key? key,
    required this.screenSize,
    required this.places,
    required this.isHovering,
    required this.isSelected,
    required this.controller,
  }) : super(key: key);

  @override
  _LargeCarouselBarState createState() => _LargeCarouselBarState();
}

class _LargeCarouselBarState extends State<LargeCarouselBar> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 17 / 8,
      child: Center(
        heightFactor: 1,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              left: widget.screenSize.width / 8,
              right: widget.screenSize.width / 8,
            ),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.only(
                  top: widget.screenSize.height / 50,
                  bottom: widget.screenSize.height / 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < widget.places.length; i++)
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            splashColor: AppColors.carouselSplashColor,
                            hoverColor: AppColors.carouselHoverColor,
                            onHover: (value) => setState(() => value ? widget.isHovering[i] = true : widget.isHovering[i] = false),
                            onTap: () => widget.controller.animateToPage(i),
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: widget.screenSize.height / 80,
                                bottom: widget.screenSize.height / 90),
                              child: Text(
                                widget.places[i],
                                style: TextStyle(
                                  color: widget.isHovering[i]
                                  ? AppColors.carouselHoveringColor
                                  : AppColors.carouselReleaseColor,),
                              ),
                            ),
                          ),
                          Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: widget.isSelected[i],
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 400),
                              opacity: widget.isSelected[i] ? 1 : 0,
                              child: Container(
                                height: 5,
                                decoration: const BoxDecoration(
                                  color: AppColors.carouselUnderscoreColor,
                                  borderRadius: BorderRadius.all(Radius.circular(10),),),
                                width: widget.screenSize.width / 10,
                              ),
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}