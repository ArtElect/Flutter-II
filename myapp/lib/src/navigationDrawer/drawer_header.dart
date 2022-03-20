import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';

Widget buildDrawerHeader() {
  return DrawerHeader(
    margin: EdgeInsets.zero,
    padding: EdgeInsets.zero,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(AppImages.drawerHeaderBg),
      )
    ),
    child: Container(),
  );
}