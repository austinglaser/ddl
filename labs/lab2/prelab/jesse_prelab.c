void decimal_to_morse(uint8_t dec, char * morse_out[5])
{

struct Morse{
	char zero[5] = {1, 1, 1, 1, 1};
	char one[5] = {0, 1, 1, 1, 1};
	char two[5] = {0, 0, 1, 1, 1};
	char three[5] = {0, 0, 0, 1, 1};
	char four[5] = {0, 0, 0, 0, 1};
	char five[5] = {0, 0, 0, 0, 0};
	char six[5] = {1, 0, 0, 0, 0};
	char seven[5] = {1, 1, 0, 0, 0};
	char eight[5] = {1, 1, 1, 0, 0};
	char nine[5] = {1, 1, 1, 1, 0};
};

struct Morse morse;
//there's probably an easier way to do this that doesn't involve such type casting. what do you think?
*morse_out = (char *)(((void*)&morse) + dec*5);//this is assuming that the struct is byte aligned in memory. Also, should we use something like lenof(morse.zero) instead of the 5 multiplier?
}
