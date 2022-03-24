import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';
import 'package:myapp/src/navigationDrawer/navigation_drawer.dart';
import 'package:myapp/src/widgets/home/bottom_bar.dart';
import 'package:myapp/src/widgets/home/carousel.dart';
import 'package:myapp/src/widgets/home/featured_heading.dart';
import 'package:myapp/src/widgets/home/featured_tiles.dart';
import 'package:myapp/src/widgets/home/floating_bar_contents.dart';
import 'package:myapp/src/widgets/home/main_heading.dart';
import 'package:myapp/src/widgets/home/small_screen/small_top_bar.dart';
import 'package:myapp/src/widgets/home/large_screen/large_top_bar.dart';
import 'package:myapp/src/widgets/adaptive/adaptive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() => setState(() => _scrollPosition = _scrollController.position.pixels);

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double _opacity = _scrollPosition > 0 && _scrollPosition < screenSize.height * 0.40
    ? _scrollPosition / (screenSize.height * 0.40)
    : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AdaptiveWidget.isSmallScreen(context)
      ? SmallTopBar(opacity: _opacity,)
      : LargeTopBar(screenSize: screenSize, opacity: _opacity,),
      drawerEdgeDragWidth: 0,
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: screenSize.height * 0.65,
                  width: screenSize.width,
                  child: Image.asset(
                    AppImages.heading,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    FloatingBarContents(screenSize: screenSize),
                    FeaturedHeading(screenSize: screenSize,),
                    FeaturedTiles(screenSize: screenSize),
                    MainHeading(screenSize: screenSize),
                    const MainCarousel(),
                    SizedBox(height: screenSize.height / 10,),
                    BottomBar(screenSize: screenSize,),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}