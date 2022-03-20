import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/navigationDrawer/drawer_body_item.dart';
import 'package:myapp/src/navigationDrawer/drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildDrawerHeader(),
          buildDrawerBodyItem(
            icon: Icons.home_outlined,
            text: 'Home',
            onTap: () => Navigator.popAndPushNamed(context, PageRoutes.home),
          ),
          buildDrawerBodyItem(
            icon: Icons.login,
            text: 'Login',
            onTap: () => Navigator.popAndPushNamed(context, PageRoutes.login),
          ),
          buildDrawerBodyItem(
            icon: Icons.app_registration_rounded,
            text: 'Sign up',
            onTap: () => Navigator.popAndPushNamed(context, PageRoutes.register),
          ),
          buildDrawerBodyItem(
            icon: Icons.book_outlined,
            text: 'Read',
            onTap: () => Navigator.popAndPushNamed(context, PageRoutes.read),
          ),
          buildDrawerBodyItem(
            icon: Icons.contact_support_outlined,
            text: 'Contact Us',
            onTap: () => Navigator.popAndPushNamed(context, PageRoutes.contact),
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