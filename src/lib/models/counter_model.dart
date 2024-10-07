
class Counter {
	int value;

	Counter({required this.value});

	void increment() {
		value += 1;
	}

	void decrement() {
		value -= 1;
	}
}
