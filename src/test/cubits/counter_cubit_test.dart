
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:com.example.flutter_cubit_app/lib/cubits/counter_cubit.dart';

class MockCounterCubit extends Mock implements CounterCubit {}

void main() {
	group('CounterCubit', () {
		late CounterCubit counterCubit;

		setUp(() {
			counterCubit = CounterCubit();
		});

		tearDown(() {
			counterCubit.close();
		});

		test('initial state is 0', () {
			expect(counterCubit.state.value, equals(0));
		});

		blocTest<CounterCubit, Counter>(
			'emits [Counter(value: 1)] when increment is called',
			build: () => counterCubit,
			act: (cubit) => cubit.increment(),
			expect: () => [Counter(value: 1)],
		);

		blocTest<CounterCubit, Counter>(
			'emits [Counter(value: -1)] when decrement is called',
			build: () => counterCubit,
			act: (cubit) => cubit.decrement(),
			expect: () => [Counter(value: -1)],
		);
	});
}
