import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/images.dart';

Widget buildDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(AppImages.menuHeaderBackground),
      )
    ),
    child: Stack(
      children: [
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text("Welcome to New World",
            style: TextStyle(
              color: AppColors.headerTextColor,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            )
          )
        ),
      ]
    )
  );
}