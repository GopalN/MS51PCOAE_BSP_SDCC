#include "MS51_32K.h"
#include "TM1650.h"

extern void Init_I2C(void);
extern void I2C_start(void);
extern void I2C_stop(void);
extern void I2C_write(char);

void TM1650_init(unsigned char brightness_level)
{
	Init_I2C();
	TM1650_write(Command_address, brightness_level);
}




void TM1650_write(unsigned char address, unsigned char value)
{
	I2C_start();
	I2C_write(address);
	I2C_write(value);
	I2C_stop();
}


void TM1650_Send_Buff(unsigned char *buff)
{
	int i;

	for(i=0;i< 4;i++)
	{
		TM1650_write(Display_address+(i*2),buff[i]);
	}
}



