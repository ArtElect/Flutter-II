import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/carousel.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

    testWidgets("Is carousel created with small screen (mobile)", (WidgetTester tester) async {
    const key = Key("key");
    const MainCarousel carousel = MainCarousel(key: key, screenSize: Size(390, 845));

    await tester.pumpWidget(makeTestableWidget(child: carousel));

    expect(find.byKey(key), findsOneWidget);
  });

    testWidgets("Is carousel created with list of place (mobile)", (WidgetTester tester) async {
    const key = Key("key");
    const MainCarousel carousel = MainCarousel(key: key, screenSize: Size(390, 845));

    await tester.pumpWidget(makeTestableWidget(child: carousel));

    expect(find.text("ASIA"), findsOneWidget);
  });

  // testWidgets("Is bottom bar created with medium screen (tablet)", (WidgetTester tester) async {
  //   const key = Key("key");
  //   const MainCarousel carousel = MainCarousel(key: key, screenSize: Size(820, 1180));

  //   await tester.pumpWidget(makeTestableWidget(child: carousel));

  //   expect(find.byKey(key), findsOneWidget);
  // });

  // testWidgets("Is bottom bar created with large screen (web)", (WidgetTester tester) async {
  //   const key = Key("key");

  //   const MainCarousel carousel = MainCarousel(key: key, screenSize: Size(1980, 1020));

  //   await tester.pumpWidget(makeTestableWidget(child: carousel));

  //   expect(find.byKey(key), findsOneWidget);
  // });
}