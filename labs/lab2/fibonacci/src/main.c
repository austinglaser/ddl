#include "driver_config.h"
#include "target_config.h"

#include "adc.h"
#include "gpio.h"
#include "timer32.h"
#include "uart.h"

#include <string.h>
#include <stdio.h>

extern int fibonacci(int n);

int decimal_to_morse(char dec, char morse_out[])
{
  if (dec > 0xF) return -1;

  char morse_lookup[16][6] = {
                                 {2, 2, 2, 2, 2, 0},  //0
                                 {1, 2, 2, 2, 2, 0},  //1
                                 {1, 1, 2, 2, 2, 0},  //2
                                 {1, 1, 1, 2, 2, 0},  //3
                                 {1, 1, 1, 1, 2, 0},  //4
                                 {1, 1, 1, 1, 1, 0},  //5
                                 {2, 1, 1, 1, 1, 0},  //6
                                 {2, 2, 1, 1, 1, 0},  //7
                                 {2, 2, 2, 1, 1, 0},  //8
                                 {2, 2, 2, 2, 1, 0},  //9
                                 {1, 2, 0, 0, 0, 0},  //A
                                 {2, 1, 1, 1, 0, 0},  //B
                                 {2, 1, 2, 1, 0, 0},  //C
                                 {2, 1, 1, 0, 0, 0},  //D
                                 {1, 0, 0, 0, 0, 0},  //E
                                 {1, 1, 2, 1, 0, 0}   //F
                                };

  memcpy(morse_out, morse_lookup[(int) dec], 6);

  return 0;
}

void translateFib(int fibNum, char message[])
{
	unsigned fib_val = fibonacci(fibNum);
	fib_val &= 0xFFFF;

	int i, j, nextval = 0;
	char morse_val[6];
	for (i = 3; i >= 0; i--) {
		decimal_to_morse(((fib_val >> (i*4)) & 0x0F), morse_val);

		for (j = 0; morse_val[j]; j++) {
			message[nextval] = morse_val[j];
			nextval++;
		}
		message[nextval] = 3;
		nextval++;
	}
	message[nextval] = 0;
}

int main(void) {
	  UARTInit(9600);

	  /* Initialize 32-bit timer 0. TIME_INTERVAL is defined as 10mS */
	  /* You may also want to use the Cortex SysTick timer to do this */
	  init_timer32(0, 479);

	  /* Enable timer 0. Our interrupt handler will begin incrementing
	   * the TimeTick global each time timer 0 matches and resets.
	   */
	  enable_timer32(0);

	  /* Initialize GPIO (sets up clock) */
	  GPIOInit();
	  /* Set LED port pin to output */
	  GPIOSetDir( LED_PORT, LED_BIT, 1 );

	char morse_encode[32];
	translateFib(20, morse_encode);

	int i;
	for (i = 0; morse_encode[i]; i++) {
		printf("%d", morse_encode[i]);
	}
	printf("\n");

	while (1);
}
