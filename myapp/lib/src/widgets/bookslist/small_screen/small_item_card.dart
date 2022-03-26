import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';
import 'package:myapp/src/models/books_model.dart';
import 'package:myapp/src/widgets/bookslist/item_card_author.dart';
import 'package:myapp/src/widgets/bookslist/item_card_button.dart';
import 'package:myapp/src/widgets/bookslist/item_card_rate.dart';
import 'package:myapp/src/widgets/bookslist/item_card_title.dart';

class SmallItemCard extends StatelessWidget {
  final Size screenSize;
  final BooksModel booksModel;

  const SmallItemCard({Key? key, required this.screenSize, required this.booksModel}) : super(key: key);

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
                child: booksModel.image != '' ? Image.network(booksModel.image, width: screenSize.width*0.25,) : Image.asset(AppImages.bookExemple),
              ),
            ),

          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemCardRate(screenSize: screenSize, review: booksModel.review,),
            const SizedBox(height: 10,),
            ItemCardAuthor(screenSize: screenSize, author: booksModel.author,),
            const SizedBox(height: 10,),
            ItemCardTitle(screenSize: screenSize, title: booksModel.title,),
            ItemCardButton(screenSize: screenSize,),
          ],
        ),
      ],
    );
  }
}