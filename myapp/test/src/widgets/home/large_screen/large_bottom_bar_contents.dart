import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/large_screen/large_bottom_bar_contents.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets("Is infotext display email", (WidgetTester tester) async {
    const LargeBottomBarContents infoText = LargeBottomBarContents();

    await tester.pumpWidget(makeTestableWidget(child: infoText));
    expect(find.text("EPITECH@gmail.com"), findsOneWidget);
  });
}
