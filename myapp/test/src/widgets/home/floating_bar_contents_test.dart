import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/floating_bar_contents.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets("Is header FloatingBarContents created with large screen (web)", (WidgetTester tester) async {
    FloatingBarContents floatingBarContents = FloatingBarContents(screenSize: Size(1980, 1020));

    await tester.pumpWidget(makeTestableWidget(child: floatingBarContents));
    expect(find.byWidget(floatingBarContents), findsOneWidget);
  });
}