import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/info_text.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets("Is infotext display email", (WidgetTester tester) async {
    const InfoText infoText = InfoText(type: "Email", text: "EPITECH@gmail.com");

    await tester.pumpWidget(makeTestableWidget(child: infoText));
    expect(find.text("EPITECH@gmail.com"), findsOneWidget);
  });

  testWidgets("Is header infotext display address", (WidgetTester tester) async {
    const InfoText floatingBarContents = InfoText(type: "Address", text: "24 Rue Pasteur, 94270 Le Kremlin-Bicêtre");

    await tester.pumpWidget(makeTestableWidget(child: floatingBarContents));
    expect(find.text("24 Rue Pasteur, 94270 Le Kremlin-Bicêtre"), findsOneWidget);
  });
}