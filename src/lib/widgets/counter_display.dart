
import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
	final int counterValue;

	const CounterDisplay({Key? key, required this.counterValue}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		// The UI might need to adapt to dark mode, so we can change the text color 
		// based on the current theme.
		return Center(
			child: Text(
				'$counterValue',
				style: TextStyle(
					fontSize: 24,
					color: Theme.of(context).textTheme.bodyText1?.color,
				),
			),
		);
	}
}
