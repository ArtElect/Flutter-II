import 'package:flutter/material.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/screens/home/home.dart';

class Routes {

  static Route routeBuilder(RouteSettings settings, Widget page) => PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, _, __) => page,
    transitionsBuilder: (context, opacity, _, child) => FadeTransition(opacity: opacity, child: child)
  );

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutes.home:
        return routeBuilder(settings, const HomePage());
      case PageRoutes.history:
        return routeBuilder(settings, Container());
      case PageRoutes.science:
        return routeBuilder(settings, Container());
      case PageRoutes.philosophy:
        return routeBuilder(settings, Container());
      case PageRoutes.novels:
        return routeBuilder(settings, Container());
      case PageRoutes.scifi:
        return routeBuilder(settings, Container());
      case PageRoutes.fantasy:
        return routeBuilder(settings, Container());
      case PageRoutes.adventure:
        return routeBuilder(settings, Container());
      case PageRoutes.detail:
        return routeBuilder(settings, Container());
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