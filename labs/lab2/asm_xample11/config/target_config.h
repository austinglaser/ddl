/*****************************************************************************
 *   config.h:  config file for blinky example for NXP LPC11xx Family
 *   Microprocessors
 *
 *   Copyright(C) 2008, NXP Semiconductor
 *   All rights reserved.
 *
 *   History
 *   2009.12.07  ver 1.00    Preliminary version, first Release
 *
******************************************************************************/

#define LED_PORT 0		// Port for led
#define LED_BIT 7		// Bit on port for led
#define LED_ON 1		// Level to set port to turn on led
#define LED_OFF 0		// Level to set port to turn off led
#define ADC_DEBUG				1	// For the demo code, we run in debug mode
#define SEMIHOSTED_ADC_OUTPUT	1	// Generate printf output in the debugger
#define OUTPUT_ONLY_CH0			1	// We only output channel 0- this channel has
									// a potentiometer on it on the LPCXpresso
									// baseboard.

/*********************************************************************************
**                            End Of File
*********************************************************************************/
