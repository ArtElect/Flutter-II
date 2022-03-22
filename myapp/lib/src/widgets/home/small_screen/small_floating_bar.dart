import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/src/config/colors.dart';

class SmallFloatingBar extends StatefulWidget {
  final Size screenSize;
  const SmallFloatingBar({Key? key, required this.screenSize}) : super(key: key);

  @override
  _SmallFloatingBarState createState() => _SmallFloatingBarState();
}

class _SmallFloatingBarState extends State<SmallFloatingBar> {

  final List _isHovering = [false, false, false, false];
  List<Widget> rowElements = [];

  List<String> items = ['History', 'Science', 'Philosophy', 'Novels'];
  List<IconData> icons = [
    FontAwesomeIcons.bookOpenReader,
    FontAwesomeIcons.atom,
    FontAwesomeIcons.brain,
    FontAwesomeIcons.book
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < items.length; i++)
        Padding(
          padding: items[i] == 'History'
          ? EdgeInsets.only(top: widget.screenSize.height / 15, bottom: widget.screenSize.height / 40)
          : EdgeInsets.only(bottom: widget.screenSize.height / 40),
          child: InkWell(
            borderRadius: BorderRadius.circular(9),
            splashColor: AppColors.floatingBarSplashColor,
            hoverColor: AppColors.floatingBarHoverColor,
            onHover: (value) => setState(() => value ? _isHovering[i] = true : _isHovering[i] = false),
            onTap: () => Navigator.popAndPushNamed(context, '/${items[i].toLowerCase()}'),
            child: Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.only(
                  top: widget.screenSize.width / 45,
                  bottom: widget.screenSize.height / 45,
                  left: widget.screenSize.width / 40,
                ),
                child: Row(
                  children: [
                    Icon(icons[i]),
                    SizedBox(width: widget.screenSize.width / 50,),
                    InkWell(
                      splashColor: AppColors.floatingBarSplashColor,
                      hoverColor: AppColors.floatingBarHoverColor,
                      onHover: (value) => setState(() => value ? _isHovering[i] = true : _isHovering[i] = false),
                      child: Text(
                        items[i],
                        style: TextStyle(
                          color: _isHovering[i] ? AppColors.floatingBarHoveringColor : AppColors.floatingBarReleasedColor,
                        ),
                      ),
                      onTap: () => Navigator.popAndPushNamed(context, '/${items[i].toLowerCase()}'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}