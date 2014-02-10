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
// a 2 Hz 50% duty cycle signal
// for testing purposes
// MAKE SURE that the p2.1 isn't driven
// if you decide to use the internal
// trigger
#define INT_TRIG 1

#define TICK_1MS_PSC	  47999 			   //1 ms tick on timers
#define SWITCH_LENGTH	  10				   //10 s to switch between duty cycles
#define SWITCH_PERIOD	  (SWITCH_LENGTH*1000) // period for 1 ms tick

#if INT_TRIG == 1

#define TRIG_PERIOD		  500					// stimulate with 2 Hz signal

#endif

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
	/*
	 * Timer32 0 config
	 */

	// send clock to timer32 0
	LPC_SYSCON->SYSAHBCLKCTRL |= (0x01 << 9);

	// enable timer32 0
	LPC_TMR32B0->TCR = 0x01;

	// set prescaler for tick of 1 ms
	LPC_TMR32B0->PR = TICK_1MS_PSC;
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

	// set timer32 0 interrupt
	// set to match every 10 s (10 000 ms)
	LPC_TMR32B0->MR1 = SWITCH_PERIOD;
#if INT_TRIG == 1
	// set to match every 1/2 s (500 ms)
	LPC_TMR32B0->MR2 = TRIG_PERIOD;
#endif
	// set timer32 0 priority to 3 (lowest)
	NVIC_SetPriority(TIMER_32_0_IRQn,3);

	/*
	 * Enable interrupts
	 */

	// external interrupt
	// enable external interrupt on P2.1
	LPC_GPIO2 ->IE |= (0x01 << 1);
	// enable external interrupt in NVIC
	NVIC_EnableIRQ(EINT2_IRQn);

	// turn on timer32 0 interrupt
	LPC_TMR32B0->MCR |= (0x01 << 3);
#if INT_TRIG == 1
	// turn on match 2 interrupt
	LPC_TMR32B0->MCR |= (0x01 << 6);
#endif
	// enable timer32 0 interrupt
	NVIC_EnableIRQ(TIMER_32_0_IRQn);
}

volatile unsigned last_timer_value = 0;
volatile unsigned period = 0;
volatile unsigned pulse_width = 3;

void PIOINT2_IRQHandler(void) {
	// turn on LED
	LPC_GPIO0->DATA |= (0x01 << 7);

	// read timer value, calculate period
	unsigned this_timer_value = LPC_TMR32B0->TC;
	period = this_timer_value - last_timer_value;
	last_timer_value = this_timer_value;

	// figure out when to turn the LED back off; set up match interrupt
	unsigned pwm_length = (period*pulse_width)/4;
	LPC_TMR32B0->MR0 = this_timer_value + pwm_length;
	LPC_TMR32B0->MCR |= (0x01 << 0);

	// clear interrupt
	LPC_GPIO2 ->IC = (0x01 << 1);
}

void TIMER32_0_IRQHandler(void) {
	// TODO: pause counter

	// check which interrupt called us
	if (LPC_TMR32B0->IR & (0x01 << 0)) { // match 0 interrupt (LED turn off)
		LPC_GPIO0->DATA &= ~(0x01 << 7); // turn off LED

		LPC_TMR32B0->MCR &= ~(0x01 << 0); // turn off this interrupt
		LPC_TMR32B0->IR = (0x01 << 0); // clear interrupt (writing '1' clears)
	}
	if (LPC_TMR32B0->IR & (0x01 << 1)) { // match 1 interrupt (10 s pwm switch)
		if (pulse_width == 3) pulse_width = 1; // switch modes
		else				  pulse_width = 3;

		LPC_TMR32B0->MR1 += SWITCH_PERIOD;

		LPC_TMR32B0->IR = (0x01 << 1); // clear interrupt (writing '1' clears)
	}
#if INT_TRIG == 1
	if (LPC_TMR32B0->IR & (0x01 << 2)) { // match 2 interrupt (10 s pwm switch)
		LPC_TMR32B0->MR2 += TRIG_PERIOD; //

		LPC_GPIO2->DATA ^= (0x01 << 1);

		LPC_TMR32B0->IR = (0x01 << 2); // clear interrupt (writing '1' clears)
	}
#endif
}


int main(void) {
	GPIOInit();
	TIMERInit();
	INTERRUPTInit();

	// return to sleep after interrupt
	SCB->SCR |= (0x01 << 1);
	// sleep
	asm("wfi");

	// pedantic; we'll never see this
	while(1);
}
