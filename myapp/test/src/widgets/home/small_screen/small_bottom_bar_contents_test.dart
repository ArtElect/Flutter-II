import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/src/widgets/home/small_screen/small_bottom_bar_contents.dart';

void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets("Is small bar content display email", (WidgetTester tester) async {
    const SmallBottomBarContents infoText = SmallBottomBarContents();

    await tester.pumpWidget(makeTestableWidget(child: infoText));
    expect(find.text("EPITECH@gmail.com"), findsOneWidget);
  });

  testWidgets("Is small bar content display address", (WidgetTester tester) async {
    const SmallBottomBarContents infoText = SmallBottomBarContents();

    await tester.pumpWidget(makeTestableWidget(child: infoText));

    expect(find.textContaining("Mars"), findsOneWidget);
  });

  testWidgets("Is small bar content display copyright", (WidgetTester tester) async {
    const SmallBottomBarContents infoText = SmallBottomBarContents();

    await tester.pumpWidget(makeTestableWidget(child: infoText));
    expect(find.textContaining("Copyright © 2021 | EPITECH"), findsOneWidget);
    expect(find.textContaining("ABOUT"), findsOneWidget);
    expect(find.textContaining("HELP"), findsOneWidget);
    expect(find.textContaining("SOCIAL"), findsOneWidget);
  });

  testWidgets("Is small bar content display 'ABOUT' section", (WidgetTester tester) async {
    const SmallBottomBarContents infoText = SmallBottomBarContents();

    await tester.pumpWidget(makeTestableWidget(child: infoText));
    final headingAboutFinder = find.text('ABOUT');
    final s1AboutFinder = find.text('Contact Us');
    final s2AboutFinder = find.text('About Us');
    final s3AboutFinder = find.text('Careers');

    expect(headingAboutFinder, findsOneWidget);
    expect(s1AboutFinder, findsOneWidget);
    expect(s2AboutFinder, findsOneWidget);
    expect(s3AboutFinder, findsOneWidget);
  });

  testWidgets("Is small bar content display 'HELP' section", (WidgetTester tester) async {
    const SmallBottomBarContents infoText = SmallBottomBarContents();

    await tester.pumpWidget(makeTestableWidget(child: infoText));

    final headingHelpFinder = find.text('HELP');
    final s1HelpFinder = find.text('Payment');
    final s2HelpFinder = find.text('Cancellation');
    final s3HelpFinder = find.text('FAQ');

    expect(headingHelpFinder, findsOneWidget);
    expect(s1HelpFinder, findsOneWidget);
    expect(s2HelpFinder, findsOneWidget);
    expect(s3HelpFinder, findsOneWidget);
  });

  testWidgets("Is small bar content display 'SOCIAL' section", (WidgetTester tester) async {
    const SmallBottomBarContents infoText = SmallBottomBarContents();

    await tester.pumpWidget(makeTestableWidget(child: infoText));

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