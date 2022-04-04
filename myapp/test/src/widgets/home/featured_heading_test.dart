import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/featured_heading.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

    testWidgets("Is header created with small screen (mobile)", (WidgetTester tester) async {
    const key = Key("key");
    const FeaturedHeading featuredHeading = FeaturedHeading(key: key, screenSize: Size(390, 845));

    await tester.pumpWidget(makeTestableWidget(child: featuredHeading));

    expect(find.byWidget(featuredHeading), findsOneWidget);
  });
}