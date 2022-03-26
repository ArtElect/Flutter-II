import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class ItemCardAuthor extends StatefulWidget {
  final Size screenSize;
  final String author;

  const ItemCardAuthor({Key? key, required this.screenSize, required this.author}) : super(key: key);

  @override
  _ItemCardAuthorState createState() => _ItemCardAuthorState();
}

class _ItemCardAuthorState extends State<ItemCardAuthor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.screenSize.width * 0.030),
      child: Text(
        widget.author,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.itemCardAuthorTextFont,
          fontSize: AdaptiveWidget.isSmallScreen(widget.screenSize)
          ? widget.screenSize.width / 60
          : widget.screenSize.width / 110,
          color: AppColors.itemCardAuthorColor,
        ),
      ),
    );
  }
}