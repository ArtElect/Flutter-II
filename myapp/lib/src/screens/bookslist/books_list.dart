import 'package:flutter/material.dart';
import 'package:myapp/src/navigationDrawer/navigation_drawer.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:myapp/src/services/books_service.dart';
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
  late Future<dynamic> futureBooks;
  BooksService booksService = BooksService();
  
  @override
  void initState() {
    super.initState();
    futureBooks = booksService.fetchBooks();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AdaptiveWidget.isSmallScreen(screenSize)
      ? const SmallTopBar(opacity: 1.0,)
      : LargeTopBar(screenSize: screenSize, opacity: 1.0,),
      drawerEdgeDragWidth: 0,
      drawer: NavigationDrawer(),
      body: FutureBuilder<dynamic>(
        future: futureBooks,
        builder: ((context, snapshot) {

          if (snapshot.hasData && snapshot.data['jsonArray'] != null) {
            Widget booksListContents = BookslistContents(
              screenSize: screenSize,
              scrollController: _scrollController,
              listShowItemDuration: listShowItemDuration,
              data: snapshot.data['jsonArray'],
            );
            return CustomScrollView(
              controller: _scrollController,
              slivers: [
                BookslistHeading(
                  heading: widget.heading,
                  screenSize: screenSize,
                  scrollController: _scrollController,
                  listShowItemDuration: listShowItemDuration,
                ),
                booksListContents,
                BookslistBottomBar(
                  screenSize: screenSize,
                  scrollController: _scrollController,
                  listShowItemDuration: listShowItemDuration,
                ),
              ],
            );
          } else {
            print('${snapshot.error}');
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),

    );
  }
}