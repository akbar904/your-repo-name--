
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubits/counter_cubit.dart';
import 'cubits/dark_mode_cubit.dart';
import 'screens/home_screen.dart';

void main() {
	runApp(MyApp());
}

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MultiBlocProvider(
			providers: [
				BlocProvider(create: (context) => CounterCubit()),
				BlocProvider(create: (context) => DarkModeCubit()),
			],
			child: BlocBuilder<DarkModeCubit, bool>(
				builder: (context, isDarkMode) {
					return MaterialApp(
						title: 'Counter App',
						theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
						home: HomeScreen(),
					);
				},
			),
		);
	}
}
