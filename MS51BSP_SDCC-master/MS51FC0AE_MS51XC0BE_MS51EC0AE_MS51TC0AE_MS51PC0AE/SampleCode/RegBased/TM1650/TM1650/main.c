/*
 */
#include "MS51_32K.h"
#include "TM1650.h"

unsigned char sevencodes[14] =
{
  0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x00,0x40,0x7C,0x50
};
unsigned char disp_buff[4];
void main(void)
{
    char i;
    unsigned int delay1,delay2;
    unsigned char brightness;
    // Insert code
   TM1650_init(brightness_100_pc | display_on);
    while(1)
    {
        disp_buff[0]=0xFF;
        disp_buff[1]=0xFF;
        disp_buff[2]=0xFF;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

     for(delay1=5000;delay1!=0;delay1--)
            for(delay2=50;delay2!=0;delay2--);
             for(delay1=5000;delay1!=0;delay1--)
                    for(delay2=50;delay2!=0;delay2--);
             for(delay1=5000;delay1!=0;delay1--)
                    for(delay2=50;delay2!=0;delay2--);
         disp_buff[0]=0x00;
        disp_buff[1]=0x01;
        disp_buff[2]=0x00;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

        disp_buff[0]=0x00;
        disp_buff[1]=0x00;
        disp_buff[2]=0x01;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

        disp_buff[0]=0x00;
        disp_buff[1]=0x00;
        disp_buff[2]=0x02;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

        disp_buff[0]=0x00;
        disp_buff[1]=0x00;
        disp_buff[2]=0x04;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

        disp_buff[0]=0x00;
        disp_buff[1]=0x00;
        disp_buff[2]=0x08;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

        disp_buff[0]=0x00;
        disp_buff[1]=0x08;
        disp_buff[2]=0x00;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

        disp_buff[0]=0x08;
        disp_buff[1]=0x00;
        disp_buff[2]=0x00;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

        disp_buff[0]=0x10;
        disp_buff[1]=0x00;
        disp_buff[2]=0x00;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);

       disp_buff[0]=0x20;
        disp_buff[1]=0x00;
        disp_buff[2]=0x00;
        TM1650_Send_Buff(disp_buff);
        for(delay1=5000;delay1!=0;delay1--)
                for(delay2=50;delay2!=0;delay2--);



//        disp_buff[0]=sevencodes[8]|0x80;
//        disp_buff[1]=sevencodes[8]|0x80;
//        disp_buff[2]=sevencodes[8]|0x80;
//        TM1650_Send_Buff(disp_buff);
//        brightness=0x01;
//        for(i=0;i< 8;i++)
//        {
//            brightness <<= 1;
//            TM1650_init(brightness | display_on);
//
//
//            for(delay1=5000;delay1!=0;delay1--)
//                for(delay2=50;delay2!=0;delay2--);


//        }
    }


}
