import 'package:flutter/material.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:myapp/src/widgets/bookslist/large_screen/large_item_card.dart';
import 'package:myapp/src/widgets/bookslist/small_screen/small_item_card.dart';

class ItemCard extends StatelessWidget {
  final Function()? onTap;
  
  const ItemCard({ Key? key, required this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: AdaptiveWidget.isSmallScreen(screenSize)
      ? SmallItemCard(screenSize: screenSize,)
      : LargeItemCard(screenSize: screenSize,),
    );
  }
}