                                 
#define no_of_segments                                   4
                                  
#define Command_address                                  0x48

#define Display_address                                  0x68
                                                             
#define brightness_5_pc                                  0x10
#define brightness_10_pc                                 0x20
#define brightness_25_pc                                 0x20
#define brightness_60_pc                                 0x40
#define brightness_70_pc                                 0x50
#define brightness_75_pc                                 0x60
#define brightness_80_pc                                 0x70
#define brightness_100_pc                                0x00

#define Seven_seg                                        0x08
#define Eight_Seg                                        0x00

#define display_off                                      0x00
#define display_on                                       0x01
                                    

void TM1650_init(unsigned char brightness_level);   
void TM1650_write(unsigned char address, unsigned char value);
void TM1650_Send_Buff(unsigned char *buff);