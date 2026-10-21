import 'package:flutter_test/flutter_test.dart';
import 'package:ui_task/main.dart';

void main() {
  testWidgets('MyNotesApp renders splash screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyNotesApp());

    // Verify that splash screen title is visible.
    expect(find.text('MyNotes'), findsOneWidget);
    expect(find.text('Capture Ideas\nOrganize Your Thoughts'), findsOneWidget);
  });
}
