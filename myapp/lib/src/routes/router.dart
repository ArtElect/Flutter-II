import 'package:flutter/material.dart';
import 'package:myapp/src/navigationDrawer/navigation_drawer.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/screens/home/home.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutes.home:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, _, __) => const HomePage(),
          transitionsBuilder: (context, opacity, _, child) => FadeTransition(opacity: opacity, child: child)
        );
      case PageRoutes.login:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, _, __) => const Scaffold(drawer: NavigationDrawer(),),
          transitionsBuilder: (context, opacity, _, child) => FadeTransition(opacity: opacity, child: child)
        );
      default:
        return unknownPage();
    }
  }

  static MaterialPageRoute<dynamic> unknownPage() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error')
        ),
        body: const Center(
          child: Text('Unknown Page'),
        ),
      );
    });
  }
}