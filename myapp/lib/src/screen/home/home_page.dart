import 'package:flutter/material.dart';
import 'package:myapp/src/config/colors.dart';
import 'package:myapp/src/navigationDrawer/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: AppColors.appBarBackgound,
      ),
      drawer: const NavigationDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Text("HELLO WORLD."),
        ),
      ),
    );
  }
}