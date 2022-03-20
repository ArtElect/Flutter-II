import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/config/fonts.dart';

class SmallTopBar extends StatefulWidget with PreferredSizeWidget{
  final double opacity;

  const SmallTopBar({Key? key, required this.opacity}) : super(key: key);

  @override
  _SmallTopBarState createState() => _SmallTopBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _SmallTopBarState extends State<SmallTopBar> {
  late double _opacity;

  @override
  Widget build(BuildContext context) {
    setState(() => _opacity = widget.opacity,);

    return AppBar(
      iconTheme: const IconThemeData(color: AppColors.drawerButtonColor),
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(_opacity),
      title: const Text(
        'Book Store',
        style: TextStyle(
          color: AppColors.topBarTitleColor,
          fontSize: 24,
          fontFamily: AppFonts.smallTopBarTitleFont,
          fontWeight: FontWeight.w900,
          letterSpacing: 3,
        ),
      ),
    );
  }
}