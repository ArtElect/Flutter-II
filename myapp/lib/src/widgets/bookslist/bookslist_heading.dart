import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class BookslistHeading extends StatelessWidget {
  final String heading;
  final Size screenSize;
  final ScrollController scrollController;
  final Duration listShowItemDuration;

  const BookslistHeading({
    Key? key,
    required this.heading,
    required this.screenSize,
    required this.scrollController,
    required this.listShowItemDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return LiveSliverList(
      controller: scrollController,
      showItemDuration: listShowItemDuration,
      itemCount: 1,
      itemBuilder: (context, _, __) => Padding(
        padding: EdgeInsets.only(
          top: screenSize.height * 0.03,
          bottom: screenSize.height * 0.03,
          left: screenSize.width / 45,
          right: screenSize.width / 45,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              heading,
              style: TextStyle(
                fontSize: AdaptiveWidget.isSmallScreen(context)
                ? screenSize.width / 18
                : screenSize.width / 30,
                fontFamily: AppFonts.booksListHeadingTextFont,
                fontWeight: FontWeight.bold,
                color:AppColors.booksListHeadingColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}