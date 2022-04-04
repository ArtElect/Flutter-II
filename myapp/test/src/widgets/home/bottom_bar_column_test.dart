import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/bottom_bar_column.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets("Is bottom bar column display 'ABOUT' section", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    BottomBarColumn bottomBarColumn = const BottomBarColumn(heading: "ABOUT", s1: "Contact Us", s2: "About Us", s3: "Careers");

    await tester.pumpWidget(makeTestableWidget(child: bottomBarColumn));

    final headingAboutFinder = find.text('ABOUT');
    final s1AboutFinder = find.text('Contact Us');
    final s2AboutFinder = find.text('About Us');
    final s3AboutFinder = find.text('Careers');

    expect(headingAboutFinder, findsOneWidget);
    expect(s1AboutFinder, findsOneWidget);
    expect(s2AboutFinder, findsOneWidget);
    expect(s3AboutFinder, findsOneWidget);
  });

  testWidgets("Is bottom bar column display 'HELP' section", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    BottomBarColumn page = const BottomBarColumn(heading: "HELP", s1: "Payment", s2: "Cancellation", s3: "FAQ");

    await tester.pumpWidget(makeTestableWidget(child: page));

    final headingHelpFinder = find.text('HELP');
    final s1HelpFinder = find.text('Payment');
    final s2HelpFinder = find.text('Cancellation');
    final s3HelpFinder = find.text('FAQ');

    expect(headingHelpFinder, findsOneWidget);
    expect(s1HelpFinder, findsOneWidget);
    expect(s2HelpFinder, findsOneWidget);
    expect(s3HelpFinder, findsOneWidget);
  });

  testWidgets("Is bottom bar column display 'SOCIAL' section", (WidgetTester tester) async {
    // Build our app and trigger a frame.
    BottomBarColumn page = const BottomBarColumn(heading: "SOCIAL", s1: "Twitter", s2: "Facebook", s3: "Youtube");

    await tester.pumpWidget(makeTestableWidget(child: page));

    final headingSocialFinder = find.text('SOCIAL');
    final s1SocialFinder = find.text('Twitter');
    final s2SocialFinder = find.text('Facebook');
    final s3SocialFinder = find.text('Youtube');

    expect(headingSocialFinder, findsOneWidget);
    expect(s1SocialFinder, findsOneWidget);
    expect(s2SocialFinder, findsOneWidget);
    expect(s3SocialFinder, findsOneWidget);
  });
}