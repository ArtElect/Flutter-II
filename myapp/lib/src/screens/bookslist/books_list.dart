import 'package:flutter/material.dart';
import 'package:myapp/src/navigationDrawer/navigation_drawer.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';
import 'package:myapp/src/widgets/bookslist/bookslist_bottom_bar.dart';
import 'package:myapp/src/widgets/bookslist/bookslist_contents.dart';
import 'package:myapp/src/widgets/bookslist/bookslist_heading.dart';
import 'package:myapp/src/widgets/home/large_screen/large_top_bar.dart';
import 'package:myapp/src/widgets/home/small_screen/small_top_bar.dart';

class BooksListPage extends StatefulWidget {
  final String heading;

  const BooksListPage({Key? key, required this.heading,}) : super(key: key);

  @override
  _BooksListPageState createState() => _BooksListPageState();
}

class _BooksListPageState extends State<BooksListPage> {
  final _scrollController = ScrollController();
  final int listItemCount = 4;
  final Duration listShowItemDuration = const Duration(milliseconds: 50);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AdaptiveWidget.isSmallScreen(context)
      ? const SmallTopBar(opacity: 1.0,)
      : LargeTopBar(screenSize: screenSize, opacity: 1.0,),
      drawerEdgeDragWidth: 0,
      drawer: NavigationDrawer(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          BookslistHeading(
            heading: widget.heading,
            screenSize: screenSize,
            scrollController: _scrollController,
            listShowItemDuration: listShowItemDuration,
          ),
          BookslistContents(
            screenSize: screenSize,
            scrollController: _scrollController,
            listShowItemDuration: listShowItemDuration,
          ),
          BookslistBottomBar(
            screenSize: screenSize,
            scrollController: _scrollController,
            listShowItemDuration: listShowItemDuration,
          ),
        ],
      ),
    );
  }
}