/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* Copyright(c) 2020 nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/

//***********************************************************************************************************
//  Nuvoton Technoledge Corp.
//  Website: http://www.nuvoton.com
//  E-Mail : MicroC-8bit@nuvoton.com
//  Date   : Apr/29/2020
//***********************************************************************************************************

//***********************************************************************************************************
//  File Function: MS51 I2C master mode demo code, the Slave address = 0xA4
//
//   ____________            _____________
//  |            |   SDA    |             |
//  |            |<-------->|             |
//  |            |          |             |
//  |MS51(M)     |          | MS51(S)     |
//  |(I2C_Master)|          | (I2C_Slave) |
//  |            |   SCL    |             |
//  |            |--------->|             |
//  |____________|          |_____________|
//
//  The protocol of I2C is master: start -> write 10 byte(ACK) ->stop -> start ->read 10 byte(ACK) -> stop
//***********************************************************************************************************


#include "MS51_32K.h"


#define I2C_CLOCK                 13
#define I2C_SLAVE_ADDRESS         0xA4
#define I2C_WR                    0
#define I2C_RD                    1

#define LOOP_SIZE                 10

//========================================================================================================
void Init_I2C(void)
{
    P13_OPENDRAIN_MODE;          // Modify SCL pin to Open drain mode. don't forget the pull high resister in circuit
    P14_OPENDRAIN_MODE;          // Modify SDA pin to Open drain mode. don't forget the pull high resister in circuit

    /* Set I2C clock rate */
    I2CLK = I2C_CLOCK;

    /* Enable I2C */
    set_I2CON_I2CEN;
}
//========================================================================================================
void I2C_Error(void)
{
    //while (1);
}

void I2C_start(void)
{
    set_I2CON_STA;                                    /* Send Start bit to I2C EEPROM */
    clr_I2CON_SI;
    while (!SI);                                /*Check SI set or not  */
    if (I2STAT != 0x08)                         /*Check status value after every step   */
        I2C_Error();
}

void I2C_stop(void)
{
    set_I2CON_STO;
    clr_I2CON_SI;
    while (STO);                                /* Check STOP signal */
}

void I2C_write(UINT8 u8DAT)
{
    clr_I2CON_STA;                                    /*STA=0*/
    I2DAT = (u8DAT);
    clr_I2CON_SI;
    while (!SI);                                /*Check SI set or not */
    if (I2STAT != 0x18)
        I2C_Error();
}




