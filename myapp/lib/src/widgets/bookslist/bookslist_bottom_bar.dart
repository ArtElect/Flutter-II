import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:myapp/src/widgets/home/bottom_bar.dart';

class BookslistBottomBar extends StatelessWidget {
  final Size screenSize;
  final ScrollController scrollController;
  final Duration listShowItemDuration;

  const BookslistBottomBar({
    Key? key,
    required this.screenSize,
    required this.scrollController,
    required this.listShowItemDuration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return LiveSliverList(
      controller: scrollController,
      showItemDuration: listShowItemDuration,
      itemCount: 1,
      itemBuilder: (context, _, __) => Padding(
        padding: EdgeInsets.only(top: screenSize.width * 0.05),
        child: BottomBar(screenSize: screenSize,),
      ),
    );
  }
}