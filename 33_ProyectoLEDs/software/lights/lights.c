#include <stdio.h>
#include <unistd.h>
#include "system.h"
#include "alt_types.h"
#include "altera_avalon_pio_regs.h"

int main()
{
	unsigned char switches;
	printf("Hello from Nios II!\n");
	printf("EE604 Introduccion a Microcontroladores - 3er Laboratorio 2024-1\n");
	while (1) {
		switches = IORD(SWITCHES_BASE, 0);
		IOWR(LEDS_BASE, 0, switches);
		usleep(275*1000);
		switches = switches ^ 0xff;
		IOWR(LEDS_BASE, 0, switches);
		usleep(275*1000);
	}
  return 0;
}
