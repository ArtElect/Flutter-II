import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';

class ItemCardAuthor extends StatefulWidget {
  final Size screenSize;

  const ItemCardAuthor({Key? key, required this.screenSize}) : super(key: key);

  @override
  _ItemCardAuthorState createState() => _ItemCardAuthorState();
}

class _ItemCardAuthorState extends State<ItemCardAuthor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.screenSize.width * 0.030),
      child: Text(
        'Patricia Dutcher Walls',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: AppFonts.itemCardAuthorTextFont,
          fontSize: widget.screenSize.width / 110,
          color: AppColors.itemCardAuthorColor,
        ),
      ),
    );
  }
}