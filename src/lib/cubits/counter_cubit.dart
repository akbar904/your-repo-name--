
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:com.example.flutter_cubit_app/lib/models/counter_model.dart';

class CounterCubit extends Cubit<Counter> {
	CounterCubit() : super(Counter(value: 0));

	void increment() => emit(Counter(value: state.value + 1));

	void decrement() => emit(Counter(value: state.value - 1));
}
