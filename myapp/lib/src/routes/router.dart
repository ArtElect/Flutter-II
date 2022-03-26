import 'package:flutter/material.dart';
import 'package:myapp/src/models/books_model.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/screens/bookslist/books_list.dart';
import 'package:myapp/src/screens/error/network_error.dart';
import 'package:myapp/src/screens/detail/detail.dart';
import 'package:myapp/src/screens/home/home.dart';
import 'package:myapp/src/utils/connectivity_provider.dart';
import 'package:provider/provider.dart';

class Routes {

  static Route routeBuilder(RouteSettings settings, Widget page) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, _, __) => page,
      transitionsBuilder: (context, opacity, _, child) {
        final isConnected = Provider.of<ConnectivityProvider>(context).isConnected;
        if (isConnected) {
          return FadeTransition(opacity: opacity, child: child);
        } else {
          return const NetworkErrorPage();
        }
      },
    );
  }

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
        final booksModel = settings.arguments as BooksModel;
        return routeBuilder(settings, DetailPage(booksModel: booksModel,),);
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