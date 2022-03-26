import 'package:flutter/material.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:myapp/src/models/books_model.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/widgets/bookslist/large_screen/large_item_card.dart';
import 'package:myapp/src/widgets/bookslist/small_screen/small_item_card.dart';

class ItemCard extends StatelessWidget {
  final BooksModel booksModel;
  const ItemCard({Key? key, required this.booksModel,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => Navigator.popAndPushNamed(context, PageRoutes.detail, arguments: booksModel),
      child: AdaptiveWidget.isSmallScreen(screenSize)
      ? SmallItemCard(screenSize: screenSize, booksModel: booksModel,)
      : LargeItemCard(screenSize: screenSize, booksModel: booksModel,),
    );
  }
}