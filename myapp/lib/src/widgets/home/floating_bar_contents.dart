import 'package:flutter/material.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:myapp/src/widgets/home/large_screen/large_floating_bar.dart';
import 'package:myapp/src/widgets/home/small_screen/small_floating_bar.dart';

class FloatingBarContents extends StatefulWidget {
  final Size screenSize;

  const FloatingBarContents({Key? key, required this.screenSize,}) : super(key: key);

  @override
  _FloatingBarContentsState createState() => _FloatingBarContentsState();
}

class _FloatingBarContentsState extends State<FloatingBarContents> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.60,
          left: AdaptiveWidget.isSmallScreen(widget.screenSize)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
          right: AdaptiveWidget.isSmallScreen(widget.screenSize)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
        ),
        child: AdaptiveWidget.isSmallScreen(widget.screenSize)
          ? SmallFloatingBar(screenSize: widget.screenSize,)
          : LargeFloatingBar(screenSize: widget.screenSize,),
      ),
    );
  }
}