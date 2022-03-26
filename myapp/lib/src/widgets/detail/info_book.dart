import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:myapp/src/models/books_model.dart';
import 'package:myapp/src/widgets/detail/detail_author.dart';
import 'package:myapp/src/widgets/detail/detail_category.dart';
import 'package:myapp/src/widgets/detail/detail_rate.dart';
import 'package:myapp/src/widgets/detail/detail_read_button.dart';
import 'package:myapp/src/widgets/detail/detail_title.dart';

class InfoBook extends StatelessWidget {
  final Size screenSize;
  final BooksModel booksModel;

  const InfoBook({Key? key, required this.screenSize, required this.booksModel,}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        AdaptiveWidget.isSmallScreen(screenSize)
        ? Container(
          height: screenSize.width / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: booksModel.image != '' ? Image.network(booksModel.image, width: screenSize.width*0.25,) : Image.asset(AppImages.bookExemple),
        )
        : Container(
          height: screenSize.width / 3.8,
          width: screenSize.width / 5.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: booksModel.image != '' ? Image.network(booksModel.image, width: screenSize.width*0.25,) : Image.asset(AppImages.bookExemple),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailTitle(screenSize: screenSize, title: booksModel.title,),
            DetailRate(screenSize: screenSize, review: booksModel.review),
            DetailAuthor(screenSize: screenSize, author: booksModel.author,),
            DetailCategory(screenSize: screenSize, category: booksModel.category, ),
            DetailReadButton(screenSize: screenSize,),
          ],
        ),
      ],
    );
  }
}