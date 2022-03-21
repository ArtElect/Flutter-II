import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/navigationDrawer/drawer_body_item.dart';
import 'package:myapp/src/navigationDrawer/drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  final List<String> items = [
    'Home',
    'History',
    'Science',
    'Philosophy',
    'Novels',
    'Scifi',
    'Fantasy',
    'Adventure'
  ];
  final List<FaIcon> icons = [
    const FaIcon(FontAwesomeIcons.house, color: AppColors.navigationButtonsColor, size: 20.0,),
    const FaIcon(FontAwesomeIcons.bookOpenReader, color: AppColors.navigationButtonsColor, size: 20.0,),
    const FaIcon(FontAwesomeIcons.atom, color: AppColors.navigationButtonsColor, size: 20.0,),
    const FaIcon(FontAwesomeIcons.brain, color: AppColors.navigationButtonsColor, size: 20.0,),
    const FaIcon(FontAwesomeIcons.book, color: AppColors.navigationButtonsColor, size: 20.0,),
    const FaIcon(FontAwesomeIcons.galacticSenate, color: AppColors.navigationButtonsColor, size: 20.0,),
    const FaIcon(FontAwesomeIcons.dragon, color: AppColors.navigationButtonsColor, size: 20.0,),
    const FaIcon(FontAwesomeIcons.paw, color: AppColors.navigationButtonsColor, size: 20.0,)
  ];
  final List<String> routeNames = [
    PageRoutes.home,
    PageRoutes.history,
    PageRoutes.science,
    PageRoutes.philosophy,
    PageRoutes.novels,
    PageRoutes.scifi,
    PageRoutes.fantasy,
    PageRoutes.adventure
  ];

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildDrawerHeader(),
          for (int i = 0; i < items.length; i++)
          buildDrawerBodyItem(
            icon: icons[i],
            text: items[i],
            onTap: () => Navigator.popAndPushNamed(context, routeNames[i]),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          const Divider(color: AppColors.drawerDivierColor, thickness: 0.08,),
          Center(
            child: Text(
              'Copyright © 2021 | EPITECH',
              style: TextStyle(
                color: AppColors.drawerFooterColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}