import 'package:flutter/material.dart';
import 'package:myapp/src/routes/page_routes.dart';
import 'package:myapp/src/routes/router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'utils/connectivity_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConnectivityProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1920,
          minWidth: 1080,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1920, name: DESKTOP),
          ],
        ),
        initialRoute: PageRoutes.home,
        onGenerateRoute: (setting) => Routes().generateRoute(setting),
      ),
    );
  }
}