import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';
import 'package:myapp/src/widgets/bookslist/item_card_author.dart';
import 'package:myapp/src/widgets/bookslist/item_card_button.dart';
import 'package:myapp/src/widgets/bookslist/item_card_rate.dart';
import 'package:myapp/src/widgets/bookslist/item_card_title.dart';

class SmallItemCard extends StatelessWidget {
  final Size screenSize;

  const SmallItemCard({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Column(
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child:  Image.asset(AppImages.bookExemple),
              ),
            ),

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemCardRate(screenSize: screenSize,),
            const SizedBox(height: 10,),
            ItemCardAuthor(screenSize: screenSize,),
            const SizedBox(height: 10,),
            ItemCardTitle(screenSize: screenSize,),
            ItemCardButton(screenSize: screenSize,),
          ],
        ),
      ],
    );
  }
}