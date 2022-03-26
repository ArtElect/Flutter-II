import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/widgets/home/large_screen/large_bottom_bar_contents.dart';
import 'package:myapp/src/widgets/home/small_screen/small_bottom_bar_contents.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';

class BottomBar extends StatelessWidget {
  final Size screenSize;

  const BottomBar({Key? key, required this.screenSize,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveWidget.isLargeScreen(screenSize)
    ? Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.gradientStartColor,
            offset: Offset(1.0, 6.0),
            blurRadius: 1.0,
          ),
          BoxShadow(
            color: AppColors.gradientEndColor,
            offset: Offset(1.0, 6.0),
            blurRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            AppColors.gradientStartColor,
            AppColors.gradientEndColor
          ],
          begin: FractionalOffset(0.2, 0.2),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp
        ),
      ),
      padding: const EdgeInsets.all(30),
      child: const LargeBottomBarContents()
    )
    : Container();
  }
}