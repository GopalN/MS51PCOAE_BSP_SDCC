                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART_Send_Data_PARM_2
                                     12 	.globl _SerialPort1_ISR
                                     13 	.globl _Serial_ISR
                                     14 	.globl _MOSI
                                     15 	.globl _P00
                                     16 	.globl _MISO
                                     17 	.globl _P01
                                     18 	.globl _RXD_1
                                     19 	.globl _P02
                                     20 	.globl _P03
                                     21 	.globl _STADC
                                     22 	.globl _P04
                                     23 	.globl _P05
                                     24 	.globl _TXD
                                     25 	.globl _P06
                                     26 	.globl _RXD
                                     27 	.globl _P07
                                     28 	.globl _IT0
                                     29 	.globl _IE0
                                     30 	.globl _IT1
                                     31 	.globl _IE1
                                     32 	.globl _TR0
                                     33 	.globl _TF0
                                     34 	.globl _TR1
                                     35 	.globl _TF1
                                     36 	.globl _P10
                                     37 	.globl _P11
                                     38 	.globl _P12
                                     39 	.globl _SCL
                                     40 	.globl _P13
                                     41 	.globl _SDA
                                     42 	.globl _P14
                                     43 	.globl _P15
                                     44 	.globl _TXD_1
                                     45 	.globl _P16
                                     46 	.globl _P17
                                     47 	.globl _RI
                                     48 	.globl _TI
                                     49 	.globl _RB8
                                     50 	.globl _TB8
                                     51 	.globl _REN
                                     52 	.globl _SM2
                                     53 	.globl _SM1
                                     54 	.globl _FE
                                     55 	.globl _SM0
                                     56 	.globl _P20
                                     57 	.globl _EX0
                                     58 	.globl _ET0
                                     59 	.globl _EX1
                                     60 	.globl _ET1
                                     61 	.globl _ES
                                     62 	.globl _EBOD
                                     63 	.globl _EADC
                                     64 	.globl _EA
                                     65 	.globl _P30
                                     66 	.globl _P31
                                     67 	.globl _P32
                                     68 	.globl _P33
                                     69 	.globl _P34
                                     70 	.globl _P35
                                     71 	.globl _P36
                                     72 	.globl _P37
                                     73 	.globl _PX0
                                     74 	.globl _PT0
                                     75 	.globl _PX1
                                     76 	.globl _PT1
                                     77 	.globl _PS
                                     78 	.globl _PBOD
                                     79 	.globl _PADC
                                     80 	.globl _I2CPX
                                     81 	.globl _AA
                                     82 	.globl _SI
                                     83 	.globl _STO
                                     84 	.globl _STA
                                     85 	.globl _I2CEN
                                     86 	.globl _CM_RL2
                                     87 	.globl _TR2
                                     88 	.globl _TF2
                                     89 	.globl _P
                                     90 	.globl _OV
                                     91 	.globl _RS0
                                     92 	.globl _RS1
                                     93 	.globl _F0
                                     94 	.globl _AC
                                     95 	.globl _CY
                                     96 	.globl _CLRPWM
                                     97 	.globl _PWMF
                                     98 	.globl _LOAD
                                     99 	.globl _PWMRUN
                                    100 	.globl _ADCHS0
                                    101 	.globl _ADCHS1
                                    102 	.globl _ADCHS2
                                    103 	.globl _ADCHS3
                                    104 	.globl _ETGSEL0
                                    105 	.globl _ETGSEL1
                                    106 	.globl _ADCS
                                    107 	.globl _ADCF
                                    108 	.globl _RI_1
                                    109 	.globl _TI_1
                                    110 	.globl _RB8_1
                                    111 	.globl _TB8_1
                                    112 	.globl _REN_1
                                    113 	.globl _SM2_1
                                    114 	.globl _SM1_1
                                    115 	.globl _FE_1
                                    116 	.globl _SM0_1
                                    117 	.globl _PIPS6
                                    118 	.globl _PIPS5
                                    119 	.globl _PIPS4
                                    120 	.globl _PIPS3
                                    121 	.globl _PIPS2
                                    122 	.globl _PIPS1
                                    123 	.globl _PIPS0
                                    124 	.globl _PIPS7
                                    125 	.globl _SC2CR1
                                    126 	.globl _SC2CR0
                                    127 	.globl _SC1CR1
                                    128 	.globl _SC1CR0
                                    129 	.globl _SC0CR1
                                    130 	.globl _SC0CR0
                                    131 	.globl _SC2TSR
                                    132 	.globl _SC2IS
                                    133 	.globl _SC2IE
                                    134 	.globl _SC2ETURD1
                                    135 	.globl _SC2ETURD0
                                    136 	.globl _SC2EGT
                                    137 	.globl _SC2DR
                                    138 	.globl _SC1TSR
                                    139 	.globl _SC1IS
                                    140 	.globl _SC1IE
                                    141 	.globl _SC1ETURD1
                                    142 	.globl _SC1ETURD0
                                    143 	.globl _SC1EGT
                                    144 	.globl _SC1DR
                                    145 	.globl _SC0TSR
                                    146 	.globl _SC0IS
                                    147 	.globl _SC0IE
                                    148 	.globl _SC0ETURD1
                                    149 	.globl _SC0ETURD0
                                    150 	.globl _SC0EGT
                                    151 	.globl _SC0DR
                                    152 	.globl _XTLCON
                                    153 	.globl _PWM3INTC
                                    154 	.globl _PWM3CON1
                                    155 	.globl _PWM3CON0
                                    156 	.globl _PWM3C1L
                                    157 	.globl _PWM3C0L
                                    158 	.globl _PWM3PL
                                    159 	.globl _EIPH2
                                    160 	.globl _EIP2
                                    161 	.globl _PWM3MEN
                                    162 	.globl _PWM3MD
                                    163 	.globl _PWM3C1H
                                    164 	.globl _PWM3C0H
                                    165 	.globl _PWM3PH
                                    166 	.globl _PWM2INTC
                                    167 	.globl _PWM2CON1
                                    168 	.globl _PWM2CON0
                                    169 	.globl _PWM2C1L
                                    170 	.globl _PWM2C0L
                                    171 	.globl _PWM2PL
                                    172 	.globl _PWM2MEN
                                    173 	.globl _PWM2MD
                                    174 	.globl _PWM2C1H
                                    175 	.globl _PWM2C0H
                                    176 	.globl _PWM2PH
                                    177 	.globl _PIOCON2
                                    178 	.globl _PWM1INTC
                                    179 	.globl _PWM1CON1
                                    180 	.globl _PWM1CON0
                                    181 	.globl _PWM1C1L
                                    182 	.globl _PWM1C0L
                                    183 	.globl _PWM1PL
                                    184 	.globl _PWM1MEN
                                    185 	.globl _PWM1MD
                                    186 	.globl _PWM1C1H
                                    187 	.globl _PWM1C0H
                                    188 	.globl _PWM1PH
                                    189 	.globl _AUXR8
                                    190 	.globl _AUXR7
                                    191 	.globl _AUXR6
                                    192 	.globl _AUXR5
                                    193 	.globl _AUXR4
                                    194 	.globl _AUXR3
                                    195 	.globl _AUXR2
                                    196 	.globl _P3DW
                                    197 	.globl _P2DW
                                    198 	.globl _P1DW
                                    199 	.globl _P0DW
                                    200 	.globl _AINDIDS1
                                    201 	.globl _RWKH
                                    202 	.globl _P3UP
                                    203 	.globl _P2UP
                                    204 	.globl _P1UP
                                    205 	.globl _P0UP
                                    206 	.globl _ADCSR
                                    207 	.globl _ADCCN
                                    208 	.globl _ADCSN
                                    209 	.globl _P2S
                                    210 	.globl _P2SR
                                    211 	.globl _P2M2
                                    212 	.globl _P2M1
                                    213 	.globl _ADCCON3
                                    214 	.globl _ADCBAH
                                    215 	.globl _ADCBAL
                                    216 	.globl _LVRDIS
                                    217 	.globl _SPCR2
                                    218 	.globl _PWM0C5L
                                    219 	.globl _PWM0C4L
                                    220 	.globl _PIOCON1
                                    221 	.globl _PWM0C5H
                                    222 	.globl _PWM0C4H
                                    223 	.globl _PWM0INTC
                                    224 	.globl _P1SR
                                    225 	.globl _P1S
                                    226 	.globl _P0SR
                                    227 	.globl _P0S
                                    228 	.globl _P3SR
                                    229 	.globl _P3S
                                    230 	.globl _EIPH1
                                    231 	.globl _EIP1
                                    232 	.globl _PORDIS
                                    233 	.globl _PWM0MD
                                    234 	.globl _PWM0MEN
                                    235 	.globl _PWM0DTCNT
                                    236 	.globl _PWM0DTEN
                                    237 	.globl _SCON_1
                                    238 	.globl _EIPH
                                    239 	.globl _AINDIDS0
                                    240 	.globl _SPDR
                                    241 	.globl _SPSR
                                    242 	.globl _SPCR
                                    243 	.globl _CAPCON4
                                    244 	.globl _CAPCON3
                                    245 	.globl _B
                                    246 	.globl _EIP
                                    247 	.globl _C2H
                                    248 	.globl _C2L
                                    249 	.globl _PIF
                                    250 	.globl _PIPEN
                                    251 	.globl _PINEN
                                    252 	.globl _PICON
                                    253 	.globl _ADCCON0
                                    254 	.globl _C1H
                                    255 	.globl _C1L
                                    256 	.globl _C0H
                                    257 	.globl _C0L
                                    258 	.globl _ADCDLY
                                    259 	.globl _ADCCON2
                                    260 	.globl _ADCCON1
                                    261 	.globl _ACC
                                    262 	.globl _PWM0CON1
                                    263 	.globl _PIOCON0
                                    264 	.globl _PWM0C3L
                                    265 	.globl _PWM0C2L
                                    266 	.globl _PWM0C1L
                                    267 	.globl _PWM0C0L
                                    268 	.globl _PWM0PL
                                    269 	.globl _PWM0CON0
                                    270 	.globl _PWM0FBD
                                    271 	.globl _PNP
                                    272 	.globl _PWM0C3H
                                    273 	.globl _PWM0C2H
                                    274 	.globl _PWM0C1H
                                    275 	.globl _PWM0C0H
                                    276 	.globl _PWM0PH
                                    277 	.globl _PSW
                                    278 	.globl _ADCMPH
                                    279 	.globl _ADCMPL
                                    280 	.globl _TH2
                                    281 	.globl _TL2
                                    282 	.globl _RCMP2H
                                    283 	.globl _RCMP2L
                                    284 	.globl _T2MOD
                                    285 	.globl _T2CON
                                    286 	.globl _TA
                                    287 	.globl _RH3
                                    288 	.globl _RL3
                                    289 	.globl _T3CON
                                    290 	.globl _ADCRH
                                    291 	.globl _ADCRL
                                    292 	.globl _I2ADDR
                                    293 	.globl _I2CON
                                    294 	.globl _I2TOC
                                    295 	.globl _I2CLK
                                    296 	.globl _I2STAT
                                    297 	.globl _I2DAT
                                    298 	.globl _SADDR_1
                                    299 	.globl _SADEN_1
                                    300 	.globl _SADEN
                                    301 	.globl _IP
                                    302 	.globl _IPH
                                    303 	.globl _TOE
                                    304 	.globl _P1M2
                                    305 	.globl _P1M1
                                    306 	.globl _P0M2
                                    307 	.globl _P0M1
                                    308 	.globl _P3
                                    309 	.globl _IAPCN
                                    310 	.globl _IAPFD
                                    311 	.globl _P3M2
                                    312 	.globl _P3M1
                                    313 	.globl _BODCON1
                                    314 	.globl _WDCON
                                    315 	.globl _SADDR
                                    316 	.globl _IE
                                    317 	.globl _IAPAH
                                    318 	.globl _IAPAL
                                    319 	.globl _IAPUEN
                                    320 	.globl _IAPTRG
                                    321 	.globl _BODCON0
                                    322 	.globl _AUXR1
                                    323 	.globl _P2
                                    324 	.globl _CHPCON
                                    325 	.globl _EIE1
                                    326 	.globl _EIE
                                    327 	.globl _SBUF_1
                                    328 	.globl _SBUF
                                    329 	.globl _SCON
                                    330 	.globl _CKEN
                                    331 	.globl _CKSWT
                                    332 	.globl _CKDIV
                                    333 	.globl _CAPCON2
                                    334 	.globl _CAPCON1
                                    335 	.globl _CAPCON0
                                    336 	.globl _SFRS
                                    337 	.globl _P1
                                    338 	.globl _WKCON
                                    339 	.globl _CKCON
                                    340 	.globl _TH1
                                    341 	.globl _TH0
                                    342 	.globl _TL1
                                    343 	.globl _TL0
                                    344 	.globl _TMOD
                                    345 	.globl _TCON
                                    346 	.globl _PCON
                                    347 	.globl _RWKL
                                    348 	.globl _RCTRIM1
                                    349 	.globl _RCTRIM0
                                    350 	.globl _DPH
                                    351 	.globl _DPL
                                    352 	.globl _SP
                                    353 	.globl _P0
                                    354 	.globl _uart1_receive_flag
                                    355 	.globl _uart0_receive_flag
                                    356 	.globl _PRINTFG
                                    357 	.globl _UART_Open_PARM_3
                                    358 	.globl _UART_Open_PARM_2
                                    359 	.globl _uart1_receive_data
                                    360 	.globl _uart0_receive_data
                                    361 	.globl _UART_Open
                                    362 	.globl _Receive_Data
                                    363 	.globl _UART_Send_Data
                                    364 ;--------------------------------------------------------
                                    365 ; special function registers
                                    366 ;--------------------------------------------------------
                                    367 	.area RSEG    (ABS,DATA)
      000000                        368 	.org 0x0000
                           000080   369 G$P0$0_0$0 == 0x0080
                           000080   370 _P0	=	0x0080
                           000081   371 G$SP$0_0$0 == 0x0081
                           000081   372 _SP	=	0x0081
                           000082   373 G$DPL$0_0$0 == 0x0082
                           000082   374 _DPL	=	0x0082
                           000083   375 G$DPH$0_0$0 == 0x0083
                           000083   376 _DPH	=	0x0083
                           000084   377 G$RCTRIM0$0_0$0 == 0x0084
                           000084   378 _RCTRIM0	=	0x0084
                           000085   379 G$RCTRIM1$0_0$0 == 0x0085
                           000085   380 _RCTRIM1	=	0x0085
                           000086   381 G$RWKL$0_0$0 == 0x0086
                           000086   382 _RWKL	=	0x0086
                           000087   383 G$PCON$0_0$0 == 0x0087
                           000087   384 _PCON	=	0x0087
                           000088   385 G$TCON$0_0$0 == 0x0088
                           000088   386 _TCON	=	0x0088
                           000089   387 G$TMOD$0_0$0 == 0x0089
                           000089   388 _TMOD	=	0x0089
                           00008A   389 G$TL0$0_0$0 == 0x008a
                           00008A   390 _TL0	=	0x008a
                           00008B   391 G$TL1$0_0$0 == 0x008b
                           00008B   392 _TL1	=	0x008b
                           00008C   393 G$TH0$0_0$0 == 0x008c
                           00008C   394 _TH0	=	0x008c
                           00008D   395 G$TH1$0_0$0 == 0x008d
                           00008D   396 _TH1	=	0x008d
                           00008E   397 G$CKCON$0_0$0 == 0x008e
                           00008E   398 _CKCON	=	0x008e
                           00008F   399 G$WKCON$0_0$0 == 0x008f
                           00008F   400 _WKCON	=	0x008f
                           000090   401 G$P1$0_0$0 == 0x0090
                           000090   402 _P1	=	0x0090
                           000091   403 G$SFRS$0_0$0 == 0x0091
                           000091   404 _SFRS	=	0x0091
                           000092   405 G$CAPCON0$0_0$0 == 0x0092
                           000092   406 _CAPCON0	=	0x0092
                           000093   407 G$CAPCON1$0_0$0 == 0x0093
                           000093   408 _CAPCON1	=	0x0093
                           000094   409 G$CAPCON2$0_0$0 == 0x0094
                           000094   410 _CAPCON2	=	0x0094
                           000095   411 G$CKDIV$0_0$0 == 0x0095
                           000095   412 _CKDIV	=	0x0095
                           000096   413 G$CKSWT$0_0$0 == 0x0096
                           000096   414 _CKSWT	=	0x0096
                           000097   415 G$CKEN$0_0$0 == 0x0097
                           000097   416 _CKEN	=	0x0097
                           000098   417 G$SCON$0_0$0 == 0x0098
                           000098   418 _SCON	=	0x0098
                           000099   419 G$SBUF$0_0$0 == 0x0099
                           000099   420 _SBUF	=	0x0099
                           00009A   421 G$SBUF_1$0_0$0 == 0x009a
                           00009A   422 _SBUF_1	=	0x009a
                           00009B   423 G$EIE$0_0$0 == 0x009b
                           00009B   424 _EIE	=	0x009b
                           00009C   425 G$EIE1$0_0$0 == 0x009c
                           00009C   426 _EIE1	=	0x009c
                           00009F   427 G$CHPCON$0_0$0 == 0x009f
                           00009F   428 _CHPCON	=	0x009f
                           0000A0   429 G$P2$0_0$0 == 0x00a0
                           0000A0   430 _P2	=	0x00a0
                           0000A2   431 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   432 _AUXR1	=	0x00a2
                           0000A3   433 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   434 _BODCON0	=	0x00a3
                           0000A4   435 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   436 _IAPTRG	=	0x00a4
                           0000A5   437 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   438 _IAPUEN	=	0x00a5
                           0000A6   439 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   440 _IAPAL	=	0x00a6
                           0000A7   441 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   442 _IAPAH	=	0x00a7
                           0000A8   443 G$IE$0_0$0 == 0x00a8
                           0000A8   444 _IE	=	0x00a8
                           0000A9   445 G$SADDR$0_0$0 == 0x00a9
                           0000A9   446 _SADDR	=	0x00a9
                           0000AA   447 G$WDCON$0_0$0 == 0x00aa
                           0000AA   448 _WDCON	=	0x00aa
                           0000AB   449 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   450 _BODCON1	=	0x00ab
                           0000AC   451 G$P3M1$0_0$0 == 0x00ac
                           0000AC   452 _P3M1	=	0x00ac
                           0000AD   453 G$P3M2$0_0$0 == 0x00ad
                           0000AD   454 _P3M2	=	0x00ad
                           0000AE   455 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   456 _IAPFD	=	0x00ae
                           0000AF   457 G$IAPCN$0_0$0 == 0x00af
                           0000AF   458 _IAPCN	=	0x00af
                           0000B0   459 G$P3$0_0$0 == 0x00b0
                           0000B0   460 _P3	=	0x00b0
                           0000B1   461 G$P0M1$0_0$0 == 0x00b1
                           0000B1   462 _P0M1	=	0x00b1
                           0000B2   463 G$P0M2$0_0$0 == 0x00b2
                           0000B2   464 _P0M2	=	0x00b2
                           0000B3   465 G$P1M1$0_0$0 == 0x00b3
                           0000B3   466 _P1M1	=	0x00b3
                           0000B4   467 G$P1M2$0_0$0 == 0x00b4
                           0000B4   468 _P1M2	=	0x00b4
                           0000B5   469 G$TOE$0_0$0 == 0x00b5
                           0000B5   470 _TOE	=	0x00b5
                           0000B7   471 G$IPH$0_0$0 == 0x00b7
                           0000B7   472 _IPH	=	0x00b7
                           0000B8   473 G$IP$0_0$0 == 0x00b8
                           0000B8   474 _IP	=	0x00b8
                           0000B9   475 G$SADEN$0_0$0 == 0x00b9
                           0000B9   476 _SADEN	=	0x00b9
                           0000BA   477 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   478 _SADEN_1	=	0x00ba
                           0000BB   479 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   480 _SADDR_1	=	0x00bb
                           0000BC   481 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   482 _I2DAT	=	0x00bc
                           0000BD   483 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   484 _I2STAT	=	0x00bd
                           0000BE   485 G$I2CLK$0_0$0 == 0x00be
                           0000BE   486 _I2CLK	=	0x00be
                           0000BF   487 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   488 _I2TOC	=	0x00bf
                           0000C0   489 G$I2CON$0_0$0 == 0x00c0
                           0000C0   490 _I2CON	=	0x00c0
                           0000C1   491 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   492 _I2ADDR	=	0x00c1
                           0000C2   493 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   494 _ADCRL	=	0x00c2
                           0000C3   495 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   496 _ADCRH	=	0x00c3
                           0000C4   497 G$T3CON$0_0$0 == 0x00c4
                           0000C4   498 _T3CON	=	0x00c4
                           0000C5   499 G$RL3$0_0$0 == 0x00c5
                           0000C5   500 _RL3	=	0x00c5
                           0000C6   501 G$RH3$0_0$0 == 0x00c6
                           0000C6   502 _RH3	=	0x00c6
                           0000C7   503 G$TA$0_0$0 == 0x00c7
                           0000C7   504 _TA	=	0x00c7
                           0000C8   505 G$T2CON$0_0$0 == 0x00c8
                           0000C8   506 _T2CON	=	0x00c8
                           0000C9   507 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   508 _T2MOD	=	0x00c9
                           0000CA   509 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   510 _RCMP2L	=	0x00ca
                           0000CB   511 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   512 _RCMP2H	=	0x00cb
                           0000CC   513 G$TL2$0_0$0 == 0x00cc
                           0000CC   514 _TL2	=	0x00cc
                           0000CD   515 G$TH2$0_0$0 == 0x00cd
                           0000CD   516 _TH2	=	0x00cd
                           0000CE   517 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   518 _ADCMPL	=	0x00ce
                           0000CF   519 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   520 _ADCMPH	=	0x00cf
                           0000D0   521 G$PSW$0_0$0 == 0x00d0
                           0000D0   522 _PSW	=	0x00d0
                           0000D1   523 G$PWM0PH$0_0$0 == 0x00d1
                           0000D1   524 _PWM0PH	=	0x00d1
                           0000D2   525 G$PWM0C0H$0_0$0 == 0x00d2
                           0000D2   526 _PWM0C0H	=	0x00d2
                           0000D3   527 G$PWM0C1H$0_0$0 == 0x00d3
                           0000D3   528 _PWM0C1H	=	0x00d3
                           0000D4   529 G$PWM0C2H$0_0$0 == 0x00d4
                           0000D4   530 _PWM0C2H	=	0x00d4
                           0000D5   531 G$PWM0C3H$0_0$0 == 0x00d5
                           0000D5   532 _PWM0C3H	=	0x00d5
                           0000D6   533 G$PNP$0_0$0 == 0x00d6
                           0000D6   534 _PNP	=	0x00d6
                           0000D7   535 G$PWM0FBD$0_0$0 == 0x00d7
                           0000D7   536 _PWM0FBD	=	0x00d7
                           0000D8   537 G$PWM0CON0$0_0$0 == 0x00d8
                           0000D8   538 _PWM0CON0	=	0x00d8
                           0000D9   539 G$PWM0PL$0_0$0 == 0x00d9
                           0000D9   540 _PWM0PL	=	0x00d9
                           0000DA   541 G$PWM0C0L$0_0$0 == 0x00da
                           0000DA   542 _PWM0C0L	=	0x00da
                           0000DB   543 G$PWM0C1L$0_0$0 == 0x00db
                           0000DB   544 _PWM0C1L	=	0x00db
                           0000DC   545 G$PWM0C2L$0_0$0 == 0x00dc
                           0000DC   546 _PWM0C2L	=	0x00dc
                           0000DD   547 G$PWM0C3L$0_0$0 == 0x00dd
                           0000DD   548 _PWM0C3L	=	0x00dd
                           0000DE   549 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   550 _PIOCON0	=	0x00de
                           0000DF   551 G$PWM0CON1$0_0$0 == 0x00df
                           0000DF   552 _PWM0CON1	=	0x00df
                           0000E0   553 G$ACC$0_0$0 == 0x00e0
                           0000E0   554 _ACC	=	0x00e0
                           0000E1   555 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   556 _ADCCON1	=	0x00e1
                           0000E2   557 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   558 _ADCCON2	=	0x00e2
                           0000E3   559 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   560 _ADCDLY	=	0x00e3
                           0000E4   561 G$C0L$0_0$0 == 0x00e4
                           0000E4   562 _C0L	=	0x00e4
                           0000E5   563 G$C0H$0_0$0 == 0x00e5
                           0000E5   564 _C0H	=	0x00e5
                           0000E6   565 G$C1L$0_0$0 == 0x00e6
                           0000E6   566 _C1L	=	0x00e6
                           0000E7   567 G$C1H$0_0$0 == 0x00e7
                           0000E7   568 _C1H	=	0x00e7
                           0000E8   569 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   570 _ADCCON0	=	0x00e8
                           0000E9   571 G$PICON$0_0$0 == 0x00e9
                           0000E9   572 _PICON	=	0x00e9
                           0000EA   573 G$PINEN$0_0$0 == 0x00ea
                           0000EA   574 _PINEN	=	0x00ea
                           0000EB   575 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   576 _PIPEN	=	0x00eb
                           0000EC   577 G$PIF$0_0$0 == 0x00ec
                           0000EC   578 _PIF	=	0x00ec
                           0000ED   579 G$C2L$0_0$0 == 0x00ed
                           0000ED   580 _C2L	=	0x00ed
                           0000EE   581 G$C2H$0_0$0 == 0x00ee
                           0000EE   582 _C2H	=	0x00ee
                           0000EF   583 G$EIP$0_0$0 == 0x00ef
                           0000EF   584 _EIP	=	0x00ef
                           0000F0   585 G$B$0_0$0 == 0x00f0
                           0000F0   586 _B	=	0x00f0
                           0000F1   587 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   588 _CAPCON3	=	0x00f1
                           0000F2   589 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   590 _CAPCON4	=	0x00f2
                           0000F3   591 G$SPCR$0_0$0 == 0x00f3
                           0000F3   592 _SPCR	=	0x00f3
                           0000F4   593 G$SPSR$0_0$0 == 0x00f4
                           0000F4   594 _SPSR	=	0x00f4
                           0000F5   595 G$SPDR$0_0$0 == 0x00f5
                           0000F5   596 _SPDR	=	0x00f5
                           0000F6   597 G$AINDIDS0$0_0$0 == 0x00f6
                           0000F6   598 _AINDIDS0	=	0x00f6
                           0000F7   599 G$EIPH$0_0$0 == 0x00f7
                           0000F7   600 _EIPH	=	0x00f7
                           0000F8   601 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   602 _SCON_1	=	0x00f8
                           0000F9   603 G$PWM0DTEN$0_0$0 == 0x00f9
                           0000F9   604 _PWM0DTEN	=	0x00f9
                           0000FA   605 G$PWM0DTCNT$0_0$0 == 0x00fa
                           0000FA   606 _PWM0DTCNT	=	0x00fa
                           0000FB   607 G$PWM0MEN$0_0$0 == 0x00fb
                           0000FB   608 _PWM0MEN	=	0x00fb
                           0000FC   609 G$PWM0MD$0_0$0 == 0x00fc
                           0000FC   610 _PWM0MD	=	0x00fc
                           0000FD   611 G$PORDIS$0_0$0 == 0x00fd
                           0000FD   612 _PORDIS	=	0x00fd
                           0000FE   613 G$EIP1$0_0$0 == 0x00fe
                           0000FE   614 _EIP1	=	0x00fe
                           0000FF   615 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   616 _EIPH1	=	0x00ff
                           0000AC   617 G$P3S$0_0$0 == 0x00ac
                           0000AC   618 _P3S	=	0x00ac
                           0000AD   619 G$P3SR$0_0$0 == 0x00ad
                           0000AD   620 _P3SR	=	0x00ad
                           0000B1   621 G$P0S$0_0$0 == 0x00b1
                           0000B1   622 _P0S	=	0x00b1
                           0000B2   623 G$P0SR$0_0$0 == 0x00b2
                           0000B2   624 _P0SR	=	0x00b2
                           0000B3   625 G$P1S$0_0$0 == 0x00b3
                           0000B3   626 _P1S	=	0x00b3
                           0000B4   627 G$P1SR$0_0$0 == 0x00b4
                           0000B4   628 _P1SR	=	0x00b4
                           0000B7   629 G$PWM0INTC$0_0$0 == 0x00b7
                           0000B7   630 _PWM0INTC	=	0x00b7
                           0000C4   631 G$PWM0C4H$0_0$0 == 0x00c4
                           0000C4   632 _PWM0C4H	=	0x00c4
                           0000C5   633 G$PWM0C5H$0_0$0 == 0x00c5
                           0000C5   634 _PWM0C5H	=	0x00c5
                           0000C6   635 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   636 _PIOCON1	=	0x00c6
                           0000CC   637 G$PWM0C4L$0_0$0 == 0x00cc
                           0000CC   638 _PWM0C4L	=	0x00cc
                           0000CD   639 G$PWM0C5L$0_0$0 == 0x00cd
                           0000CD   640 _PWM0C5L	=	0x00cd
                           0000F3   641 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   642 _SPCR2	=	0x00f3
                           0000FF   643 G$LVRDIS$0_0$0 == 0x00ff
                           0000FF   644 _LVRDIS	=	0x00ff
                           000084   645 G$ADCBAL$0_0$0 == 0x0084
                           000084   646 _ADCBAL	=	0x0084
                           000085   647 G$ADCBAH$0_0$0 == 0x0085
                           000085   648 _ADCBAH	=	0x0085
                           000086   649 G$ADCCON3$0_0$0 == 0x0086
                           000086   650 _ADCCON3	=	0x0086
                           000089   651 G$P2M1$0_0$0 == 0x0089
                           000089   652 _P2M1	=	0x0089
                           00008A   653 G$P2M2$0_0$0 == 0x008a
                           00008A   654 _P2M2	=	0x008a
                           00008B   655 G$P2SR$0_0$0 == 0x008b
                           00008B   656 _P2SR	=	0x008b
                           00008C   657 G$P2S$0_0$0 == 0x008c
                           00008C   658 _P2S	=	0x008c
                           00008D   659 G$ADCSN$0_0$0 == 0x008d
                           00008D   660 _ADCSN	=	0x008d
                           00008E   661 G$ADCCN$0_0$0 == 0x008e
                           00008E   662 _ADCCN	=	0x008e
                           00008F   663 G$ADCSR$0_0$0 == 0x008f
                           00008F   664 _ADCSR	=	0x008f
                           000092   665 G$P0UP$0_0$0 == 0x0092
                           000092   666 _P0UP	=	0x0092
                           000093   667 G$P1UP$0_0$0 == 0x0093
                           000093   668 _P1UP	=	0x0093
                           000094   669 G$P2UP$0_0$0 == 0x0094
                           000094   670 _P2UP	=	0x0094
                           000095   671 G$P3UP$0_0$0 == 0x0095
                           000095   672 _P3UP	=	0x0095
                           000097   673 G$RWKH$0_0$0 == 0x0097
                           000097   674 _RWKH	=	0x0097
                           000099   675 G$AINDIDS1$0_0$0 == 0x0099
                           000099   676 _AINDIDS1	=	0x0099
                           00009A   677 G$P0DW$0_0$0 == 0x009a
                           00009A   678 _P0DW	=	0x009a
                           00009B   679 G$P1DW$0_0$0 == 0x009b
                           00009B   680 _P1DW	=	0x009b
                           00009C   681 G$P2DW$0_0$0 == 0x009c
                           00009C   682 _P2DW	=	0x009c
                           00009D   683 G$P3DW$0_0$0 == 0x009d
                           00009D   684 _P3DW	=	0x009d
                           0000A1   685 G$AUXR2$0_0$0 == 0x00a1
                           0000A1   686 _AUXR2	=	0x00a1
                           0000A2   687 G$AUXR3$0_0$0 == 0x00a2
                           0000A2   688 _AUXR3	=	0x00a2
                           0000A3   689 G$AUXR4$0_0$0 == 0x00a3
                           0000A3   690 _AUXR4	=	0x00a3
                           0000A4   691 G$AUXR5$0_0$0 == 0x00a4
                           0000A4   692 _AUXR5	=	0x00a4
                           0000A5   693 G$AUXR6$0_0$0 == 0x00a5
                           0000A5   694 _AUXR6	=	0x00a5
                           0000A6   695 G$AUXR7$0_0$0 == 0x00a6
                           0000A6   696 _AUXR7	=	0x00a6
                           0000A7   697 G$AUXR8$0_0$0 == 0x00a7
                           0000A7   698 _AUXR8	=	0x00a7
                           0000A9   699 G$PWM1PH$0_0$0 == 0x00a9
                           0000A9   700 _PWM1PH	=	0x00a9
                           0000AA   701 G$PWM1C0H$0_0$0 == 0x00aa
                           0000AA   702 _PWM1C0H	=	0x00aa
                           0000AB   703 G$PWM1C1H$0_0$0 == 0x00ab
                           0000AB   704 _PWM1C1H	=	0x00ab
                           0000AC   705 G$PWM1MD$0_0$0 == 0x00ac
                           0000AC   706 _PWM1MD	=	0x00ac
                           0000AD   707 G$PWM1MEN$0_0$0 == 0x00ad
                           0000AD   708 _PWM1MEN	=	0x00ad
                           0000B1   709 G$PWM1PL$0_0$0 == 0x00b1
                           0000B1   710 _PWM1PL	=	0x00b1
                           0000B2   711 G$PWM1C0L$0_0$0 == 0x00b2
                           0000B2   712 _PWM1C0L	=	0x00b2
                           0000B3   713 G$PWM1C1L$0_0$0 == 0x00b3
                           0000B3   714 _PWM1C1L	=	0x00b3
                           0000B4   715 G$PWM1CON0$0_0$0 == 0x00b4
                           0000B4   716 _PWM1CON0	=	0x00b4
                           0000B5   717 G$PWM1CON1$0_0$0 == 0x00b5
                           0000B5   718 _PWM1CON1	=	0x00b5
                           0000B6   719 G$PWM1INTC$0_0$0 == 0x00b6
                           0000B6   720 _PWM1INTC	=	0x00b6
                           0000B7   721 G$PIOCON2$0_0$0 == 0x00b7
                           0000B7   722 _PIOCON2	=	0x00b7
                           0000B9   723 G$PWM2PH$0_0$0 == 0x00b9
                           0000B9   724 _PWM2PH	=	0x00b9
                           0000BA   725 G$PWM2C0H$0_0$0 == 0x00ba
                           0000BA   726 _PWM2C0H	=	0x00ba
                           0000BB   727 G$PWM2C1H$0_0$0 == 0x00bb
                           0000BB   728 _PWM2C1H	=	0x00bb
                           0000BC   729 G$PWM2MD$0_0$0 == 0x00bc
                           0000BC   730 _PWM2MD	=	0x00bc
                           0000BD   731 G$PWM2MEN$0_0$0 == 0x00bd
                           0000BD   732 _PWM2MEN	=	0x00bd
                           0000C1   733 G$PWM2PL$0_0$0 == 0x00c1
                           0000C1   734 _PWM2PL	=	0x00c1
                           0000C2   735 G$PWM2C0L$0_0$0 == 0x00c2
                           0000C2   736 _PWM2C0L	=	0x00c2
                           0000C3   737 G$PWM2C1L$0_0$0 == 0x00c3
                           0000C3   738 _PWM2C1L	=	0x00c3
                           0000C4   739 G$PWM2CON0$0_0$0 == 0x00c4
                           0000C4   740 _PWM2CON0	=	0x00c4
                           0000C5   741 G$PWM2CON1$0_0$0 == 0x00c5
                           0000C5   742 _PWM2CON1	=	0x00c5
                           0000C6   743 G$PWM2INTC$0_0$0 == 0x00c6
                           0000C6   744 _PWM2INTC	=	0x00c6
                           0000C9   745 G$PWM3PH$0_0$0 == 0x00c9
                           0000C9   746 _PWM3PH	=	0x00c9
                           0000CA   747 G$PWM3C0H$0_0$0 == 0x00ca
                           0000CA   748 _PWM3C0H	=	0x00ca
                           0000CB   749 G$PWM3C1H$0_0$0 == 0x00cb
                           0000CB   750 _PWM3C1H	=	0x00cb
                           0000CC   751 G$PWM3MD$0_0$0 == 0x00cc
                           0000CC   752 _PWM3MD	=	0x00cc
                           0000CD   753 G$PWM3MEN$0_0$0 == 0x00cd
                           0000CD   754 _PWM3MEN	=	0x00cd
                           0000CE   755 G$EIP2$0_0$0 == 0x00ce
                           0000CE   756 _EIP2	=	0x00ce
                           0000CF   757 G$EIPH2$0_0$0 == 0x00cf
                           0000CF   758 _EIPH2	=	0x00cf
                           0000D1   759 G$PWM3PL$0_0$0 == 0x00d1
                           0000D1   760 _PWM3PL	=	0x00d1
                           0000D2   761 G$PWM3C0L$0_0$0 == 0x00d2
                           0000D2   762 _PWM3C0L	=	0x00d2
                           0000D3   763 G$PWM3C1L$0_0$0 == 0x00d3
                           0000D3   764 _PWM3C1L	=	0x00d3
                           0000D4   765 G$PWM3CON0$0_0$0 == 0x00d4
                           0000D4   766 _PWM3CON0	=	0x00d4
                           0000D5   767 G$PWM3CON1$0_0$0 == 0x00d5
                           0000D5   768 _PWM3CON1	=	0x00d5
                           0000D6   769 G$PWM3INTC$0_0$0 == 0x00d6
                           0000D6   770 _PWM3INTC	=	0x00d6
                           0000D7   771 G$XTLCON$0_0$0 == 0x00d7
                           0000D7   772 _XTLCON	=	0x00d7
                           0000D9   773 G$SC0DR$0_0$0 == 0x00d9
                           0000D9   774 _SC0DR	=	0x00d9
                           0000DA   775 G$SC0EGT$0_0$0 == 0x00da
                           0000DA   776 _SC0EGT	=	0x00da
                           0000DB   777 G$SC0ETURD0$0_0$0 == 0x00db
                           0000DB   778 _SC0ETURD0	=	0x00db
                           0000DC   779 G$SC0ETURD1$0_0$0 == 0x00dc
                           0000DC   780 _SC0ETURD1	=	0x00dc
                           0000DD   781 G$SC0IE$0_0$0 == 0x00dd
                           0000DD   782 _SC0IE	=	0x00dd
                           0000DE   783 G$SC0IS$0_0$0 == 0x00de
                           0000DE   784 _SC0IS	=	0x00de
                           0000DF   785 G$SC0TSR$0_0$0 == 0x00df
                           0000DF   786 _SC0TSR	=	0x00df
                           0000E1   787 G$SC1DR$0_0$0 == 0x00e1
                           0000E1   788 _SC1DR	=	0x00e1
                           0000E2   789 G$SC1EGT$0_0$0 == 0x00e2
                           0000E2   790 _SC1EGT	=	0x00e2
                           0000E3   791 G$SC1ETURD0$0_0$0 == 0x00e3
                           0000E3   792 _SC1ETURD0	=	0x00e3
                           0000E4   793 G$SC1ETURD1$0_0$0 == 0x00e4
                           0000E4   794 _SC1ETURD1	=	0x00e4
                           0000E5   795 G$SC1IE$0_0$0 == 0x00e5
                           0000E5   796 _SC1IE	=	0x00e5
                           0000E6   797 G$SC1IS$0_0$0 == 0x00e6
                           0000E6   798 _SC1IS	=	0x00e6
                           0000E7   799 G$SC1TSR$0_0$0 == 0x00e7
                           0000E7   800 _SC1TSR	=	0x00e7
                           0000E9   801 G$SC2DR$0_0$0 == 0x00e9
                           0000E9   802 _SC2DR	=	0x00e9
                           0000EA   803 G$SC2EGT$0_0$0 == 0x00ea
                           0000EA   804 _SC2EGT	=	0x00ea
                           0000EB   805 G$SC2ETURD0$0_0$0 == 0x00eb
                           0000EB   806 _SC2ETURD0	=	0x00eb
                           0000EC   807 G$SC2ETURD1$0_0$0 == 0x00ec
                           0000EC   808 _SC2ETURD1	=	0x00ec
                           0000ED   809 G$SC2IE$0_0$0 == 0x00ed
                           0000ED   810 _SC2IE	=	0x00ed
                           0000EE   811 G$SC2IS$0_0$0 == 0x00ee
                           0000EE   812 _SC2IS	=	0x00ee
                           0000EF   813 G$SC2TSR$0_0$0 == 0x00ef
                           0000EF   814 _SC2TSR	=	0x00ef
                           0000F1   815 G$SC0CR0$0_0$0 == 0x00f1
                           0000F1   816 _SC0CR0	=	0x00f1
                           0000F2   817 G$SC0CR1$0_0$0 == 0x00f2
                           0000F2   818 _SC0CR1	=	0x00f2
                           0000F3   819 G$SC1CR0$0_0$0 == 0x00f3
                           0000F3   820 _SC1CR0	=	0x00f3
                           0000F4   821 G$SC1CR1$0_0$0 == 0x00f4
                           0000F4   822 _SC1CR1	=	0x00f4
                           0000F5   823 G$SC2CR0$0_0$0 == 0x00f5
                           0000F5   824 _SC2CR0	=	0x00f5
                           0000F6   825 G$SC2CR1$0_0$0 == 0x00f6
                           0000F6   826 _SC2CR1	=	0x00f6
                           0000F7   827 G$PIPS7$0_0$0 == 0x00f7
                           0000F7   828 _PIPS7	=	0x00f7
                           0000F9   829 G$PIPS0$0_0$0 == 0x00f9
                           0000F9   830 _PIPS0	=	0x00f9
                           0000FA   831 G$PIPS1$0_0$0 == 0x00fa
                           0000FA   832 _PIPS1	=	0x00fa
                           0000FB   833 G$PIPS2$0_0$0 == 0x00fb
                           0000FB   834 _PIPS2	=	0x00fb
                           0000FC   835 G$PIPS3$0_0$0 == 0x00fc
                           0000FC   836 _PIPS3	=	0x00fc
                           0000FD   837 G$PIPS4$0_0$0 == 0x00fd
                           0000FD   838 _PIPS4	=	0x00fd
                           0000FE   839 G$PIPS5$0_0$0 == 0x00fe
                           0000FE   840 _PIPS5	=	0x00fe
                           0000FF   841 G$PIPS6$0_0$0 == 0x00ff
                           0000FF   842 _PIPS6	=	0x00ff
                                    843 ;--------------------------------------------------------
                                    844 ; special function bits
                                    845 ;--------------------------------------------------------
                                    846 	.area RSEG    (ABS,DATA)
      000000                        847 	.org 0x0000
                           0000FF   848 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   849 _SM0_1	=	0x00ff
                           0000FF   850 G$FE_1$0_0$0 == 0x00ff
                           0000FF   851 _FE_1	=	0x00ff
                           0000FE   852 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   853 _SM1_1	=	0x00fe
                           0000FD   854 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   855 _SM2_1	=	0x00fd
                           0000FC   856 G$REN_1$0_0$0 == 0x00fc
                           0000FC   857 _REN_1	=	0x00fc
                           0000FB   858 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   859 _TB8_1	=	0x00fb
                           0000FA   860 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   861 _RB8_1	=	0x00fa
                           0000F9   862 G$TI_1$0_0$0 == 0x00f9
                           0000F9   863 _TI_1	=	0x00f9
                           0000F8   864 G$RI_1$0_0$0 == 0x00f8
                           0000F8   865 _RI_1	=	0x00f8
                           0000EF   866 G$ADCF$0_0$0 == 0x00ef
                           0000EF   867 _ADCF	=	0x00ef
                           0000EE   868 G$ADCS$0_0$0 == 0x00ee
                           0000EE   869 _ADCS	=	0x00ee
                           0000ED   870 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   871 _ETGSEL1	=	0x00ed
                           0000EC   872 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   873 _ETGSEL0	=	0x00ec
                           0000EB   874 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   875 _ADCHS3	=	0x00eb
                           0000EA   876 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   877 _ADCHS2	=	0x00ea
                           0000E9   878 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   879 _ADCHS1	=	0x00e9
                           0000E8   880 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   881 _ADCHS0	=	0x00e8
                           0000DF   882 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   883 _PWMRUN	=	0x00df
                           0000DE   884 G$LOAD$0_0$0 == 0x00de
                           0000DE   885 _LOAD	=	0x00de
                           0000DD   886 G$PWMF$0_0$0 == 0x00dd
                           0000DD   887 _PWMF	=	0x00dd
                           0000DC   888 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   889 _CLRPWM	=	0x00dc
                           0000D7   890 G$CY$0_0$0 == 0x00d7
                           0000D7   891 _CY	=	0x00d7
                           0000D6   892 G$AC$0_0$0 == 0x00d6
                           0000D6   893 _AC	=	0x00d6
                           0000D5   894 G$F0$0_0$0 == 0x00d5
                           0000D5   895 _F0	=	0x00d5
                           0000D4   896 G$RS1$0_0$0 == 0x00d4
                           0000D4   897 _RS1	=	0x00d4
                           0000D3   898 G$RS0$0_0$0 == 0x00d3
                           0000D3   899 _RS0	=	0x00d3
                           0000D2   900 G$OV$0_0$0 == 0x00d2
                           0000D2   901 _OV	=	0x00d2
                           0000D0   902 G$P$0_0$0 == 0x00d0
                           0000D0   903 _P	=	0x00d0
                           0000CF   904 G$TF2$0_0$0 == 0x00cf
                           0000CF   905 _TF2	=	0x00cf
                           0000CA   906 G$TR2$0_0$0 == 0x00ca
                           0000CA   907 _TR2	=	0x00ca
                           0000C8   908 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   909 _CM_RL2	=	0x00c8
                           0000C6   910 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   911 _I2CEN	=	0x00c6
                           0000C5   912 G$STA$0_0$0 == 0x00c5
                           0000C5   913 _STA	=	0x00c5
                           0000C4   914 G$STO$0_0$0 == 0x00c4
                           0000C4   915 _STO	=	0x00c4
                           0000C3   916 G$SI$0_0$0 == 0x00c3
                           0000C3   917 _SI	=	0x00c3
                           0000C2   918 G$AA$0_0$0 == 0x00c2
                           0000C2   919 _AA	=	0x00c2
                           0000C0   920 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   921 _I2CPX	=	0x00c0
                           0000BE   922 G$PADC$0_0$0 == 0x00be
                           0000BE   923 _PADC	=	0x00be
                           0000BD   924 G$PBOD$0_0$0 == 0x00bd
                           0000BD   925 _PBOD	=	0x00bd
                           0000BC   926 G$PS$0_0$0 == 0x00bc
                           0000BC   927 _PS	=	0x00bc
                           0000BB   928 G$PT1$0_0$0 == 0x00bb
                           0000BB   929 _PT1	=	0x00bb
                           0000BA   930 G$PX1$0_0$0 == 0x00ba
                           0000BA   931 _PX1	=	0x00ba
                           0000B9   932 G$PT0$0_0$0 == 0x00b9
                           0000B9   933 _PT0	=	0x00b9
                           0000B8   934 G$PX0$0_0$0 == 0x00b8
                           0000B8   935 _PX0	=	0x00b8
                           0000B7   936 G$P37$0_0$0 == 0x00b7
                           0000B7   937 _P37	=	0x00b7
                           0000B6   938 G$P36$0_0$0 == 0x00b6
                           0000B6   939 _P36	=	0x00b6
                           0000B5   940 G$P35$0_0$0 == 0x00b5
                           0000B5   941 _P35	=	0x00b5
                           0000B4   942 G$P34$0_0$0 == 0x00b4
                           0000B4   943 _P34	=	0x00b4
                           0000B3   944 G$P33$0_0$0 == 0x00b3
                           0000B3   945 _P33	=	0x00b3
                           0000B2   946 G$P32$0_0$0 == 0x00b2
                           0000B2   947 _P32	=	0x00b2
                           0000B1   948 G$P31$0_0$0 == 0x00b1
                           0000B1   949 _P31	=	0x00b1
                           0000B0   950 G$P30$0_0$0 == 0x00b0
                           0000B0   951 _P30	=	0x00b0
                           0000AF   952 G$EA$0_0$0 == 0x00af
                           0000AF   953 _EA	=	0x00af
                           0000AE   954 G$EADC$0_0$0 == 0x00ae
                           0000AE   955 _EADC	=	0x00ae
                           0000AD   956 G$EBOD$0_0$0 == 0x00ad
                           0000AD   957 _EBOD	=	0x00ad
                           0000AC   958 G$ES$0_0$0 == 0x00ac
                           0000AC   959 _ES	=	0x00ac
                           0000AB   960 G$ET1$0_0$0 == 0x00ab
                           0000AB   961 _ET1	=	0x00ab
                           0000AA   962 G$EX1$0_0$0 == 0x00aa
                           0000AA   963 _EX1	=	0x00aa
                           0000A9   964 G$ET0$0_0$0 == 0x00a9
                           0000A9   965 _ET0	=	0x00a9
                           0000A8   966 G$EX0$0_0$0 == 0x00a8
                           0000A8   967 _EX0	=	0x00a8
                           0000A0   968 G$P20$0_0$0 == 0x00a0
                           0000A0   969 _P20	=	0x00a0
                           00009F   970 G$SM0$0_0$0 == 0x009f
                           00009F   971 _SM0	=	0x009f
                           00009F   972 G$FE$0_0$0 == 0x009f
                           00009F   973 _FE	=	0x009f
                           00009E   974 G$SM1$0_0$0 == 0x009e
                           00009E   975 _SM1	=	0x009e
                           00009D   976 G$SM2$0_0$0 == 0x009d
                           00009D   977 _SM2	=	0x009d
                           00009C   978 G$REN$0_0$0 == 0x009c
                           00009C   979 _REN	=	0x009c
                           00009B   980 G$TB8$0_0$0 == 0x009b
                           00009B   981 _TB8	=	0x009b
                           00009A   982 G$RB8$0_0$0 == 0x009a
                           00009A   983 _RB8	=	0x009a
                           000099   984 G$TI$0_0$0 == 0x0099
                           000099   985 _TI	=	0x0099
                           000098   986 G$RI$0_0$0 == 0x0098
                           000098   987 _RI	=	0x0098
                           000097   988 G$P17$0_0$0 == 0x0097
                           000097   989 _P17	=	0x0097
                           000096   990 G$P16$0_0$0 == 0x0096
                           000096   991 _P16	=	0x0096
                           000096   992 G$TXD_1$0_0$0 == 0x0096
                           000096   993 _TXD_1	=	0x0096
                           000095   994 G$P15$0_0$0 == 0x0095
                           000095   995 _P15	=	0x0095
                           000094   996 G$P14$0_0$0 == 0x0094
                           000094   997 _P14	=	0x0094
                           000094   998 G$SDA$0_0$0 == 0x0094
                           000094   999 _SDA	=	0x0094
                           000093  1000 G$P13$0_0$0 == 0x0093
                           000093  1001 _P13	=	0x0093
                           000093  1002 G$SCL$0_0$0 == 0x0093
                           000093  1003 _SCL	=	0x0093
                           000092  1004 G$P12$0_0$0 == 0x0092
                           000092  1005 _P12	=	0x0092
                           000091  1006 G$P11$0_0$0 == 0x0091
                           000091  1007 _P11	=	0x0091
                           000090  1008 G$P10$0_0$0 == 0x0090
                           000090  1009 _P10	=	0x0090
                           00008F  1010 G$TF1$0_0$0 == 0x008f
                           00008F  1011 _TF1	=	0x008f
                           00008E  1012 G$TR1$0_0$0 == 0x008e
                           00008E  1013 _TR1	=	0x008e
                           00008D  1014 G$TF0$0_0$0 == 0x008d
                           00008D  1015 _TF0	=	0x008d
                           00008C  1016 G$TR0$0_0$0 == 0x008c
                           00008C  1017 _TR0	=	0x008c
                           00008B  1018 G$IE1$0_0$0 == 0x008b
                           00008B  1019 _IE1	=	0x008b
                           00008A  1020 G$IT1$0_0$0 == 0x008a
                           00008A  1021 _IT1	=	0x008a
                           000089  1022 G$IE0$0_0$0 == 0x0089
                           000089  1023 _IE0	=	0x0089
                           000088  1024 G$IT0$0_0$0 == 0x0088
                           000088  1025 _IT0	=	0x0088
                           000087  1026 G$P07$0_0$0 == 0x0087
                           000087  1027 _P07	=	0x0087
                           000087  1028 G$RXD$0_0$0 == 0x0087
                           000087  1029 _RXD	=	0x0087
                           000086  1030 G$P06$0_0$0 == 0x0086
                           000086  1031 _P06	=	0x0086
                           000086  1032 G$TXD$0_0$0 == 0x0086
                           000086  1033 _TXD	=	0x0086
                           000085  1034 G$P05$0_0$0 == 0x0085
                           000085  1035 _P05	=	0x0085
                           000084  1036 G$P04$0_0$0 == 0x0084
                           000084  1037 _P04	=	0x0084
                           000084  1038 G$STADC$0_0$0 == 0x0084
                           000084  1039 _STADC	=	0x0084
                           000083  1040 G$P03$0_0$0 == 0x0083
                           000083  1041 _P03	=	0x0083
                           000082  1042 G$P02$0_0$0 == 0x0082
                           000082  1043 _P02	=	0x0082
                           000082  1044 G$RXD_1$0_0$0 == 0x0082
                           000082  1045 _RXD_1	=	0x0082
                           000081  1046 G$P01$0_0$0 == 0x0081
                           000081  1047 _P01	=	0x0081
                           000081  1048 G$MISO$0_0$0 == 0x0081
                           000081  1049 _MISO	=	0x0081
                           000080  1050 G$P00$0_0$0 == 0x0080
                           000080  1051 _P00	=	0x0080
                           000080  1052 G$MOSI$0_0$0 == 0x0080
                           000080  1053 _MOSI	=	0x0080
                                   1054 ;--------------------------------------------------------
                                   1055 ; overlayable register banks
                                   1056 ;--------------------------------------------------------
                                   1057 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1058 	.ds 8
                                   1059 ;--------------------------------------------------------
                                   1060 ; internal ram data
                                   1061 ;--------------------------------------------------------
                                   1062 	.area DSEG    (DATA)
                           000000  1063 G$uart0_receive_data$0_0$0==.
      000024                       1064 _uart0_receive_data::
      000024                       1065 	.ds 1
                           000001  1066 G$uart1_receive_data$0_0$0==.
      000025                       1067 _uart1_receive_data::
      000025                       1068 	.ds 1
                           000002  1069 Luart.UART_Open$u8UARTPort$1_0$61==.
      000026                       1070 _UART_Open_PARM_2:
      000026                       1071 	.ds 1
                           000003  1072 Luart.UART_Open$u32Baudrate$1_0$61==.
      000027                       1073 _UART_Open_PARM_3:
      000027                       1074 	.ds 4
                           000007  1075 Luart.UART_Open$sloc0$0_1$0==.
      00002B                       1076 _UART_Open_sloc0_1_0:
      00002B                       1077 	.ds 4
                                   1078 ;--------------------------------------------------------
                                   1079 ; overlayable items in internal ram 
                                   1080 ;--------------------------------------------------------
                                   1081 	.area	OSEG    (OVR,DATA)
                           000000  1082 Luart.Receive_Data$c$1_0$65==.
      00005D                       1083 _Receive_Data_c_65536_65:
      00005D                       1084 	.ds 1
                                   1085 	.area	OSEG    (OVR,DATA)
                           000000  1086 Luart.UART_Send_Data$c$1_0$67==.
      00005D                       1087 _UART_Send_Data_PARM_2:
      00005D                       1088 	.ds 1
                                   1089 ;--------------------------------------------------------
                                   1090 ; indirectly addressable internal ram data
                                   1091 ;--------------------------------------------------------
                                   1092 	.area ISEG    (DATA)
                                   1093 ;--------------------------------------------------------
                                   1094 ; absolute internal ram data
                                   1095 ;--------------------------------------------------------
                                   1096 	.area IABS    (ABS,DATA)
                                   1097 	.area IABS    (ABS,DATA)
                                   1098 ;--------------------------------------------------------
                                   1099 ; bit data
                                   1100 ;--------------------------------------------------------
                                   1101 	.area BSEG    (BIT)
                           000000  1102 G$PRINTFG$0_0$0==.
      000001                       1103 _PRINTFG::
      000001                       1104 	.ds 1
                           000001  1105 G$uart0_receive_flag$0_0$0==.
      000002                       1106 _uart0_receive_flag::
      000002                       1107 	.ds 1
                           000002  1108 G$uart1_receive_flag$0_0$0==.
      000003                       1109 _uart1_receive_flag::
      000003                       1110 	.ds 1
                                   1111 ;--------------------------------------------------------
                                   1112 ; paged external ram data
                                   1113 ;--------------------------------------------------------
                                   1114 	.area PSEG    (PAG,XDATA)
                                   1115 ;--------------------------------------------------------
                                   1116 ; external ram data
                                   1117 ;--------------------------------------------------------
                                   1118 	.area XSEG    (XDATA)
                                   1119 ;--------------------------------------------------------
                                   1120 ; absolute external ram data
                                   1121 ;--------------------------------------------------------
                                   1122 	.area XABS    (ABS,XDATA)
                                   1123 ;--------------------------------------------------------
                                   1124 ; external initialized ram data
                                   1125 ;--------------------------------------------------------
                                   1126 	.area XISEG   (XDATA)
                                   1127 	.area HOME    (CODE)
                                   1128 	.area GSINIT0 (CODE)
                                   1129 	.area GSINIT1 (CODE)
                                   1130 	.area GSINIT2 (CODE)
                                   1131 	.area GSINIT3 (CODE)
                                   1132 	.area GSINIT4 (CODE)
                                   1133 	.area GSINIT5 (CODE)
                                   1134 	.area GSINIT  (CODE)
                                   1135 	.area GSFINAL (CODE)
                                   1136 	.area CSEG    (CODE)
                                   1137 ;--------------------------------------------------------
                                   1138 ; global & static initialisations
                                   1139 ;--------------------------------------------------------
                                   1140 	.area HOME    (CODE)
                                   1141 	.area GSINIT  (CODE)
                                   1142 	.area GSFINAL (CODE)
                                   1143 	.area GSINIT  (CODE)
                           000000  1144 	C$uart.c$14$1_0$68 ==.
                                   1145 ;	..\..\..\..\Library\StdDriver\src\uart.c:14: __bit PRINTFG = 0;
                                   1146 ;	assignBit
      00005F C2 01            [12] 1147 	clr	_PRINTFG
                           000002  1148 	C$uart.c$15$1_0$68 ==.
                                   1149 ;	..\..\..\..\Library\StdDriver\src\uart.c:15: __bit uart0_receive_flag = 0;
                                   1150 ;	assignBit
      000061 C2 02            [12] 1151 	clr	_uart0_receive_flag
                                   1152 ;--------------------------------------------------------
                                   1153 ; Home
                                   1154 ;--------------------------------------------------------
                                   1155 	.area HOME    (CODE)
                                   1156 	.area HOME    (CODE)
                                   1157 ;--------------------------------------------------------
                                   1158 ; code
                                   1159 ;--------------------------------------------------------
                                   1160 	.area CSEG    (CODE)
                                   1161 ;------------------------------------------------------------
                                   1162 ;Allocation info for local variables in function 'Serial_ISR'
                                   1163 ;------------------------------------------------------------
                           000000  1164 	G$Serial_ISR$0$0 ==.
                           000000  1165 	C$uart.c$20$0_0$53 ==.
                                   1166 ;	..\..\..\..\Library\StdDriver\src\uart.c:20: void Serial_ISR(void) __interrupt 4
                                   1167 ;	-----------------------------------------
                                   1168 ;	 function Serial_ISR
                                   1169 ;	-----------------------------------------
      0007CB                       1170 _Serial_ISR:
                           000007  1171 	ar7 = 0x07
                           000006  1172 	ar6 = 0x06
                           000005  1173 	ar5 = 0x05
                           000004  1174 	ar4 = 0x04
                           000003  1175 	ar3 = 0x03
                           000002  1176 	ar2 = 0x02
                           000001  1177 	ar1 = 0x01
                           000000  1178 	ar0 = 0x00
      0007CB C0 D0            [24] 1179 	push	psw
                           000002  1180 	C$uart.c$22$1_0$53 ==.
                                   1181 ;	..\..\..\..\Library\StdDriver\src\uart.c:22: _push_(SFRS);
      0007CD C0 91            [24] 1182 	push	_SFRS 
                           000004  1183 	C$uart.c$23$1_0$53 ==.
                                   1184 ;	..\..\..\..\Library\StdDriver\src\uart.c:23: if (RI)
      0007CF 30 98 08         [24] 1185 	jnb	_RI,00102$
                           000007  1186 	C$uart.c$25$2_0$54 ==.
                                   1187 ;	..\..\..\..\Library\StdDriver\src\uart.c:25: uart0_receive_flag = 1;
                                   1188 ;	assignBit
      0007D2 D2 02            [12] 1189 	setb	_uart0_receive_flag
                           000009  1190 	C$uart.c$26$2_0$54 ==.
                                   1191 ;	..\..\..\..\Library\StdDriver\src\uart.c:26: uart0_receive_data = SBUF;
      0007D4 85 99 24         [24] 1192 	mov	_uart0_receive_data,_SBUF
                           00000C  1193 	C$uart.c$27$2_0$54 ==.
                                   1194 ;	..\..\..\..\Library\StdDriver\src\uart.c:27: clr_SCON_RI;                                         // Clear RI (Receive Interrupt).
      0007D7 53 98 FE         [24] 1195 	anl	_SCON,#0xfe
      0007DA                       1196 00102$:
                           00000F  1197 	C$uart.c$30$1_0$53 ==.
                                   1198 ;	..\..\..\..\Library\StdDriver\src\uart.c:30: if (TI)
      0007DA A2 99            [12] 1199 	mov	c,_TI
                           000011  1200 	C$uart.c$37$1_0$53 ==.
                                   1201 ;	..\..\..\..\Library\StdDriver\src\uart.c:37: _pop_(SFRS);
      0007DC D0 91            [24] 1202 	pop	_SFRS 
                           000013  1203 	C$uart.c$38$1_0$53 ==.
                                   1204 ;	..\..\..\..\Library\StdDriver\src\uart.c:38: }
      0007DE D0 D0            [24] 1205 	pop	psw
                           000015  1206 	C$uart.c$38$1_0$53 ==.
                           000015  1207 	XG$Serial_ISR$0$0 ==.
      0007E0 32               [24] 1208 	reti
                                   1209 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1210 ;	eliminated unneeded push/pop dpl
                                   1211 ;	eliminated unneeded push/pop dph
                                   1212 ;	eliminated unneeded push/pop b
                                   1213 ;	eliminated unneeded push/pop acc
                                   1214 ;------------------------------------------------------------
                                   1215 ;Allocation info for local variables in function 'SerialPort1_ISR'
                                   1216 ;------------------------------------------------------------
                           000016  1217 	G$SerialPort1_ISR$0$0 ==.
                           000016  1218 	C$uart.c$42$1_0$57 ==.
                                   1219 ;	..\..\..\..\Library\StdDriver\src\uart.c:42: void SerialPort1_ISR(void) __interrupt 15
                                   1220 ;	-----------------------------------------
                                   1221 ;	 function SerialPort1_ISR
                                   1222 ;	-----------------------------------------
      0007E1                       1223 _SerialPort1_ISR:
                           000016  1224 	C$uart.c$44$1_0$57 ==.
                                   1225 ;	..\..\..\..\Library\StdDriver\src\uart.c:44: _push_(SFRS);
      0007E1 C0 91            [24] 1226 	push	_SFRS 
                           000018  1227 	C$uart.c$46$1_0$57 ==.
                                   1228 ;	..\..\..\..\Library\StdDriver\src\uart.c:46: if (RI_1 == 1)
      0007E3 30 F8 08         [24] 1229 	jnb	_RI_1,00102$
                           00001B  1230 	C$uart.c$48$2_0$58 ==.
                                   1231 ;	..\..\..\..\Library\StdDriver\src\uart.c:48: clr_SCON_1_RI_1;                             /* clear reception flag for next reception */
      0007E6 53 F8 FE         [24] 1232 	anl	_SCON_1,#0xfe
                           00001E  1233 	C$uart.c$49$2_0$58 ==.
                                   1234 ;	..\..\..\..\Library\StdDriver\src\uart.c:49: uart1_receive_data = SBUF_1;
      0007E9 85 9A 25         [24] 1235 	mov	_uart1_receive_data,_SBUF_1
                           000021  1236 	C$uart.c$50$2_0$58 ==.
                                   1237 ;	..\..\..\..\Library\StdDriver\src\uart.c:50: uart1_receive_flag = 1;
                                   1238 ;	assignBit
      0007EC D2 03            [12] 1239 	setb	_uart1_receive_flag
      0007EE                       1240 00102$:
                           000023  1241 	C$uart.c$53$1_0$57 ==.
                                   1242 ;	..\..\..\..\Library\StdDriver\src\uart.c:53: if (TI_1 == 1)
      0007EE 30 F9 06         [24] 1243 	jnb	_TI_1,00106$
                           000026  1244 	C$uart.c$55$2_0$59 ==.
                                   1245 ;	..\..\..\..\Library\StdDriver\src\uart.c:55: if (!PRINTFG)
      0007F1 20 01 03         [24] 1246 	jb	_PRINTFG,00106$
                           000029  1247 	C$uart.c$57$3_0$60 ==.
                                   1248 ;	..\..\..\..\Library\StdDriver\src\uart.c:57: clr_SCON_1_TI_1;                             /* if emission occur */
      0007F4 53 F8 FD         [24] 1249 	anl	_SCON_1,#0xfd
      0007F7                       1250 00106$:
                           00002C  1251 	C$uart.c$60$1_0$57 ==.
                                   1252 ;	..\..\..\..\Library\StdDriver\src\uart.c:60: _pop_(SFRS);
      0007F7 D0 91            [24] 1253 	pop	_SFRS 
                           00002E  1254 	C$uart.c$61$1_0$57 ==.
                                   1255 ;	..\..\..\..\Library\StdDriver\src\uart.c:61: }
                           00002E  1256 	C$uart.c$61$1_0$57 ==.
                           00002E  1257 	XG$SerialPort1_ISR$0$0 ==.
      0007F9 32               [24] 1258 	reti
                                   1259 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1260 ;	eliminated unneeded push/pop psw
                                   1261 ;	eliminated unneeded push/pop dpl
                                   1262 ;	eliminated unneeded push/pop dph
                                   1263 ;	eliminated unneeded push/pop b
                                   1264 ;	eliminated unneeded push/pop acc
                                   1265 ;------------------------------------------------------------
                                   1266 ;Allocation info for local variables in function 'UART_Open'
                                   1267 ;------------------------------------------------------------
                                   1268 ;u8UARTPort                Allocated with name '_UART_Open_PARM_2'
                                   1269 ;u32Baudrate               Allocated with name '_UART_Open_PARM_3'
                                   1270 ;u32SysClock               Allocated to registers r4 r5 r6 r7 
                                   1271 ;sloc0                     Allocated with name '_UART_Open_sloc0_1_0'
                                   1272 ;------------------------------------------------------------
                           00002F  1273 	G$UART_Open$0$0 ==.
                           00002F  1274 	C$uart.c$64$1_0$62 ==.
                                   1275 ;	..\..\..\..\Library\StdDriver\src\uart.c:64: void UART_Open(unsigned long u32SysClock, unsigned char u8UARTPort, unsigned long u32Baudrate)
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function UART_Open
                                   1278 ;	-----------------------------------------
      0007FA                       1279 _UART_Open:
      0007FA AC 82            [24] 1280 	mov	r4,dpl
      0007FC AD 83            [24] 1281 	mov	r5,dph
      0007FE AE F0            [24] 1282 	mov	r6,b
      000800 FF               [12] 1283 	mov	r7,a
                           000036  1284 	C$uart.c$66$1_0$62 ==.
                                   1285 ;	..\..\..\..\Library\StdDriver\src\uart.c:66: SFRS = 0;
                           000036  1286 	C$uart.c$67$1_0$62 ==.
                                   1287 ;	..\..\..\..\Library\StdDriver\src\uart.c:67: switch (u8UARTPort)
      000801 E4               [12] 1288 	clr	a
      000802 F5 91            [12] 1289 	mov	_SFRS,a
      000804 B5 26 02         [24] 1290 	cjne	a,_UART_Open_PARM_2,00119$
      000807 80 12            [24] 1291 	sjmp	00101$
      000809                       1292 00119$:
      000809 74 01            [12] 1293 	mov	a,#0x01
      00080B B5 26 02         [24] 1294 	cjne	a,_UART_Open_PARM_2,00120$
      00080E 80 71            [24] 1295 	sjmp	00102$
      000810                       1296 00120$:
      000810 74 02            [12] 1297 	mov	a,#0x02
      000812 B5 26 03         [24] 1298 	cjne	a,_UART_Open_PARM_2,00121$
      000815 02 08 FD         [24] 1299 	ljmp	00103$
      000818                       1300 00121$:
      000818 02 09 64         [24] 1301 	ljmp	00105$
                           000050  1302 	C$uart.c$69$2_0$63 ==.
                                   1303 ;	..\..\..\..\Library\StdDriver\src\uart.c:69: case UART0_Timer1:
      00081B                       1304 00101$:
                           000050  1305 	C$uart.c$70$2_0$63 ==.
                                   1306 ;	..\..\..\..\Library\StdDriver\src\uart.c:70: SCON = 0x50;            //UART0 Mode1,REN=1,TI=1
      00081B 75 98 50         [24] 1307 	mov	_SCON,#0x50
                           000053  1308 	C$uart.c$71$2_0$63 ==.
                                   1309 ;	..\..\..\..\Library\StdDriver\src\uart.c:71: TMOD |= 0x20;           //Timer1 Mode1
      00081E 43 89 20         [24] 1310 	orl	_TMOD,#0x20
                           000056  1311 	C$uart.c$72$2_0$63 ==.
                                   1312 ;	..\..\..\..\Library\StdDriver\src\uart.c:72: set_PCON_SMOD;          //UART0 Double Rate Enable
      000821 43 87 80         [24] 1313 	orl	_PCON,#0x80
                           000059  1314 	C$uart.c$73$2_0$63 ==.
                                   1315 ;	..\..\..\..\Library\StdDriver\src\uart.c:73: set_CKCON_T1M;
      000824 75 91 00         [24] 1316 	mov	_SFRS,#0x00
      000827 43 8E 10         [24] 1317 	orl	_CKCON,#0x10
                           00005F  1318 	C$uart.c$74$2_0$63 ==.
                                   1319 ;	..\..\..\..\Library\StdDriver\src\uart.c:74: clr_T3CON_BRCK;          //Serial port 0 baud rate clock source = Timer1
      00082A 75 91 00         [24] 1320 	mov	_SFRS,#0x00
      00082D 53 C4 DF         [24] 1321 	anl	_T3CON,#0xdf
                           000065  1322 	C$uart.c$75$2_0$63 ==.
                                   1323 ;	..\..\..\..\Library\StdDriver\src\uart.c:75: TH1 = 256 - (u32SysClock / 16 / u32Baudrate);
      000830 8C 00            [24] 1324 	mov	ar0,r4
      000832 ED               [12] 1325 	mov	a,r5
      000833 C4               [12] 1326 	swap	a
      000834 C8               [12] 1327 	xch	a,r0
      000835 C4               [12] 1328 	swap	a
      000836 54 0F            [12] 1329 	anl	a,#0x0f
      000838 68               [12] 1330 	xrl	a,r0
      000839 C8               [12] 1331 	xch	a,r0
      00083A 54 0F            [12] 1332 	anl	a,#0x0f
      00083C C8               [12] 1333 	xch	a,r0
      00083D 68               [12] 1334 	xrl	a,r0
      00083E C8               [12] 1335 	xch	a,r0
      00083F F9               [12] 1336 	mov	r1,a
      000840 EE               [12] 1337 	mov	a,r6
      000841 C4               [12] 1338 	swap	a
      000842 54 F0            [12] 1339 	anl	a,#0xf0
      000844 49               [12] 1340 	orl	a,r1
      000845 F9               [12] 1341 	mov	r1,a
      000846 8E 02            [24] 1342 	mov	ar2,r6
      000848 EF               [12] 1343 	mov	a,r7
      000849 C4               [12] 1344 	swap	a
      00084A CA               [12] 1345 	xch	a,r2
      00084B C4               [12] 1346 	swap	a
      00084C 54 0F            [12] 1347 	anl	a,#0x0f
      00084E 6A               [12] 1348 	xrl	a,r2
      00084F CA               [12] 1349 	xch	a,r2
      000850 54 0F            [12] 1350 	anl	a,#0x0f
      000852 CA               [12] 1351 	xch	a,r2
      000853 6A               [12] 1352 	xrl	a,r2
      000854 CA               [12] 1353 	xch	a,r2
      000855 FB               [12] 1354 	mov	r3,a
      000856 85 27 5D         [24] 1355 	mov	__divulong_PARM_2,_UART_Open_PARM_3
      000859 85 28 5E         [24] 1356 	mov	(__divulong_PARM_2 + 1),(_UART_Open_PARM_3 + 1)
      00085C 85 29 5F         [24] 1357 	mov	(__divulong_PARM_2 + 2),(_UART_Open_PARM_3 + 2)
      00085F 85 2A 60         [24] 1358 	mov	(__divulong_PARM_2 + 3),(_UART_Open_PARM_3 + 3)
      000862 88 82            [24] 1359 	mov	dpl,r0
      000864 89 83            [24] 1360 	mov	dph,r1
      000866 8A F0            [24] 1361 	mov	b,r2
      000868 EB               [12] 1362 	mov	a,r3
      000869 12 0A 23         [24] 1363 	lcall	__divulong
      00086C A8 82            [24] 1364 	mov	r0,dpl
      00086E A9 83            [24] 1365 	mov	r1,dph
      000870 AA F0            [24] 1366 	mov	r2,b
      000872 FB               [12] 1367 	mov	r3,a
      000873 C3               [12] 1368 	clr	c
      000874 E4               [12] 1369 	clr	a
      000875 98               [12] 1370 	subb	a,r0
      000876 F5 8D            [12] 1371 	mov	_TH1,a
                           0000AD  1372 	C$uart.c$76$2_0$63 ==.
                                   1373 ;	..\..\..\..\Library\StdDriver\src\uart.c:76: set_TCON_TR1;
      000878 43 88 40         [24] 1374 	orl	_TCON,#0x40
                           0000B0  1375 	C$uart.c$77$2_0$63 ==.
                                   1376 ;	..\..\..\..\Library\StdDriver\src\uart.c:77: set_IE_ES;
      00087B 43 A8 10         [24] 1377 	orl	_IE,#0x10
                           0000B3  1378 	C$uart.c$78$2_0$63 ==.
                                   1379 ;	..\..\..\..\Library\StdDriver\src\uart.c:78: break;
      00087E 02 09 64         [24] 1380 	ljmp	00105$
                           0000B6  1381 	C$uart.c$80$2_0$63 ==.
                                   1382 ;	..\..\..\..\Library\StdDriver\src\uart.c:80: case UART0_Timer3:
      000881                       1383 00102$:
                           0000B6  1384 	C$uart.c$81$2_0$63 ==.
                                   1385 ;	..\..\..\..\Library\StdDriver\src\uart.c:81: SCON = 0x50;          //UART0 Mode1,REN=1,TI=1
      000881 75 98 50         [24] 1386 	mov	_SCON,#0x50
                           0000B9  1387 	C$uart.c$82$2_0$63 ==.
                                   1388 ;	..\..\..\..\Library\StdDriver\src\uart.c:82: set_PCON_SMOD;        //UART0 Double Rate Enable
      000884 43 87 80         [24] 1389 	orl	_PCON,#0x80
                           0000BC  1390 	C$uart.c$83$2_0$63 ==.
                                   1391 ;	..\..\..\..\Library\StdDriver\src\uart.c:83: T3CON &= 0xF8;        //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
      000887 53 C4 F8         [24] 1392 	anl	_T3CON,#0xf8
                           0000BF  1393 	C$uart.c$84$2_0$63 ==.
                                   1394 ;	..\..\..\..\Library\StdDriver\src\uart.c:84: set_T3CON_BRCK;        //UART0 baud rate clock source = Timer3
      00088A 75 91 00         [24] 1395 	mov	_SFRS,#0x00
      00088D 43 C4 20         [24] 1396 	orl	_T3CON,#0x20
                           0000C5  1397 	C$uart.c$85$2_0$63 ==.
                                   1398 ;	..\..\..\..\Library\StdDriver\src\uart.c:85: RH3    = HIBYTE(65536 - (u32SysClock / 16 / u32Baudrate));
      000890 8C 00            [24] 1399 	mov	ar0,r4
      000892 ED               [12] 1400 	mov	a,r5
      000893 C4               [12] 1401 	swap	a
      000894 C8               [12] 1402 	xch	a,r0
      000895 C4               [12] 1403 	swap	a
      000896 54 0F            [12] 1404 	anl	a,#0x0f
      000898 68               [12] 1405 	xrl	a,r0
      000899 C8               [12] 1406 	xch	a,r0
      00089A 54 0F            [12] 1407 	anl	a,#0x0f
      00089C C8               [12] 1408 	xch	a,r0
      00089D 68               [12] 1409 	xrl	a,r0
      00089E C8               [12] 1410 	xch	a,r0
      00089F F9               [12] 1411 	mov	r1,a
      0008A0 EE               [12] 1412 	mov	a,r6
      0008A1 C4               [12] 1413 	swap	a
      0008A2 54 F0            [12] 1414 	anl	a,#0xf0
      0008A4 49               [12] 1415 	orl	a,r1
      0008A5 F9               [12] 1416 	mov	r1,a
      0008A6 8E 02            [24] 1417 	mov	ar2,r6
      0008A8 EF               [12] 1418 	mov	a,r7
      0008A9 C4               [12] 1419 	swap	a
      0008AA CA               [12] 1420 	xch	a,r2
      0008AB C4               [12] 1421 	swap	a
      0008AC 54 0F            [12] 1422 	anl	a,#0x0f
      0008AE 6A               [12] 1423 	xrl	a,r2
      0008AF CA               [12] 1424 	xch	a,r2
      0008B0 54 0F            [12] 1425 	anl	a,#0x0f
      0008B2 CA               [12] 1426 	xch	a,r2
      0008B3 6A               [12] 1427 	xrl	a,r2
      0008B4 CA               [12] 1428 	xch	a,r2
      0008B5 FB               [12] 1429 	mov	r3,a
      0008B6 85 27 5D         [24] 1430 	mov	__divulong_PARM_2,_UART_Open_PARM_3
      0008B9 85 28 5E         [24] 1431 	mov	(__divulong_PARM_2 + 1),(_UART_Open_PARM_3 + 1)
      0008BC 85 29 5F         [24] 1432 	mov	(__divulong_PARM_2 + 2),(_UART_Open_PARM_3 + 2)
      0008BF 85 2A 60         [24] 1433 	mov	(__divulong_PARM_2 + 3),(_UART_Open_PARM_3 + 3)
      0008C2 88 82            [24] 1434 	mov	dpl,r0
      0008C4 89 83            [24] 1435 	mov	dph,r1
      0008C6 8A F0            [24] 1436 	mov	b,r2
      0008C8 EB               [12] 1437 	mov	a,r3
      0008C9 12 0A 23         [24] 1438 	lcall	__divulong
      0008CC 85 82 2B         [24] 1439 	mov	_UART_Open_sloc0_1_0,dpl
      0008CF 85 83 2C         [24] 1440 	mov	(_UART_Open_sloc0_1_0 + 1),dph
      0008D2 85 F0 2D         [24] 1441 	mov	(_UART_Open_sloc0_1_0 + 2),b
      0008D5 F5 2E            [12] 1442 	mov	(_UART_Open_sloc0_1_0 + 3),a
      0008D7 E4               [12] 1443 	clr	a
      0008D8 C3               [12] 1444 	clr	c
      0008D9 95 2B            [12] 1445 	subb	a,_UART_Open_sloc0_1_0
      0008DB E4               [12] 1446 	clr	a
      0008DC 95 2C            [12] 1447 	subb	a,(_UART_Open_sloc0_1_0 + 1)
      0008DE F9               [12] 1448 	mov	r1,a
      0008DF 74 01            [12] 1449 	mov	a,#0x01
      0008E1 95 2D            [12] 1450 	subb	a,(_UART_Open_sloc0_1_0 + 2)
      0008E3 FA               [12] 1451 	mov	r2,a
      0008E4 E4               [12] 1452 	clr	a
      0008E5 95 2E            [12] 1453 	subb	a,(_UART_Open_sloc0_1_0 + 3)
      0008E7 FB               [12] 1454 	mov	r3,a
      0008E8 89 C6            [24] 1455 	mov	_RH3,r1
                           00011F  1456 	C$uart.c$86$2_0$63 ==.
                                   1457 ;	..\..\..\..\Library\StdDriver\src\uart.c:86: RL3    = LOBYTE(65536 - (u32SysClock / 16 / u32Baudrate));
      0008EA A8 2B            [24] 1458 	mov	r0,_UART_Open_sloc0_1_0
      0008EC C3               [12] 1459 	clr	c
      0008ED E4               [12] 1460 	clr	a
      0008EE 98               [12] 1461 	subb	a,r0
      0008EF F8               [12] 1462 	mov	r0,a
      0008F0 88 C5            [24] 1463 	mov	_RL3,r0
                           000127  1464 	C$uart.c$87$2_0$63 ==.
                                   1465 ;	..\..\..\..\Library\StdDriver\src\uart.c:87: set_T3CON_TR3;         //Trigger Timer3
      0008F2 75 91 00         [24] 1466 	mov	_SFRS,#0x00
      0008F5 43 C4 08         [24] 1467 	orl	_T3CON,#0x08
                           00012D  1468 	C$uart.c$88$2_0$63 ==.
                                   1469 ;	..\..\..\..\Library\StdDriver\src\uart.c:88: set_IE_ES;
      0008F8 43 A8 10         [24] 1470 	orl	_IE,#0x10
                           000130  1471 	C$uart.c$89$2_0$63 ==.
                                   1472 ;	..\..\..\..\Library\StdDriver\src\uart.c:89: break;
                           000130  1473 	C$uart.c$91$2_0$63 ==.
                                   1474 ;	..\..\..\..\Library\StdDriver\src\uart.c:91: case UART1_Timer3:
      0008FB 80 67            [24] 1475 	sjmp	00105$
      0008FD                       1476 00103$:
                           000132  1477 	C$uart.c$92$2_0$63 ==.
                                   1478 ;	..\..\..\..\Library\StdDriver\src\uart.c:92: SCON_1 = 0x50;          //UART1 Mode1,REN_1=1,TI_1=1
      0008FD 75 F8 50         [24] 1479 	mov	_SCON_1,#0x50
                           000135  1480 	C$uart.c$93$2_0$63 ==.
                                   1481 ;	..\..\..\..\Library\StdDriver\src\uart.c:93: T3CON = 0x80;           //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
      000900 75 C4 80         [24] 1482 	mov	_T3CON,#0x80
                           000138  1483 	C$uart.c$94$2_0$63 ==.
                                   1484 ;	..\..\..\..\Library\StdDriver\src\uart.c:94: RH3    = HIBYTE(65536 - (u32SysClock/16/u32Baudrate));
      000903 ED               [12] 1485 	mov	a,r5
      000904 C4               [12] 1486 	swap	a
      000905 CC               [12] 1487 	xch	a,r4
      000906 C4               [12] 1488 	swap	a
      000907 54 0F            [12] 1489 	anl	a,#0x0f
      000909 6C               [12] 1490 	xrl	a,r4
      00090A CC               [12] 1491 	xch	a,r4
      00090B 54 0F            [12] 1492 	anl	a,#0x0f
      00090D CC               [12] 1493 	xch	a,r4
      00090E 6C               [12] 1494 	xrl	a,r4
      00090F CC               [12] 1495 	xch	a,r4
      000910 FD               [12] 1496 	mov	r5,a
      000911 EE               [12] 1497 	mov	a,r6
      000912 C4               [12] 1498 	swap	a
      000913 54 F0            [12] 1499 	anl	a,#0xf0
      000915 4D               [12] 1500 	orl	a,r5
      000916 FD               [12] 1501 	mov	r5,a
      000917 EF               [12] 1502 	mov	a,r7
      000918 C4               [12] 1503 	swap	a
      000919 CE               [12] 1504 	xch	a,r6
      00091A C4               [12] 1505 	swap	a
      00091B 54 0F            [12] 1506 	anl	a,#0x0f
      00091D 6E               [12] 1507 	xrl	a,r6
      00091E CE               [12] 1508 	xch	a,r6
      00091F 54 0F            [12] 1509 	anl	a,#0x0f
      000921 CE               [12] 1510 	xch	a,r6
      000922 6E               [12] 1511 	xrl	a,r6
      000923 CE               [12] 1512 	xch	a,r6
      000924 FF               [12] 1513 	mov	r7,a
      000925 85 27 5D         [24] 1514 	mov	__divulong_PARM_2,_UART_Open_PARM_3
      000928 85 28 5E         [24] 1515 	mov	(__divulong_PARM_2 + 1),(_UART_Open_PARM_3 + 1)
      00092B 85 29 5F         [24] 1516 	mov	(__divulong_PARM_2 + 2),(_UART_Open_PARM_3 + 2)
      00092E 85 2A 60         [24] 1517 	mov	(__divulong_PARM_2 + 3),(_UART_Open_PARM_3 + 3)
      000931 8C 82            [24] 1518 	mov	dpl,r4
      000933 8D 83            [24] 1519 	mov	dph,r5
      000935 8E F0            [24] 1520 	mov	b,r6
      000937 EF               [12] 1521 	mov	a,r7
      000938 12 0A 23         [24] 1522 	lcall	__divulong
      00093B AC 82            [24] 1523 	mov	r4,dpl
      00093D AD 83            [24] 1524 	mov	r5,dph
      00093F AE F0            [24] 1525 	mov	r6,b
      000941 FF               [12] 1526 	mov	r7,a
      000942 E4               [12] 1527 	clr	a
      000943 C3               [12] 1528 	clr	c
      000944 9C               [12] 1529 	subb	a,r4
      000945 F8               [12] 1530 	mov	r0,a
      000946 E4               [12] 1531 	clr	a
      000947 9D               [12] 1532 	subb	a,r5
      000948 F9               [12] 1533 	mov	r1,a
      000949 74 01            [12] 1534 	mov	a,#0x01
      00094B 9E               [12] 1535 	subb	a,r6
      00094C FA               [12] 1536 	mov	r2,a
      00094D E4               [12] 1537 	clr	a
      00094E 9F               [12] 1538 	subb	a,r7
      00094F FB               [12] 1539 	mov	r3,a
      000950 89 C6            [24] 1540 	mov	_RH3,r1
                           000187  1541 	C$uart.c$95$2_0$63 ==.
                                   1542 ;	..\..\..\..\Library\StdDriver\src\uart.c:95: RL3    = LOBYTE(65536 - (u32SysClock/16/u32Baudrate));
      000952 C3               [12] 1543 	clr	c
      000953 E4               [12] 1544 	clr	a
      000954 9C               [12] 1545 	subb	a,r4
      000955 FC               [12] 1546 	mov	r4,a
      000956 8C C5            [24] 1547 	mov	_RL3,r4
                           00018D  1548 	C$uart.c$96$2_0$63 ==.
                                   1549 ;	..\..\..\..\Library\StdDriver\src\uart.c:96: set_T3CON_TR3;             //Trigger Timer3
      000958 75 91 00         [24] 1550 	mov	_SFRS,#0x00
      00095B 43 C4 08         [24] 1551 	orl	_T3CON,#0x08
                           000193  1552 	C$uart.c$97$2_0$63 ==.
                                   1553 ;	..\..\..\..\Library\StdDriver\src\uart.c:97: set_EIE1_ES_1;
      00095E 75 91 00         [24] 1554 	mov	_SFRS,#0x00
      000961 43 9C 01         [24] 1555 	orl	_EIE1,#0x01
                           000199  1556 	C$uart.c$99$1_0$62 ==.
                                   1557 ;	..\..\..\..\Library\StdDriver\src\uart.c:99: }
      000964                       1558 00105$:
                           000199  1559 	C$uart.c$100$1_0$62 ==.
                                   1560 ;	..\..\..\..\Library\StdDriver\src\uart.c:100: }
                           000199  1561 	C$uart.c$100$1_0$62 ==.
                           000199  1562 	XG$UART_Open$0$0 ==.
      000964 22               [24] 1563 	ret
                                   1564 ;------------------------------------------------------------
                                   1565 ;Allocation info for local variables in function 'Receive_Data'
                                   1566 ;------------------------------------------------------------
                                   1567 ;UARTPort                  Allocated to registers r7 
                                   1568 ;c                         Allocated with name '_Receive_Data_c_65536_65'
                                   1569 ;------------------------------------------------------------
                           00019A  1570 	G$Receive_Data$0$0 ==.
                           00019A  1571 	C$uart.c$102$1_0$65 ==.
                                   1572 ;	..\..\..\..\Library\StdDriver\src\uart.c:102: unsigned char Receive_Data(unsigned char UARTPort)
                                   1573 ;	-----------------------------------------
                                   1574 ;	 function Receive_Data
                                   1575 ;	-----------------------------------------
      000965                       1576 _Receive_Data:
      000965 AF 82            [24] 1577 	mov	r7,dpl
                           00019C  1578 	C$uart.c$105$1_0$65 ==.
                                   1579 ;	..\..\..\..\Library\StdDriver\src\uart.c:105: SFRS = 0;
      000967 75 91 00         [24] 1580 	mov	_SFRS,#0x00
                           00019F  1581 	C$uart.c$106$1_0$65 ==.
                                   1582 ;	..\..\..\..\Library\StdDriver\src\uart.c:106: switch (UARTPort)
      00096A BF 00 02         [24] 1583 	cjne	r7,#0x00,00136$
      00096D 80 05            [24] 1584 	sjmp	00102$
      00096F                       1585 00136$:
                           0001A4  1586 	C$uart.c$109$2_0$66 ==.
                                   1587 ;	..\..\..\..\Library\StdDriver\src\uart.c:109: while (!RI);
      00096F BF 01 12         [24] 1588 	cjne	r7,#0x01,00109$
      000972 80 09            [24] 1589 	sjmp	00106$
      000974                       1590 00102$:
      000974 30 98 FD         [24] 1591 	jnb	_RI,00102$
                           0001AC  1592 	C$uart.c$110$2_0$66 ==.
                                   1593 ;	..\..\..\..\Library\StdDriver\src\uart.c:110: c = SBUF;
      000977 AF 99            [24] 1594 	mov	r7,_SBUF
                           0001AE  1595 	C$uart.c$111$2_0$66 ==.
                                   1596 ;	..\..\..\..\Library\StdDriver\src\uart.c:111: RI = 0;
                                   1597 ;	assignBit
      000979 C2 98            [12] 1598 	clr	_RI
                           0001B0  1599 	C$uart.c$112$2_0$66 ==.
                                   1600 ;	..\..\..\..\Library\StdDriver\src\uart.c:112: break;
                           0001B0  1601 	C$uart.c$115$2_0$66 ==.
                                   1602 ;	..\..\..\..\Library\StdDriver\src\uart.c:115: while (!RI_1);
      00097B 80 07            [24] 1603 	sjmp	00109$
      00097D                       1604 00106$:
      00097D 30 F8 FD         [24] 1605 	jnb	_RI_1,00106$
                           0001B5  1606 	C$uart.c$116$2_0$66 ==.
                                   1607 ;	..\..\..\..\Library\StdDriver\src\uart.c:116: c = SBUF_1;
      000980 AF 9A            [24] 1608 	mov	r7,_SBUF_1
                           0001B7  1609 	C$uart.c$117$2_0$66 ==.
                                   1610 ;	..\..\..\..\Library\StdDriver\src\uart.c:117: RI_1 = 0;
                                   1611 ;	assignBit
      000982 C2 F8            [12] 1612 	clr	_RI_1
                           0001B9  1613 	C$uart.c$119$1_0$65 ==.
                                   1614 ;	..\..\..\..\Library\StdDriver\src\uart.c:119: }
      000984                       1615 00109$:
                           0001B9  1616 	C$uart.c$121$1_0$65 ==.
                                   1617 ;	..\..\..\..\Library\StdDriver\src\uart.c:121: return (c);
      000984 8F 82            [24] 1618 	mov	dpl,r7
                           0001BB  1619 	C$uart.c$122$1_0$65 ==.
                                   1620 ;	..\..\..\..\Library\StdDriver\src\uart.c:122: }
                           0001BB  1621 	C$uart.c$122$1_0$65 ==.
                           0001BB  1622 	XG$Receive_Data$0$0 ==.
      000986 22               [24] 1623 	ret
                                   1624 ;------------------------------------------------------------
                                   1625 ;Allocation info for local variables in function 'UART_Send_Data'
                                   1626 ;------------------------------------------------------------
                                   1627 ;c                         Allocated with name '_UART_Send_Data_PARM_2'
                                   1628 ;UARTPort                  Allocated to registers r7 
                                   1629 ;------------------------------------------------------------
                           0001BC  1630 	G$UART_Send_Data$0$0 ==.
                           0001BC  1631 	C$uart.c$124$1_0$68 ==.
                                   1632 ;	..\..\..\..\Library\StdDriver\src\uart.c:124: void UART_Send_Data(unsigned char UARTPort, unsigned char c)
                                   1633 ;	-----------------------------------------
                                   1634 ;	 function UART_Send_Data
                                   1635 ;	-----------------------------------------
      000987                       1636 _UART_Send_Data:
      000987 AF 82            [24] 1637 	mov	r7,dpl
                           0001BE  1638 	C$uart.c$126$1_0$68 ==.
                                   1639 ;	..\..\..\..\Library\StdDriver\src\uart.c:126: _push_(SFRS);
      000989 C0 91            [24] 1640 	push	_SFRS 
                           0001C0  1641 	C$uart.c$127$1_0$68 ==.
                                   1642 ;	..\..\..\..\Library\StdDriver\src\uart.c:127: SFRS = 0;
      00098B 75 91 00         [24] 1643 	mov	_SFRS,#0x00
                           0001C3  1644 	C$uart.c$128$1_0$68 ==.
                                   1645 ;	..\..\..\..\Library\StdDriver\src\uart.c:128: switch (UARTPort)
      00098E BF 00 02         [24] 1646 	cjne	r7,#0x00,00132$
      000991 80 05            [24] 1647 	sjmp	00101$
      000993                       1648 00132$:
                           0001C8  1649 	C$uart.c$130$2_0$69 ==.
                                   1650 ;	..\..\..\..\Library\StdDriver\src\uart.c:130: case UART0:
      000993 BF 01 14         [24] 1651 	cjne	r7,#0x01,00109$
      000996 80 0A            [24] 1652 	sjmp	00105$
      000998                       1653 00101$:
                           0001CD  1654 	C$uart.c$131$2_0$69 ==.
                                   1655 ;	..\..\..\..\Library\StdDriver\src\uart.c:131: TI=0;
                                   1656 ;	assignBit
      000998 C2 99            [12] 1657 	clr	_TI
                           0001CF  1658 	C$uart.c$132$2_0$69 ==.
                                   1659 ;	..\..\..\..\Library\StdDriver\src\uart.c:132: SBUF = c;
      00099A 85 5D 99         [24] 1660 	mov	_SBUF,_UART_Send_Data_PARM_2
                           0001D2  1661 	C$uart.c$133$2_0$69 ==.
                                   1662 ;	..\..\..\..\Library\StdDriver\src\uart.c:133: while(!TI);
      00099D                       1663 00102$:
      00099D 20 99 0A         [24] 1664 	jb	_TI,00109$
                           0001D5  1665 	C$uart.c$135$2_0$69 ==.
                                   1666 ;	..\..\..\..\Library\StdDriver\src\uart.c:135: case UART1:
      0009A0 80 FB            [24] 1667 	sjmp	00102$
      0009A2                       1668 00105$:
                           0001D7  1669 	C$uart.c$136$2_0$69 ==.
                                   1670 ;	..\..\..\..\Library\StdDriver\src\uart.c:136: TI_1=0;
                                   1671 ;	assignBit
      0009A2 C2 F9            [12] 1672 	clr	_TI_1
                           0001D9  1673 	C$uart.c$137$2_0$69 ==.
                                   1674 ;	..\..\..\..\Library\StdDriver\src\uart.c:137: SBUF_1 = c;
      0009A4 85 5D 9A         [24] 1675 	mov	_SBUF_1,_UART_Send_Data_PARM_2
                           0001DC  1676 	C$uart.c$138$2_0$69 ==.
                                   1677 ;	..\..\..\..\Library\StdDriver\src\uart.c:138: while(TI_1);
      0009A7                       1678 00106$:
      0009A7 20 F9 FD         [24] 1679 	jb	_TI_1,00106$
                           0001DF  1680 	C$uart.c$140$1_0$68 ==.
                                   1681 ;	..\..\..\..\Library\StdDriver\src\uart.c:140: }
      0009AA                       1682 00109$:
                           0001DF  1683 	C$uart.c$141$1_0$68 ==.
                                   1684 ;	..\..\..\..\Library\StdDriver\src\uart.c:141: _pop_(SFRS);
      0009AA D0 91            [24] 1685 	pop	_SFRS 
                           0001E1  1686 	C$uart.c$142$1_0$68 ==.
                                   1687 ;	..\..\..\..\Library\StdDriver\src\uart.c:142: }
                           0001E1  1688 	C$uart.c$142$1_0$68 ==.
                           0001E1  1689 	XG$UART_Send_Data$0$0 ==.
      0009AC 22               [24] 1690 	ret
                                   1691 	.area CSEG    (CODE)
                                   1692 	.area CONST   (CODE)
                                   1693 	.area XINIT   (CODE)
                                   1694 	.area CABS    (ABS,CODE)
