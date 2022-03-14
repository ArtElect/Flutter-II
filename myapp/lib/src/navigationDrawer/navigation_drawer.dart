import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/src/route/page_routes.dart';
import 'package:myapp/src/navigationDrawer/build_drawer_body_item.dart';
import 'package:myapp/src/navigationDrawer/build_drawer_header.dart';

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
            icon: FontAwesomeIcons.home,
            text: 'Home',
            onTap: () => {
              Navigator.popAndPushNamed(context, PageRoutes.home),
            }
          ),
          Divider(),
        ],
      ),
    );
  }
}