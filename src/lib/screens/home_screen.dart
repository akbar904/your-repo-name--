
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:com.example.flutter_cubit_app/cubits/counter_cubit.dart';
import 'package:com.example.flutter_cubit_app/cubits/dark_mode_cubit.dart';
import 'package:com.example.flutter_cubit_app/widgets/counter_display.dart';

class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final counterCubit = context.watch<CounterCubit>();
		final darkModeCubit = context.watch<DarkModeCubit>();

		return Scaffold(
			appBar: AppBar(
				title: Text('Counter App'),
			),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						CounterDisplay(),
						Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: [
								ElevatedButton(
									onPressed: () => counterCubit.increment(1), // Default step value
									child: Text('Increment'),
								),
								SizedBox(width: 16),
								ElevatedButton(
									onPressed: () => counterCubit.decrement(1), // Default step value
									child: Text('Decrement'),
								),
								SizedBox(width: 16),
								ElevatedButton(
									onPressed: () => counterCubit.reset(),
									child: Text('Reset'),
								),
							],
						),
						SizedBox(height: 32),
						ElevatedButton(
							onPressed: () => darkModeCubit.toggleDarkMode(),
							child: Text('Toggle Dark Mode'),
						),
					],
				),
			),
		);
	}
}
