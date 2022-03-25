import 'package:flutter/material.dart';
import 'package:myapp/src/config/images.dart';
import 'package:myapp/src/navigationDrawer/navigation_drawer.dart';
import 'package:adaptive_widgets/adaptive_widgets.dart';
import 'package:myapp/src/widgets/home/large_screen/large_top_bar.dart';
import 'package:myapp/src/widgets/home/small_screen/small_top_bar.dart';

class NetworkErrorPage extends StatelessWidget {
  const NetworkErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AdaptiveWidget.isSmallScreen(screenSize)
      ? const SmallTopBar(opacity: 0,)
      : LargeTopBar(screenSize: screenSize, opacity: 0,),
      drawerEdgeDragWidth: 0,
      drawer: NavigationDrawer(),
      body: Center(
        child: Image.asset(AppImages.networkError),
      ),
    );
  }
}