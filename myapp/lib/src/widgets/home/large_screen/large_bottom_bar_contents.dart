import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/widgets/home/bottom_bar_column.dart';
import 'package:myapp/src/widgets/home/info_text.dart';

class LargeBottomBarContents extends StatelessWidget {
const LargeBottomBarContents({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const BottomBarColumn(
              heading: 'ABOUT',
              s1: 'Contact Us',
              s2: 'About Us',
              s3: 'Careers',
            ),
            const BottomBarColumn(
              heading: 'HELP',
              s1: 'Payment',
              s2: 'Cancellation',
              s3: 'FAQ',
            ),
            const BottomBarColumn(
              heading: 'SOCIAL',
              s1: 'Twitter',
              s2: 'Facebook',
              s3: 'Youtube',
            ),
            Container(
              color: AppColors.desktopBottomVertBarColor,
              width: 2,
              height: 150,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                InfoText(
                  type: 'Email',
                  text: 'EPITECH@gmail.com',
                ),
                SizedBox(height: 5),
                InfoText(
                  type: 'Address',
                  text: '24 Rue Pasteur, 94270 Le Kremlin-Bicêtre',
                )
              ],
            ),
          ],
        ),
        const Divider(color: AppColors.desktopBottomDividerColor,),
        const SizedBox(height: 20),
        const Text(
          'Copyright © 2021 | EPITECH',
          style: TextStyle(
            color: AppColors.desktopBottomCopyrightColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}