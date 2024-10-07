
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_app/main.dart';

void main() {
	group('Main App Tests', () {
		// Test to ensure the app starts correctly and the home screen is displayed
		testWidgets('App launches and displays HomeScreen', (WidgetTester tester) async {
			// Build the app
			await tester.pumpWidget(MyApp());

			// Verify the home screen is displayed by checking for specific text or widget
			expect(find.text('Counter App'), findsOneWidget);
		});
	});
}
