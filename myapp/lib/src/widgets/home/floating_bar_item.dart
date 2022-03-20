import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';

class FloatingBarItem extends StatefulWidget {
  final Size screenSize;
  final String text;
  final GestureTapCallback onTap;

  const FloatingBarItem({
    Key? key,
    required this.screenSize,
    required this.text,
    required this.onTap
  }) : super(key: key);

  @override
  _FloatingBarItemState createState() => _FloatingBarItemState();
}

class _FloatingBarItemState extends State<FloatingBarItem> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.floatingBarSplashColor,
      hoverColor: AppColors.floatingBarHoverColor,
      onHover: (value) => setState(() => value ? isHovering = true : isHovering = false),
      child: Text(
        widget.text,
        style: TextStyle(
          color: isHovering ? AppColors.floatingBarHoveringColor : AppColors.floatingBarReleasedColor,
        ),
      ),
      onTap: widget.onTap,
    );
  }
}