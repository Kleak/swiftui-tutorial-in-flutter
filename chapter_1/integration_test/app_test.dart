// This is a basic Flutter integration test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:landmarks/main.dart' as app;
import 'package:landmarks/src/data/landmarks.dart';
import 'package:landmarks/src/widgets/landmark_row.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Check app flow', (WidgetTester tester) async {
    app.main();

    await tester.pumpAndSettle();

    expect(find.byWidgetPredicate((widget) => widget is LandmarkRow, skipOffstage: false).evaluate().length, 12);

    //  verify if show only favorite filter correctly
    await tester.tap(find.byWidgetPredicate((widget) => widget is CupertinoSwitch, skipOffstage: false));
    await tester.pumpAndSettle();
    expect(find.byWidgetPredicate((widget) => widget is LandmarkRow, skipOffstage: false).evaluate().length, 3);

    //  desactivate show only favotire
    await tester.tap(find.byWidgetPredicate((widget) => widget is CupertinoSwitch, skipOffstage: false));
    await tester.pumpAndSettle();
    expect(find.byWidgetPredicate((widget) => widget is LandmarkRow, skipOffstage: false).evaluate().length, 12);

    //  start flow to favorite a park
    await tester.tap(find.text(landmarks.elementAt(1).name));
    await tester.pumpAndSettle();
    expect(find.text(landmarks.elementAt(1).name), findsOneWidget);
    expect(find.byIcon(CupertinoIcons.star), findsOneWidget);

    //  put the park into favorite
    await tester.tap(find.byIcon(CupertinoIcons.star));
    await tester.pump();
    expect(find.byIcon(CupertinoIcons.star_fill), findsOneWidget);

    //  go back on the park list
    await tester.pageBack();
    await tester.pumpAndSettle();

    //  verify if show only favorite filter correctly
    await tester.tap(find.byWidgetPredicate((widget) => widget is CupertinoSwitch, skipOffstage: false));
    await tester.pumpAndSettle();
    expect(find.byWidgetPredicate((widget) => widget is LandmarkRow, skipOffstage: false).evaluate().length, 4);

    //  remove park from favorite when we only show favorite
    //  go onto park detail
    await tester.tap(find.text(landmarks.elementAt(1).name));
    await tester.pumpAndSettle();

    // remove the park from favorite
    await tester.tap(find.byIcon(CupertinoIcons.star_fill));
    await tester.pump();
    expect(find.byIcon(CupertinoIcons.star), findsOneWidget);

    //  go back on the park list
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.byWidgetPredicate((widget) => widget is LandmarkRow, skipOffstage: false).evaluate().length, 3);
  });
}
