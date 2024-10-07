
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:com.example.flutter_cubit_app/cubits/counter_cubit.dart';
import 'package:com.example.flutter_cubit_app/widgets/counter_display.dart';

class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		final counterCubit = context.watch<CounterCubit>();

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
									onPressed: () => counterCubit.increment(),
									child: Text('Increment'),
								),
								SizedBox(width: 16),
								ElevatedButton(
									onPressed: () => counterCubit.decrement(),
									child: Text('Decrement'),
								),
							],
						),
					],
				),
			),
		);
	}
}
