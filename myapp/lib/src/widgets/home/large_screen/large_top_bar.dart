import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/widgets/home/top_bar_menu_item.dart';

class LargeTopBar extends StatelessWidget implements PreferredSizeWidget {
  final double opacity;
  final Size screenSize;
  
  const LargeTopBar({Key? key, required this.opacity, required this.screenSize}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white.withOpacity(opacity),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width / 6,),
                  const Text(
                    'Book Store',
                    style: TextStyle(
                      color: AppColors.topBarTitleColor,
                      fontSize: 26,
                      fontFamily: AppFonts.topBarTitleFont,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(width: screenSize.width / 15),
                  TopBarMenuItem(title: 'Home', onTap: () => Navigator.popAndPushNamed(context, PageRoutes.home),),
                  SizedBox(width: screenSize.width / 15),
                  TopBarMenuItem(title: 'About', onTap: () {}),
                  SizedBox(width: screenSize.width / 15),
                  TopBarMenuItem(title: 'History', onTap: () {}),
                  SizedBox(width: screenSize.width / 15),
                  TopBarMenuItem(title: 'Contact', onTap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}