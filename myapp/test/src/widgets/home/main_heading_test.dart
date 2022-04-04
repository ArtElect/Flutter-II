import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/main_heading.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets("Is mainHeading created with small screen (mobile)", (WidgetTester tester) async {
    const MainHeading mainHeading = MainHeading(screenSize: Size(390, 845));

    await tester.pumpWidget(makeTestableWidget(child: mainHeading));

    expect(find.byWidget(mainHeading), findsOneWidget);
  });

  testWidgets("Is mainHeading created with medium screen (tablet)", (WidgetTester tester) async {
    const MainHeading mainHeading = MainHeading(screenSize: Size(840, 1180));

    await tester.pumpWidget(makeTestableWidget(child: mainHeading));

    expect(find.byWidget(mainHeading), findsOneWidget);
  });

  testWidgets("Is mainHeading created with large screen (web)", (WidgetTester tester) async {
    const MainHeading mainHeading = MainHeading(screenSize: Size(1920, 1080));

    await tester.pumpWidget(makeTestableWidget(child: mainHeading));

    expect(find.byWidget(mainHeading), findsOneWidget);
  });
}