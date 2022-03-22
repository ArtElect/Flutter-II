import 'package:flutter/material.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/screens/bookslist/books_list.dart';
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
        return routeBuilder(settings, const BooksListPage(heading: 'History',),);
      case PageRoutes.science:
        return routeBuilder(settings, const BooksListPage(heading: 'Science',),);
      case PageRoutes.philosophy:
        return routeBuilder(settings, const BooksListPage(heading: 'Philosophy',),);
      case PageRoutes.novels:
        return routeBuilder(settings, const BooksListPage(heading: 'Novels',),);
      case PageRoutes.scifi:
        return routeBuilder(settings, const BooksListPage(heading: 'Sci-Fi',),);
      case PageRoutes.fantasy:
        return routeBuilder(settings, const BooksListPage(heading: 'Fantasy',),);
      case PageRoutes.adventure:
        return routeBuilder(settings, const BooksListPage(heading: 'Adventure',),);
      case PageRoutes.detail:
        return routeBuilder(settings, Container(),);
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