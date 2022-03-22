import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';

class TopBarMenuItem extends StatefulWidget {
  final String title;
  final GestureTapCallback? onTap;
  
  const TopBarMenuItem({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  _TopBarMenuItemState createState() => _TopBarMenuItemState();
}

class _TopBarMenuItemState extends State<TopBarMenuItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) => setState(() => value ? isHovering = true : isHovering = false),
      onTap: widget.onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: isHovering
              ? AppColors.topBarHoveringColor
              : AppColors.topBarReleasedColor,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          const SizedBox(height: 5),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: isHovering,
            child: Container(
              height: 2,
              width: 20,
              color: AppColors.topBarUnderscoreColor,
            ),
          )
        ],
      ),
    );
  }
}