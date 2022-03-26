import 'package:flutter/material.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:myapp/src/models/books_model.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:myapp/src/widgets/bookslist/item_card.dart';

class BookslistContents extends StatefulWidget {
  final Size screenSize;
  final ScrollController scrollController;
  final Duration listShowItemDuration;
  final List<dynamic> data;

  const BookslistContents({
    Key? key,
    required this.screenSize,
    required this.scrollController,
    required this.listShowItemDuration,
    required this.data,
  }) : super(key: key);

  @override
  _BookslistContentsState createState() => _BookslistContentsState();
}

class _BookslistContentsState extends State<BookslistContents> {
  
  Widget buildAnimatedItem(BuildContext context, int index, Animation<double> animation,) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -0.1),
          end: Offset.zero,
        ).animate(animation),
        child: ItemCard(booksModel: BooksModel.fromJson(widget.data[index]),),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return LiveSliverGrid(
      controller: widget.scrollController,
      delay: widget.listShowItemDuration * 2,
      itemCount: widget.data.length,
      itemBuilder: buildAnimatedItem,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AdaptiveWidget.isSmallScreen(widget.screenSize) ? 2 : 5,
        childAspectRatio: 0.7,
        mainAxisExtent: widget.screenSize.width * 0.38,
      ),
    );
  }
}