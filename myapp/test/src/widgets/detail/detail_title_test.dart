import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import '../book_test.dart';
import 'detail_title_test.mocks.dart';
import 'package:myapp/src/widgets/detail/detail_title.dart';

@GenerateMocks([Book])
void main() {
  Widget makeTestableWidget({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  // testWidgets("Is title OK", (WidgetTester tester) async {

  //   var book = MockBook();

  //   DetailTitle bottomBarColumn = DetailTitle(screenSize: Size(390, 845), title: book.title);

  //   await tester.pumpWidget(makeTestableWidget(child: bottomBarColumn));

  //   expect(find.text("A Fire Upon the Deep"), findsOneWidget);
  // });
  
}