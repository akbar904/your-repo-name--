
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/widgets/counter_display.dart';

void main() {
	group('CounterDisplay Widget Tests', () {
		testWidgets('Displays counter value correctly', (WidgetTester tester) async {
			// Arrange
			const counterValue = 5;
			await tester.pumpWidget(
				MaterialApp(
					home: Scaffold(
						body: CounterDisplay(counterValue: counterValue),
					),
				),
			);

			// Act
			final counterTextFinder = find.text('$counterValue');

			// Assert
			expect(counterTextFinder, findsOneWidget);
		});
	});
}
