import 'package:flutter/material.dart';

Widget buildDrawerBodyItem({required IconData icon, required String text, required GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: [
        Icon(icon, size: 20.0,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}