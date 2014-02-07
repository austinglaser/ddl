/*
 ===============================================================================
 Name        : main.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
 ===============================================================================
 */

#ifdef __USE_CMSIS
#include "LPC11xx.h"
#endif

#include <cr_section_macros.h>
#include "core_cm0.h"

// set high to high to generate
// a low-frequency 50% duty cycle signal
// for testing purposes
#define INT_TRIG 1

void GPIOInit(void) {
#if INT_TRIG == 0
	// set P2.1 as input
	LPC_GPIO2 ->DIR &= ~(0x01 << 1);
#else
	// set P2.1 as output and set low
	LPC_GPIO2 ->DIR |= (0x01 << 1);
	LPC_GPIO2 ->DATA = 0x00;
#endif

	// set LED pin (P0.7) as output and
	// turn it off
	LPC_GPIO0 ->DIR |= (0x01 << 7);
	LPC_GPIO0 ->DATA = 0x00;
}

void TIMERInit(void) {

}

void INTERRUPTInit(void) {
	/*
	 * Set interrupt parameters
	 */

	// set external interrupt on P2.1:
	// edge sensitive
	LPC_GPIO2 ->IS &= ~(0x01 << 1);
	//rising edge
	LPC_GPIO2 ->IEV |= (0x01 << 1);
	// set external interrupt priority to 3 (lowest)
	NVIC_SetPriority(EINT2_IRQn, 3);

	/*
	 * Enable interrupts
	 */

	// enable external interrupt on P2.1
	LPC_GPIO2 ->IE |= (0x01 << 1);

	// enable exernal interrupt in NVIC
	NVIC_EnableIRQ(EINT2_IRQn);
}

void PIOINT2_IRQHandler(void) {
	// Toggle pin
	LPC_GPIO0 ->DATA ^= (0x01 << 7);

	// clear interrupt
	LPC_GPIO2 ->IC = (0x01 << 1);
}

void TIMER32_0_IRQHandler(void) {

}

int main(void) {
	GPIOInit();
	TIMERInit();
	INTERRUPTInit();

	volatile int i;
	while (1) {
#if INT_TRIG == 1
		for (i = 0; i < 1000000; i++);

		// toggle interrupt pin
		LPC_GPIO2->DATA ^= (0x01 << 1);
#endif
	}
}
