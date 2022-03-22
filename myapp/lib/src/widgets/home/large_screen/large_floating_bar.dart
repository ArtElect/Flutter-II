import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/widgets/home/floating_bar_item.dart';

class LargeFloatingBar extends StatefulWidget {
  final Size screenSize;
  
  const LargeFloatingBar({Key? key, required this.screenSize}) : super(key: key);

  @override
  _LargeFloatingBarState createState() => _LargeFloatingBarState();
}

class _LargeFloatingBarState extends State<LargeFloatingBar> {
  @override
  Widget build(BuildContext context) {

    Widget spacer = SizedBox(
      height: widget.screenSize.height / 20,
      child: VerticalDivider(
        width: 1,
        color: AppColors.mobileVertBarColor,
        thickness: 1,
      ),
    );

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: widget.screenSize.height / 40),
          child: Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.only(top: widget.screenSize.height / 50, bottom: widget.screenSize.height / 50,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingBarItem(screenSize: widget.screenSize, text: 'History', onTap: () => Navigator.popAndPushNamed(context, PageRoutes.history),),
                  spacer,
                  FloatingBarItem(screenSize: widget.screenSize, text: 'Science', onTap: () => Navigator.popAndPushNamed(context, PageRoutes.science),),
                  spacer,
                  FloatingBarItem(screenSize: widget.screenSize, text: 'Philosophy', onTap: () => Navigator.popAndPushNamed(context, PageRoutes.philosophy),),
                  spacer,
                  FloatingBarItem(screenSize: widget.screenSize, text: 'Novels', onTap: () => Navigator.popAndPushNamed(context, PageRoutes.novels),),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}