
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter/material.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:com.example.flutter_cubit_app/screens/home_screen.dart';

// Mock classes
class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

void main() {
	group('HomeScreen Widget Tests', () {
		late CounterCubit counterCubit;

		setUp(() {
			counterCubit = MockCounterCubit();
		});

		testWidgets('should find counter display and buttons in HomeScreen', (WidgetTester tester) async {
			when(() => counterCubit.state).thenReturn(0);

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider.value(
						value: counterCubit,
						child: HomeScreen(),
					),
				),
			);

			expect(find.text('0'), findsOneWidget);
			expect(find.byType(ElevatedButton), findsNWidgets(2)); // Assuming two buttons for increment and decrement
		});

		testWidgets('should increment counter when increment button is tapped', (WidgetTester tester) async {
			when(() => counterCubit.state).thenReturn(0);

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider.value(
						value: counterCubit,
						child: HomeScreen(),
					),
				),
			);

			final incrementButton = find.widgetWithText(ElevatedButton, 'Increment');
			await tester.tap(incrementButton);

			verify(() => counterCubit.increment()).called(1);
		});

		testWidgets('should decrement counter when decrement button is tapped', (WidgetTester tester) async {
			when(() => counterCubit.state).thenReturn(0);

			await tester.pumpWidget(
				MaterialApp(
					home: BlocProvider.value(
						value: counterCubit,
						child: HomeScreen(),
					),
				),
			);

			final decrementButton = find.widgetWithText(ElevatedButton, 'Decrement');
			await tester.tap(decrementButton);

			verify(() => counterCubit.decrement()).called(1);
		});
	});
}
