import 'package:appfinanzas/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:appfinanzas/main.dart'; // Asegúrate de importar tu archivo principal

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FinanzasApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Navigates to home screen after registration', (WidgetTester tester) async {
    await tester.pumpWidget(const FinanzasApp());

    // Tap the 'REGISTRARSE' tab
    await tester.tap(find.text('REGISTRARSE'));
    await tester.pumpAndSettle();

    // Enter registration details
    await tester.enterText(find.byType(TextFormField).at(0), 'Test User');
    await tester.enterText(find.byType(TextFormField).at(1), 'test@example.com');
    await tester.enterText(find.byType(TextFormField).at(2), 'password');
    await tester.enterText(find.byType(TextFormField).at(3), '1234567890');

    // Tap the register button
    await tester.tap(find.text('REGISTRARSE'));
    await tester.pumpAndSettle();

    // Verify that the home screen is displayed
    expect(find.byType(HomeScreen), findsOneWidget);
  });

  testWidgets('Navigates to home screen after login', (WidgetTester tester) async {
    await tester.pumpWidget(const FinanzasApp());

    // Tap the 'INICIAR SESIÓN' tab
    await tester.tap(find.text('INICIAR SESIÓN'));
    await tester.pumpAndSettle();

    // Enter email and password
    await tester.enterText(find.byType(TextFormField).at(0), 'test@example.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'password');

    // Tap the login button
    await tester.tap(find.text('INICIAR SESIÓN'));
    await tester.pumpAndSettle();

    // Verify that the home screen is displayed
    expect(find.byType(HomeScreen), findsOneWidget);
  });
}