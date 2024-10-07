
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:com.example.flutter_cubit_app/lib/models/counter_model.dart';

class CounterCubit extends Cubit<Counter> {
	CounterCubit() : super(Counter(value: 0));

	void increment(int step) => emit(Counter(value: state.value + step));

	void decrement(int step) => emit(Counter(value: state.value - step));

	void reset() => emit(Counter(value: 0));
}
