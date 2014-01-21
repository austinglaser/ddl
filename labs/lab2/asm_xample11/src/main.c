extern int asm_sum(int x, int y);

int sum(int x, int y) {
	return x + y;
}

int main(void) {

	int i, j;

	i = sum(1, 2);
	j = asm_sum(5, 6);

	// Enter an infinite loop, just incrementing a counter
	volatile static int loop = 0;
	while (1) {
		loop++;
	}
}
