import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';

Widget buildDrawerBodyItem({required IconData icon, required String text, required GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: [
        Icon(icon, size: 20.0,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(text, style: const TextStyle(color: AppColors.drawerTextColor, fontSize: 14),),
        )
      ],
    ),
    onTap: onTap,
  );
}