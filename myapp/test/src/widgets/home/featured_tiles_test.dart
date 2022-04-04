import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/featured_tiles.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

    testWidgets("Is FeaturedTiles created with small screen (mobile)", (WidgetTester tester) async {
    const key = Key("key");
    FeaturedTiles featuredTiles = FeaturedTiles(key: key, screenSize: Size(390, 845));

    await tester.pumpWidget(makeTestableWidget(child: featuredTiles));
    expect(find.byWidget(featuredTiles), findsOneWidget);
  });
}


// void main() {
//   Widget makeTestableWidget({required Widget child}) {
//     return MaterialApp(
//       home: child,
//     );
//   }

//     testWidgets("Is header created with small screen (mobile)", (WidgetTester tester) async {
//     const key = Key("key");
//     FloatingBarContents floatingBarContents = FloatingBarContents(key: key, screenSize: Size(390, 845));

//     await tester.pumpWidget(makeTestableWidget(child: floatingBarContents));
//     expect(find.byWidget(floatingBarContents), findsOneWidget);
//   });
// }