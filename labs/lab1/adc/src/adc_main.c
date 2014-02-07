/*****************************************************************************
 *   adctest.c:  main C entry file for NXP LPC11xx Family Microprocessors
 *
 *   Copyright(C) 2008, NXP Semiconductor
 *   All rights reserved.
 *
 *   History
 *   2009.12.07  ver 1.00    Preliminary version, first Release
 *
******************************************************************************/
#include "driver_config.h"
#include "target_config.h"

#include "adc.h"
#include "gpio.h"
#include "timer32.h"
#include "stdio.h"
#include "debug_printf.h"

#ifdef ADC_DEBUG
uint8_t ConvertDigital ( uint8_t digital )
{
  uint8_t ascii_char;

  if ( (digital >= 0) && (digital <= 9) )
  {
	ascii_char = digital + 0x30;	/* 0~9 */
  }
  else
  {
	ascii_char = digital - 0x0A;
	ascii_char += 0x41;				/* A~F */
  }
  return ( ascii_char );
}

#define BAR_OUTPUT_LENGTH 	60
#define ADC_COUNT_MAX 		1023
#define CHANNEL_WIDTH 		2
#define VOLT_WIDTH 			4
#define MAX_BAR_LENGTH 		(BAR_OUTPUT_LENGTH-CHANNEL_WIDTH-1-VOLT_WIDTH-1-2)
#define SUPPLY_VOLTAGE 		3.30
#define EDGE_OFFSET			0.1

void FillString(char *s, char c, uint32_t len)
{
	if(!len) *s = 0;
	else {
		while(--len)
			*s++ = c;
	}
}
void ADCBar(int32_t Channel, uint32_t Counts)
{
	uint32_t ValueBarLen = ((Counts * (MAX_BAR_LENGTH+1)) - (ADC_COUNT_MAX/2 - 1)) / ADC_COUNT_MAX;
	char ValueBarBuf[BAR_OUTPUT_LENGTH+1];
	double ValueVolts = Counts*SUPPLY_VOLTAGE/ADC_COUNT_MAX;

	if(Channel >= 0)
	{
		if(ValueBarLen > MAX_BAR_LENGTH) ValueBarLen = MAX_BAR_LENGTH;
		FillString(ValueBarBuf, '#', ValueBarLen);
		debug_printf("%2d %d.%02dV |%s%*s|\n", (int)Channel,
				(int)ValueVolts, (int)((ValueVolts-(int)ValueVolts)*100),
				ValueBarBuf, (int)(MAX_BAR_LENGTH-ValueBarLen), "");
	}
	else
	{
		FillString(ValueBarBuf, '-', MAX_BAR_LENGTH+2);
		debug_printf("%-9s%s\n", "", ValueBarBuf);
	}
}
#endif

/******************************************************************************
**   Main Function  main()
******************************************************************************/
int main (void)
{
	 /* Basic chip initialization is taken care of in SystemInit() called
	   * from the startup code. SystemInit() and chip settings are defined
	   * in the CMSIS system_<part family>.c file.
	   */

  /* Initialize ADC  */  ADCInit( ADC_CLK );

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

  /* LED Initialization code here */

  uint8_t led_on = 0;

  uint32_t last_edge = 0;
  uint32_t i = 0;

  double period[5] = {0.0,0.0,0.0,0.0,0.0};

  while(1)
  {
	/* Read one sample from the ADC port 'AD0' */
	ADCRead( 0 );
	while ( !ADCIntDone );
	ADCIntDone = 0;

	double adc_voltage = ADCValue[0]*SUPPLY_VOLTAGE/ADC_COUNT_MAX;

	if (adc_voltage > SUPPLY_VOLTAGE*.6 + .2 && !led_on) {
		uint32_t cur_edge = timer32_0_counter;
		period[i] = cur_edge - last_edge;
		i++;

		last_edge = cur_edge;

		GPIOSetValue(LED_PORT, LED_BIT, LED_ON);
		led_on = 1;

		//printf("(%d)\t%f:\t\t%f\n",cur_edge,period, 100/(period));
	}
	else if (adc_voltage < SUPPLY_VOLTAGE*.6 - .2 && led_on)	{
		GPIOSetValue(LED_PORT, LED_BIT, LED_OFF);
		led_on = 0;
	}

	if (i == 5) {
		double avg_period = 0;

		uint32_t idx;
		for (idx = 0; idx < 5; idx++) avg_period += period[idx];
		avg_period /= 5;

		printf("%f\t\t%f\n", 100000/avg_period, avg_period);

		i = 0;
	}


//#ifdef ADC_DEBUG
//	/* Print ADC Voltage as a real-time bar graph */
//	ADCBar(0, ADCValue[0]);
//#endif

	/* LED lighting and analog signal frequency calculation and printing code here */


  }
}

/******************************************************************************
**                            End Of File
******************************************************************************/
