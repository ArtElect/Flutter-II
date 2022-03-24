import 'package:flutter/material.dart';
import 'package:myapp/src/navigationDrawer/navigation_drawer.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';
import 'package:myapp/src/widgets/detail/info_book.dart';
import 'package:myapp/src/widgets/detail/intro_book.dart';
import 'package:myapp/src/widgets/home/bottom_bar.dart';
import 'package:myapp/src/widgets/home/large_screen/large_top_bar.dart';
import 'package:myapp/src/widgets/home/small_screen/small_top_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: AdaptiveWidget.isSmallScreen(context)
      ? const SmallTopBar(opacity: 1.0,)
      : LargeTopBar(screenSize: screenSize, opacity: 1.0,),
      drawerEdgeDragWidth: 0,
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InfoBook(screenSize: screenSize),
            IntroBook(screenSize: screenSize,),
            BottomBar(screenSize: screenSize,),
          ],
        ),
      ),
    );
  }
}