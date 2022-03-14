import 'package:flutter/material.dart';
import 'package:myapp/src/route/page_routes.dart';
import 'package:myapp/src/screen/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      initialRoute: PageRoutes.home,
      home: HomePage(),
    );
  }
}
