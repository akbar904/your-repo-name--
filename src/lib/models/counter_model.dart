
class Counter {
	int value;

	Counter({required this.value});

	void increment(int step) {
		value += step;
	}

	void decrement(int step) {
		value -= step;
	}

	void reset() {
		value = 0;
	}
}
