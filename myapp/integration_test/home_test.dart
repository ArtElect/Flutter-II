import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:myapp/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("", (WidgetTester tester) async {
    app.main();

    await tester.pumpAndSettle();
    final Finder button = find.text("History");

    await tester.tap(button);
    await Future.delayed(const Duration(seconds: 2));
    expect(find.text("Read"), findsWidgets);
    });
}