import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_template/main.dart';

void main() {
  testWidgets('App renders home page with title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify the home page title is displayed
    expect(find.text('Flutter Template'), findsOneWidget);
  });

  testWidgets('Bottom navigation switches between pages', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify initial page shows Dashboard
    expect(find.text('Dashboard'), findsOneWidget);

    // Tap Settings tab in bottom navigation (use the icon to be precise)
    await tester.tap(find.byIcon(Icons.settings_outlined));
    await tester.pumpAndSettle();

    // Verify Settings page content is now shown (1 in body, 1 in nav bar)
    expect(find.text('Dashboard'), findsNothing);

    // Tap Home tab to go back
    await tester.tap(find.byIcon(Icons.home_outlined));
    await tester.pumpAndSettle();

    // Verify Dashboard page is shown again
    expect(find.text('Dashboard'), findsOneWidget);
  });

  testWidgets('FAB navigates to detailed list', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Tap the FAB
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    // Verify we navigated to the details page
    expect(find.text('Details'), findsOneWidget);

    // Verify first list item is rendered
    expect(find.text('Detail 1'), findsOneWidget);

    // Scroll down to find the last item
    await tester.scrollUntilVisible(
      find.text('Detail 10'),
      300,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('Detail 10'), findsOneWidget);
  });
}
