#ifdef __USE_CMSIS
#include "LPC11xx.h"
#endif

#define USE_HW_SPI 1

#define SCK_MASK 			(0x01 << 6)
#define SSEL_MASK			(0x01 << 7)
#define MISO_MASK			(0x01 << 8)
#define MOSI_MASK			(0x01 << 9)

#define IOCON_AF1_MASK 		(0x00000001)
#define IOCON_AFC_MASK		(~(0x00000007))

#define SSP_SR_TFE_MASK 	(0x01 << 0) 	// transmit fifo empty
#define SSP_SR_TNF_MASK		(0x01 << 1) 	// transmit fifo not full
#define SSP_SR_RNE_MASK 	(0x01 << 2) 	// recieve fifo not empty
#define SSP_SR_RFF_MASK		(0x01 << 3) 	// recieve fifo full
#define SSP_SR_BSY_MASK		(0x01 << 4) 	// SPI busy

#define SPI_DELAY_PERIOD 	5
#define TICK_1MS_PSC 		11999 			   //1 ms tick on timers

void CLK_Setup(void);
void SPI_Setup(void);
void TIMER_Setup(void);
void GPIO_Setup(void);

void FPGA_Reset(void);

// send a 10-bit frame of SPI data
unsigned SPI_Send_Frame(unsigned data);

int main(void)
{
	CLK_Setup();
	SPI_Setup();
	TIMER_Setup();
	GPIO_Setup();

	FPGA_Reset();

	volatile unsigned data_back;
	unsigned data = 0x000003FFF;
	unsigned i;
	while (1) {
		for (i = 0; i < 10; i++) {
			data_back = SPI_Send_Frame(data & ~(0x01 << i));
		}
	}

	return 0;
}

#if !USE_HW_SPI
void SPI_Delay(void)
{
	unsigned target = LPC_TMR32B0->TC + SPI_DELAY_PERIOD;

	while (LPC_TMR32B0->TC < target);
}
#endif

unsigned SPI_Send_Frame(unsigned data_out)
{
#if USE_HW_SPI
	unsigned data_in;

	// fill up transmit fifo
	while (!(LPC_SSP0->SR & SSP_SR_TFE_MASK));

	// send frame
	LPC_SSP0->DR = data_out;

	// wait for data in receive
	while (!(LPC_SSP0->SR & SSP_SR_RNE_MASK));

	// grab data
	data_in = LPC_SSP0->DR;

	// return how many bytes recieved
	return data_in;
#else

	unsigned data_in = 0;

	// set SSEL low
	LPC_GPIO2->DATA &= ~SSEL_MASK;

	// send out frame bit by bit
	for (bit = 0; bit < 10; bit ++ ) {
		// set bit of data
		unsigned bit = data_out & 0x01;
		data_out >>= 1;
		if (bit) LPC_GPIO2->DATA |=  MOSI_MASK;
		else	 LPC_GPIO2->DATA &= ~MOSI_MASK;

		// delay
		SPI_Delay();

		// set clock high
		LPC_GPIO2->DATA |= SCK_MASK;

		// read bit of data
		data_in <<= 1;
		bit = (LPC_GPIO2->DATA & MISO_MASK);
		if (bit) data_in |= 0x01;

		// delay
		SPI_Delay();

		// set clock low
		LPC_GPIO2->DATA &= ~SCK_MASK;
	}

	// set SSEL high
	LPC_GPIO2->DATA |= SSEL_MASK;

	SPI_Delay();

	return frame;
#endif
}

void FPGA_Reset(void) {
	LPC_GPIO1->DATA &= ~(0x01 << 7);

	unsigned target = LPC_TMR32B0->TC + 500;
	while (LPC_TMR32B0->TC < target);

	LPC_GPIO1->DATA |= (0x01 << 7);
}

void CLK_Setup(void)
{
	volatile int i;
	// activate external osc
	LPC_SYSCON->PDRUNCFG &= ~(0x01 << 7);
	for (i = 0; i < 200; i++) asm("nop");

	// set up clock output
	LPC_IOCON->PIO0_1 |= 0x01;  // select clock output alternate function

	LPC_SYSCON->CLKOUTUEN = 0x01;	// force update
	LPC_SYSCON->CLKOUTUEN = 0x00;
	LPC_SYSCON->CLKOUTUEN = 0x01;

	LPC_SYSCON->PDRUNCFG &= ~(0x01 << 7);

	LPC_SYSCON->SYSPLLCTRL = 0x60;		// multiplier of 1 gives 12 MHz
	LPC_SYSCON->SYSPLLCLKSEL = 0x01;

	LPC_SYSCON->SYSPLLCLKUEN = 0x01;	// toggle update reg
	LPC_SYSCON->SYSPLLCLKUEN = 0x00;
	LPC_SYSCON->SYSPLLCLKUEN = 0x01;

	// wait for PLL to lock
	while(!(LPC_SYSCON->SYSPLLSTAT & 0x01));

	// select pll output for system clock
	LPC_SYSCON->MAINCLKSEL = 0x03;  	// PLL output

	LPC_SYSCON->MAINCLKUEN = 0x01;		// force clock source update
	LPC_SYSCON->MAINCLKUEN = 0x00;
	LPC_SYSCON->MAINCLKUEN = 0x01;

	// wait till switched
	while (!(LPC_SYSCON->MAINCLKUEN & 0x01));
}

void TIMER_Setup(void) {
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


void SPI_Setup(void)
{
#if USE_HW_SPI
	volatile unsigned dummy;
	// -- IO -- //

	// Select pin alternate function 1
	LPC_IOCON->PIO0_2  &=  IOCON_AFC_MASK;	//Clear SSEL AF
	LPC_IOCON->PIO0_2  |=  IOCON_AF1_MASK;	//Set AF1

	LPC_IOCON->PIO2_11 &=  IOCON_AFC_MASK;	//Clear SCK AF
	LPC_IOCON->PIO2_11 |=  IOCON_AF1_MASK;	//Set AF1
	LPC_IOCON->SCK_LOC =   0x01; 			// select sck pin location

	LPC_IOCON->PIO0_8  &=  IOCON_AFC_MASK;	//Clear MOSI AF
	LPC_IOCON->PIO0_8  |=  IOCON_AF1_MASK;	//Set AF1

	LPC_IOCON->PIO0_9  &=  IOCON_AFC_MASK;	//Clear MISO AF
	LPC_IOCON->PIO0_9  |=  IOCON_AF1_MASK;	//Set AF1

	// -- CLOCK -- //

	// (SYSCLK = 12000000)/250 -> PCLK = 48000
	LPC_SYSCON->SYSAHBCLKCTRL |= (0x1<<11);
	//LPC_SYSCON->SSP0CLKDIV = 250;
	//LPC_SYSCON->SSP0CLKDIV = 25;
	LPC_SYSCON->SSP0CLKDIV = 1;

	// -- SPI -- //

	LPC_SYSCON->PRESETCTRL |= (0x01 << 0); // de-assert SSP0 reset

	// set first divider of 250 (PCLK / (CPSR*(SCR + 1)) = 48000/ (250*(191 + 1)) = 1
	LPC_SSP0->CPSR = 12;
	//LPC_SSP0->CPSR = 48;
	//LPC_SSP0->CPSR = 1;

	// set to 10 bit, spi frame, second divider of 191 + 1 (0xBF)
	//LPC_SSP0->CR0 = 0x0000BF09;
	//LPC_SSP0->CR0 = 0x00000909;
	LPC_SSP0->CR0 = 0x00000009;

	// enable SPI0 (set bit 1 in CR1)
	LPC_SSP0->CR1 |= (0x01 << 1);

	// flush recieve buffer
	while (LPC_SSP0->SR & SSP_SR_RNE_MASK) {
		dummy = LPC_SSP0->DR;
	}
#else
	// turn on GPIO clock
	LPC_SYSCON->SYSAHBCLKCTRL |= (0x01<<6);

	// set pins as outputs (SCK, SSEL, MOSI)
	LPC_GPIO2->DIR |= (SCK_MASK | SSEL_MASK | MOSI_MASK);

	// set pin 2.5 as input (MISO)
	LPC_GPIO2->DIR &= ~MISO_MASK;

	// set SSEL high by default
	LPC_GPIO2->DATA |= SSEL_MASK;

	// set SCK, MOSI low by default
	LPC_GPIO2->DATA &= ~(SCK_MASK | MOSI_MASK );
#endif
}

void GPIO_Setup(void) {
	LPC_GPIO1->DIR |= (0x01 << 7);

	LPC_GPIO1->DATA |= (0x01 << 7);
}
