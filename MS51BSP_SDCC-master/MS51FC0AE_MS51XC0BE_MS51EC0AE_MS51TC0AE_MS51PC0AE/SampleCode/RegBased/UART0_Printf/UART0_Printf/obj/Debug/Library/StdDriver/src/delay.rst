                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _MOSI
                                     12 	.globl _P00
                                     13 	.globl _MISO
                                     14 	.globl _P01
                                     15 	.globl _RXD_1
                                     16 	.globl _P02
                                     17 	.globl _P03
                                     18 	.globl _STADC
                                     19 	.globl _P04
                                     20 	.globl _P05
                                     21 	.globl _TXD
                                     22 	.globl _P06
                                     23 	.globl _RXD
                                     24 	.globl _P07
                                     25 	.globl _IT0
                                     26 	.globl _IE0
                                     27 	.globl _IT1
                                     28 	.globl _IE1
                                     29 	.globl _TR0
                                     30 	.globl _TF0
                                     31 	.globl _TR1
                                     32 	.globl _TF1
                                     33 	.globl _P10
                                     34 	.globl _P11
                                     35 	.globl _P12
                                     36 	.globl _SCL
                                     37 	.globl _P13
                                     38 	.globl _SDA
                                     39 	.globl _P14
                                     40 	.globl _P15
                                     41 	.globl _TXD_1
                                     42 	.globl _P16
                                     43 	.globl _P17
                                     44 	.globl _RI
                                     45 	.globl _TI
                                     46 	.globl _RB8
                                     47 	.globl _TB8
                                     48 	.globl _REN
                                     49 	.globl _SM2
                                     50 	.globl _SM1
                                     51 	.globl _FE
                                     52 	.globl _SM0
                                     53 	.globl _P20
                                     54 	.globl _EX0
                                     55 	.globl _ET0
                                     56 	.globl _EX1
                                     57 	.globl _ET1
                                     58 	.globl _ES
                                     59 	.globl _EBOD
                                     60 	.globl _EADC
                                     61 	.globl _EA
                                     62 	.globl _P30
                                     63 	.globl _P31
                                     64 	.globl _P32
                                     65 	.globl _P33
                                     66 	.globl _P34
                                     67 	.globl _P35
                                     68 	.globl _P36
                                     69 	.globl _P37
                                     70 	.globl _PX0
                                     71 	.globl _PT0
                                     72 	.globl _PX1
                                     73 	.globl _PT1
                                     74 	.globl _PS
                                     75 	.globl _PBOD
                                     76 	.globl _PADC
                                     77 	.globl _I2CPX
                                     78 	.globl _AA
                                     79 	.globl _SI
                                     80 	.globl _STO
                                     81 	.globl _STA
                                     82 	.globl _I2CEN
                                     83 	.globl _CM_RL2
                                     84 	.globl _TR2
                                     85 	.globl _TF2
                                     86 	.globl _P
                                     87 	.globl _OV
                                     88 	.globl _RS0
                                     89 	.globl _RS1
                                     90 	.globl _F0
                                     91 	.globl _AC
                                     92 	.globl _CY
                                     93 	.globl _CLRPWM
                                     94 	.globl _PWMF
                                     95 	.globl _LOAD
                                     96 	.globl _PWMRUN
                                     97 	.globl _ADCHS0
                                     98 	.globl _ADCHS1
                                     99 	.globl _ADCHS2
                                    100 	.globl _ADCHS3
                                    101 	.globl _ETGSEL0
                                    102 	.globl _ETGSEL1
                                    103 	.globl _ADCS
                                    104 	.globl _ADCF
                                    105 	.globl _RI_1
                                    106 	.globl _TI_1
                                    107 	.globl _RB8_1
                                    108 	.globl _TB8_1
                                    109 	.globl _REN_1
                                    110 	.globl _SM2_1
                                    111 	.globl _SM1_1
                                    112 	.globl _FE_1
                                    113 	.globl _SM0_1
                                    114 	.globl _PIPS6
                                    115 	.globl _PIPS5
                                    116 	.globl _PIPS4
                                    117 	.globl _PIPS3
                                    118 	.globl _PIPS2
                                    119 	.globl _PIPS1
                                    120 	.globl _PIPS0
                                    121 	.globl _PIPS7
                                    122 	.globl _SC2CR1
                                    123 	.globl _SC2CR0
                                    124 	.globl _SC1CR1
                                    125 	.globl _SC1CR0
                                    126 	.globl _SC0CR1
                                    127 	.globl _SC0CR0
                                    128 	.globl _SC2TSR
                                    129 	.globl _SC2IS
                                    130 	.globl _SC2IE
                                    131 	.globl _SC2ETURD1
                                    132 	.globl _SC2ETURD0
                                    133 	.globl _SC2EGT
                                    134 	.globl _SC2DR
                                    135 	.globl _SC1TSR
                                    136 	.globl _SC1IS
                                    137 	.globl _SC1IE
                                    138 	.globl _SC1ETURD1
                                    139 	.globl _SC1ETURD0
                                    140 	.globl _SC1EGT
                                    141 	.globl _SC1DR
                                    142 	.globl _SC0TSR
                                    143 	.globl _SC0IS
                                    144 	.globl _SC0IE
                                    145 	.globl _SC0ETURD1
                                    146 	.globl _SC0ETURD0
                                    147 	.globl _SC0EGT
                                    148 	.globl _SC0DR
                                    149 	.globl _XTLCON
                                    150 	.globl _PWM3INTC
                                    151 	.globl _PWM3CON1
                                    152 	.globl _PWM3CON0
                                    153 	.globl _PWM3C1L
                                    154 	.globl _PWM3C0L
                                    155 	.globl _PWM3PL
                                    156 	.globl _EIPH2
                                    157 	.globl _EIP2
                                    158 	.globl _PWM3MEN
                                    159 	.globl _PWM3MD
                                    160 	.globl _PWM3C1H
                                    161 	.globl _PWM3C0H
                                    162 	.globl _PWM3PH
                                    163 	.globl _PWM2INTC
                                    164 	.globl _PWM2CON1
                                    165 	.globl _PWM2CON0
                                    166 	.globl _PWM2C1L
                                    167 	.globl _PWM2C0L
                                    168 	.globl _PWM2PL
                                    169 	.globl _PWM2MEN
                                    170 	.globl _PWM2MD
                                    171 	.globl _PWM2C1H
                                    172 	.globl _PWM2C0H
                                    173 	.globl _PWM2PH
                                    174 	.globl _PIOCON2
                                    175 	.globl _PWM1INTC
                                    176 	.globl _PWM1CON1
                                    177 	.globl _PWM1CON0
                                    178 	.globl _PWM1C1L
                                    179 	.globl _PWM1C0L
                                    180 	.globl _PWM1PL
                                    181 	.globl _PWM1MEN
                                    182 	.globl _PWM1MD
                                    183 	.globl _PWM1C1H
                                    184 	.globl _PWM1C0H
                                    185 	.globl _PWM1PH
                                    186 	.globl _AUXR8
                                    187 	.globl _AUXR7
                                    188 	.globl _AUXR6
                                    189 	.globl _AUXR5
                                    190 	.globl _AUXR4
                                    191 	.globl _AUXR3
                                    192 	.globl _AUXR2
                                    193 	.globl _P3DW
                                    194 	.globl _P2DW
                                    195 	.globl _P1DW
                                    196 	.globl _P0DW
                                    197 	.globl _AINDIDS1
                                    198 	.globl _RWKH
                                    199 	.globl _P3UP
                                    200 	.globl _P2UP
                                    201 	.globl _P1UP
                                    202 	.globl _P0UP
                                    203 	.globl _ADCSR
                                    204 	.globl _ADCCN
                                    205 	.globl _ADCSN
                                    206 	.globl _P2S
                                    207 	.globl _P2SR
                                    208 	.globl _P2M2
                                    209 	.globl _P2M1
                                    210 	.globl _ADCCON3
                                    211 	.globl _ADCBAH
                                    212 	.globl _ADCBAL
                                    213 	.globl _LVRDIS
                                    214 	.globl _SPCR2
                                    215 	.globl _PWM0C5L
                                    216 	.globl _PWM0C4L
                                    217 	.globl _PIOCON1
                                    218 	.globl _PWM0C5H
                                    219 	.globl _PWM0C4H
                                    220 	.globl _PWM0INTC
                                    221 	.globl _P1SR
                                    222 	.globl _P1S
                                    223 	.globl _P0SR
                                    224 	.globl _P0S
                                    225 	.globl _P3SR
                                    226 	.globl _P3S
                                    227 	.globl _EIPH1
                                    228 	.globl _EIP1
                                    229 	.globl _PORDIS
                                    230 	.globl _PWM0MD
                                    231 	.globl _PWM0MEN
                                    232 	.globl _PWM0DTCNT
                                    233 	.globl _PWM0DTEN
                                    234 	.globl _SCON_1
                                    235 	.globl _EIPH
                                    236 	.globl _AINDIDS0
                                    237 	.globl _SPDR
                                    238 	.globl _SPSR
                                    239 	.globl _SPCR
                                    240 	.globl _CAPCON4
                                    241 	.globl _CAPCON3
                                    242 	.globl _B
                                    243 	.globl _EIP
                                    244 	.globl _C2H
                                    245 	.globl _C2L
                                    246 	.globl _PIF
                                    247 	.globl _PIPEN
                                    248 	.globl _PINEN
                                    249 	.globl _PICON
                                    250 	.globl _ADCCON0
                                    251 	.globl _C1H
                                    252 	.globl _C1L
                                    253 	.globl _C0H
                                    254 	.globl _C0L
                                    255 	.globl _ADCDLY
                                    256 	.globl _ADCCON2
                                    257 	.globl _ADCCON1
                                    258 	.globl _ACC
                                    259 	.globl _PWM0CON1
                                    260 	.globl _PIOCON0
                                    261 	.globl _PWM0C3L
                                    262 	.globl _PWM0C2L
                                    263 	.globl _PWM0C1L
                                    264 	.globl _PWM0C0L
                                    265 	.globl _PWM0PL
                                    266 	.globl _PWM0CON0
                                    267 	.globl _PWM0FBD
                                    268 	.globl _PNP
                                    269 	.globl _PWM0C3H
                                    270 	.globl _PWM0C2H
                                    271 	.globl _PWM0C1H
                                    272 	.globl _PWM0C0H
                                    273 	.globl _PWM0PH
                                    274 	.globl _PSW
                                    275 	.globl _ADCMPH
                                    276 	.globl _ADCMPL
                                    277 	.globl _TH2
                                    278 	.globl _TL2
                                    279 	.globl _RCMP2H
                                    280 	.globl _RCMP2L
                                    281 	.globl _T2MOD
                                    282 	.globl _T2CON
                                    283 	.globl _TA
                                    284 	.globl _RH3
                                    285 	.globl _RL3
                                    286 	.globl _T3CON
                                    287 	.globl _ADCRH
                                    288 	.globl _ADCRL
                                    289 	.globl _I2ADDR
                                    290 	.globl _I2CON
                                    291 	.globl _I2TOC
                                    292 	.globl _I2CLK
                                    293 	.globl _I2STAT
                                    294 	.globl _I2DAT
                                    295 	.globl _SADDR_1
                                    296 	.globl _SADEN_1
                                    297 	.globl _SADEN
                                    298 	.globl _IP
                                    299 	.globl _IPH
                                    300 	.globl _TOE
                                    301 	.globl _P1M2
                                    302 	.globl _P1M1
                                    303 	.globl _P0M2
                                    304 	.globl _P0M1
                                    305 	.globl _P3
                                    306 	.globl _IAPCN
                                    307 	.globl _IAPFD
                                    308 	.globl _P3M2
                                    309 	.globl _P3M1
                                    310 	.globl _BODCON1
                                    311 	.globl _WDCON
                                    312 	.globl _SADDR
                                    313 	.globl _IE
                                    314 	.globl _IAPAH
                                    315 	.globl _IAPAL
                                    316 	.globl _IAPUEN
                                    317 	.globl _IAPTRG
                                    318 	.globl _BODCON0
                                    319 	.globl _AUXR1
                                    320 	.globl _P2
                                    321 	.globl _CHPCON
                                    322 	.globl _EIE1
                                    323 	.globl _EIE
                                    324 	.globl _SBUF_1
                                    325 	.globl _SBUF
                                    326 	.globl _SCON
                                    327 	.globl _CKEN
                                    328 	.globl _CKSWT
                                    329 	.globl _CKDIV
                                    330 	.globl _CAPCON2
                                    331 	.globl _CAPCON1
                                    332 	.globl _CAPCON0
                                    333 	.globl _SFRS
                                    334 	.globl _P1
                                    335 	.globl _WKCON
                                    336 	.globl _CKCON
                                    337 	.globl _TH1
                                    338 	.globl _TH0
                                    339 	.globl _TL1
                                    340 	.globl _TL0
                                    341 	.globl _TMOD
                                    342 	.globl _TCON
                                    343 	.globl _PCON
                                    344 	.globl _RWKL
                                    345 	.globl _RCTRIM1
                                    346 	.globl _RCTRIM0
                                    347 	.globl _DPH
                                    348 	.globl _DPL
                                    349 	.globl _SP
                                    350 	.globl _P0
                                    351 	.globl _Timer3_Delay_PARM_4
                                    352 	.globl _Timer3_Delay_PARM_3
                                    353 	.globl _Timer3_Delay_PARM_2
                                    354 	.globl _Timer2_Delay_PARM_4
                                    355 	.globl _Timer2_Delay_PARM_3
                                    356 	.globl _Timer2_Delay_PARM_2
                                    357 	.globl _Timer1_Delay_PARM_3
                                    358 	.globl _Timer1_Delay_PARM_2
                                    359 	.globl _Timer0_Delay_PARM_3
                                    360 	.globl _Timer0_Delay_PARM_2
                                    361 	.globl _Timer0_Delay
                                    362 	.globl _Timer1_Delay
                                    363 	.globl _Timer2_Delay
                                    364 	.globl _Timer3_Delay
                                    365 ;--------------------------------------------------------
                                    366 ; special function registers
                                    367 ;--------------------------------------------------------
                                    368 	.area RSEG    (ABS,DATA)
      000000                        369 	.org 0x0000
                           000080   370 G$P0$0_0$0 == 0x0080
                           000080   371 _P0	=	0x0080
                           000081   372 G$SP$0_0$0 == 0x0081
                           000081   373 _SP	=	0x0081
                           000082   374 G$DPL$0_0$0 == 0x0082
                           000082   375 _DPL	=	0x0082
                           000083   376 G$DPH$0_0$0 == 0x0083
                           000083   377 _DPH	=	0x0083
                           000084   378 G$RCTRIM0$0_0$0 == 0x0084
                           000084   379 _RCTRIM0	=	0x0084
                           000085   380 G$RCTRIM1$0_0$0 == 0x0085
                           000085   381 _RCTRIM1	=	0x0085
                           000086   382 G$RWKL$0_0$0 == 0x0086
                           000086   383 _RWKL	=	0x0086
                           000087   384 G$PCON$0_0$0 == 0x0087
                           000087   385 _PCON	=	0x0087
                           000088   386 G$TCON$0_0$0 == 0x0088
                           000088   387 _TCON	=	0x0088
                           000089   388 G$TMOD$0_0$0 == 0x0089
                           000089   389 _TMOD	=	0x0089
                           00008A   390 G$TL0$0_0$0 == 0x008a
                           00008A   391 _TL0	=	0x008a
                           00008B   392 G$TL1$0_0$0 == 0x008b
                           00008B   393 _TL1	=	0x008b
                           00008C   394 G$TH0$0_0$0 == 0x008c
                           00008C   395 _TH0	=	0x008c
                           00008D   396 G$TH1$0_0$0 == 0x008d
                           00008D   397 _TH1	=	0x008d
                           00008E   398 G$CKCON$0_0$0 == 0x008e
                           00008E   399 _CKCON	=	0x008e
                           00008F   400 G$WKCON$0_0$0 == 0x008f
                           00008F   401 _WKCON	=	0x008f
                           000090   402 G$P1$0_0$0 == 0x0090
                           000090   403 _P1	=	0x0090
                           000091   404 G$SFRS$0_0$0 == 0x0091
                           000091   405 _SFRS	=	0x0091
                           000092   406 G$CAPCON0$0_0$0 == 0x0092
                           000092   407 _CAPCON0	=	0x0092
                           000093   408 G$CAPCON1$0_0$0 == 0x0093
                           000093   409 _CAPCON1	=	0x0093
                           000094   410 G$CAPCON2$0_0$0 == 0x0094
                           000094   411 _CAPCON2	=	0x0094
                           000095   412 G$CKDIV$0_0$0 == 0x0095
                           000095   413 _CKDIV	=	0x0095
                           000096   414 G$CKSWT$0_0$0 == 0x0096
                           000096   415 _CKSWT	=	0x0096
                           000097   416 G$CKEN$0_0$0 == 0x0097
                           000097   417 _CKEN	=	0x0097
                           000098   418 G$SCON$0_0$0 == 0x0098
                           000098   419 _SCON	=	0x0098
                           000099   420 G$SBUF$0_0$0 == 0x0099
                           000099   421 _SBUF	=	0x0099
                           00009A   422 G$SBUF_1$0_0$0 == 0x009a
                           00009A   423 _SBUF_1	=	0x009a
                           00009B   424 G$EIE$0_0$0 == 0x009b
                           00009B   425 _EIE	=	0x009b
                           00009C   426 G$EIE1$0_0$0 == 0x009c
                           00009C   427 _EIE1	=	0x009c
                           00009F   428 G$CHPCON$0_0$0 == 0x009f
                           00009F   429 _CHPCON	=	0x009f
                           0000A0   430 G$P2$0_0$0 == 0x00a0
                           0000A0   431 _P2	=	0x00a0
                           0000A2   432 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   433 _AUXR1	=	0x00a2
                           0000A3   434 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   435 _BODCON0	=	0x00a3
                           0000A4   436 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   437 _IAPTRG	=	0x00a4
                           0000A5   438 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   439 _IAPUEN	=	0x00a5
                           0000A6   440 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   441 _IAPAL	=	0x00a6
                           0000A7   442 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   443 _IAPAH	=	0x00a7
                           0000A8   444 G$IE$0_0$0 == 0x00a8
                           0000A8   445 _IE	=	0x00a8
                           0000A9   446 G$SADDR$0_0$0 == 0x00a9
                           0000A9   447 _SADDR	=	0x00a9
                           0000AA   448 G$WDCON$0_0$0 == 0x00aa
                           0000AA   449 _WDCON	=	0x00aa
                           0000AB   450 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   451 _BODCON1	=	0x00ab
                           0000AC   452 G$P3M1$0_0$0 == 0x00ac
                           0000AC   453 _P3M1	=	0x00ac
                           0000AD   454 G$P3M2$0_0$0 == 0x00ad
                           0000AD   455 _P3M2	=	0x00ad
                           0000AE   456 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   457 _IAPFD	=	0x00ae
                           0000AF   458 G$IAPCN$0_0$0 == 0x00af
                           0000AF   459 _IAPCN	=	0x00af
                           0000B0   460 G$P3$0_0$0 == 0x00b0
                           0000B0   461 _P3	=	0x00b0
                           0000B1   462 G$P0M1$0_0$0 == 0x00b1
                           0000B1   463 _P0M1	=	0x00b1
                           0000B2   464 G$P0M2$0_0$0 == 0x00b2
                           0000B2   465 _P0M2	=	0x00b2
                           0000B3   466 G$P1M1$0_0$0 == 0x00b3
                           0000B3   467 _P1M1	=	0x00b3
                           0000B4   468 G$P1M2$0_0$0 == 0x00b4
                           0000B4   469 _P1M2	=	0x00b4
                           0000B5   470 G$TOE$0_0$0 == 0x00b5
                           0000B5   471 _TOE	=	0x00b5
                           0000B7   472 G$IPH$0_0$0 == 0x00b7
                           0000B7   473 _IPH	=	0x00b7
                           0000B8   474 G$IP$0_0$0 == 0x00b8
                           0000B8   475 _IP	=	0x00b8
                           0000B9   476 G$SADEN$0_0$0 == 0x00b9
                           0000B9   477 _SADEN	=	0x00b9
                           0000BA   478 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   479 _SADEN_1	=	0x00ba
                           0000BB   480 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   481 _SADDR_1	=	0x00bb
                           0000BC   482 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   483 _I2DAT	=	0x00bc
                           0000BD   484 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   485 _I2STAT	=	0x00bd
                           0000BE   486 G$I2CLK$0_0$0 == 0x00be
                           0000BE   487 _I2CLK	=	0x00be
                           0000BF   488 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   489 _I2TOC	=	0x00bf
                           0000C0   490 G$I2CON$0_0$0 == 0x00c0
                           0000C0   491 _I2CON	=	0x00c0
                           0000C1   492 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   493 _I2ADDR	=	0x00c1
                           0000C2   494 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   495 _ADCRL	=	0x00c2
                           0000C3   496 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   497 _ADCRH	=	0x00c3
                           0000C4   498 G$T3CON$0_0$0 == 0x00c4
                           0000C4   499 _T3CON	=	0x00c4
                           0000C5   500 G$RL3$0_0$0 == 0x00c5
                           0000C5   501 _RL3	=	0x00c5
                           0000C6   502 G$RH3$0_0$0 == 0x00c6
                           0000C6   503 _RH3	=	0x00c6
                           0000C7   504 G$TA$0_0$0 == 0x00c7
                           0000C7   505 _TA	=	0x00c7
                           0000C8   506 G$T2CON$0_0$0 == 0x00c8
                           0000C8   507 _T2CON	=	0x00c8
                           0000C9   508 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   509 _T2MOD	=	0x00c9
                           0000CA   510 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   511 _RCMP2L	=	0x00ca
                           0000CB   512 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   513 _RCMP2H	=	0x00cb
                           0000CC   514 G$TL2$0_0$0 == 0x00cc
                           0000CC   515 _TL2	=	0x00cc
                           0000CD   516 G$TH2$0_0$0 == 0x00cd
                           0000CD   517 _TH2	=	0x00cd
                           0000CE   518 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   519 _ADCMPL	=	0x00ce
                           0000CF   520 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   521 _ADCMPH	=	0x00cf
                           0000D0   522 G$PSW$0_0$0 == 0x00d0
                           0000D0   523 _PSW	=	0x00d0
                           0000D1   524 G$PWM0PH$0_0$0 == 0x00d1
                           0000D1   525 _PWM0PH	=	0x00d1
                           0000D2   526 G$PWM0C0H$0_0$0 == 0x00d2
                           0000D2   527 _PWM0C0H	=	0x00d2
                           0000D3   528 G$PWM0C1H$0_0$0 == 0x00d3
                           0000D3   529 _PWM0C1H	=	0x00d3
                           0000D4   530 G$PWM0C2H$0_0$0 == 0x00d4
                           0000D4   531 _PWM0C2H	=	0x00d4
                           0000D5   532 G$PWM0C3H$0_0$0 == 0x00d5
                           0000D5   533 _PWM0C3H	=	0x00d5
                           0000D6   534 G$PNP$0_0$0 == 0x00d6
                           0000D6   535 _PNP	=	0x00d6
                           0000D7   536 G$PWM0FBD$0_0$0 == 0x00d7
                           0000D7   537 _PWM0FBD	=	0x00d7
                           0000D8   538 G$PWM0CON0$0_0$0 == 0x00d8
                           0000D8   539 _PWM0CON0	=	0x00d8
                           0000D9   540 G$PWM0PL$0_0$0 == 0x00d9
                           0000D9   541 _PWM0PL	=	0x00d9
                           0000DA   542 G$PWM0C0L$0_0$0 == 0x00da
                           0000DA   543 _PWM0C0L	=	0x00da
                           0000DB   544 G$PWM0C1L$0_0$0 == 0x00db
                           0000DB   545 _PWM0C1L	=	0x00db
                           0000DC   546 G$PWM0C2L$0_0$0 == 0x00dc
                           0000DC   547 _PWM0C2L	=	0x00dc
                           0000DD   548 G$PWM0C3L$0_0$0 == 0x00dd
                           0000DD   549 _PWM0C3L	=	0x00dd
                           0000DE   550 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   551 _PIOCON0	=	0x00de
                           0000DF   552 G$PWM0CON1$0_0$0 == 0x00df
                           0000DF   553 _PWM0CON1	=	0x00df
                           0000E0   554 G$ACC$0_0$0 == 0x00e0
                           0000E0   555 _ACC	=	0x00e0
                           0000E1   556 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   557 _ADCCON1	=	0x00e1
                           0000E2   558 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   559 _ADCCON2	=	0x00e2
                           0000E3   560 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   561 _ADCDLY	=	0x00e3
                           0000E4   562 G$C0L$0_0$0 == 0x00e4
                           0000E4   563 _C0L	=	0x00e4
                           0000E5   564 G$C0H$0_0$0 == 0x00e5
                           0000E5   565 _C0H	=	0x00e5
                           0000E6   566 G$C1L$0_0$0 == 0x00e6
                           0000E6   567 _C1L	=	0x00e6
                           0000E7   568 G$C1H$0_0$0 == 0x00e7
                           0000E7   569 _C1H	=	0x00e7
                           0000E8   570 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   571 _ADCCON0	=	0x00e8
                           0000E9   572 G$PICON$0_0$0 == 0x00e9
                           0000E9   573 _PICON	=	0x00e9
                           0000EA   574 G$PINEN$0_0$0 == 0x00ea
                           0000EA   575 _PINEN	=	0x00ea
                           0000EB   576 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   577 _PIPEN	=	0x00eb
                           0000EC   578 G$PIF$0_0$0 == 0x00ec
                           0000EC   579 _PIF	=	0x00ec
                           0000ED   580 G$C2L$0_0$0 == 0x00ed
                           0000ED   581 _C2L	=	0x00ed
                           0000EE   582 G$C2H$0_0$0 == 0x00ee
                           0000EE   583 _C2H	=	0x00ee
                           0000EF   584 G$EIP$0_0$0 == 0x00ef
                           0000EF   585 _EIP	=	0x00ef
                           0000F0   586 G$B$0_0$0 == 0x00f0
                           0000F0   587 _B	=	0x00f0
                           0000F1   588 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   589 _CAPCON3	=	0x00f1
                           0000F2   590 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   591 _CAPCON4	=	0x00f2
                           0000F3   592 G$SPCR$0_0$0 == 0x00f3
                           0000F3   593 _SPCR	=	0x00f3
                           0000F4   594 G$SPSR$0_0$0 == 0x00f4
                           0000F4   595 _SPSR	=	0x00f4
                           0000F5   596 G$SPDR$0_0$0 == 0x00f5
                           0000F5   597 _SPDR	=	0x00f5
                           0000F6   598 G$AINDIDS0$0_0$0 == 0x00f6
                           0000F6   599 _AINDIDS0	=	0x00f6
                           0000F7   600 G$EIPH$0_0$0 == 0x00f7
                           0000F7   601 _EIPH	=	0x00f7
                           0000F8   602 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   603 _SCON_1	=	0x00f8
                           0000F9   604 G$PWM0DTEN$0_0$0 == 0x00f9
                           0000F9   605 _PWM0DTEN	=	0x00f9
                           0000FA   606 G$PWM0DTCNT$0_0$0 == 0x00fa
                           0000FA   607 _PWM0DTCNT	=	0x00fa
                           0000FB   608 G$PWM0MEN$0_0$0 == 0x00fb
                           0000FB   609 _PWM0MEN	=	0x00fb
                           0000FC   610 G$PWM0MD$0_0$0 == 0x00fc
                           0000FC   611 _PWM0MD	=	0x00fc
                           0000FD   612 G$PORDIS$0_0$0 == 0x00fd
                           0000FD   613 _PORDIS	=	0x00fd
                           0000FE   614 G$EIP1$0_0$0 == 0x00fe
                           0000FE   615 _EIP1	=	0x00fe
                           0000FF   616 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   617 _EIPH1	=	0x00ff
                           0000AC   618 G$P3S$0_0$0 == 0x00ac
                           0000AC   619 _P3S	=	0x00ac
                           0000AD   620 G$P3SR$0_0$0 == 0x00ad
                           0000AD   621 _P3SR	=	0x00ad
                           0000B1   622 G$P0S$0_0$0 == 0x00b1
                           0000B1   623 _P0S	=	0x00b1
                           0000B2   624 G$P0SR$0_0$0 == 0x00b2
                           0000B2   625 _P0SR	=	0x00b2
                           0000B3   626 G$P1S$0_0$0 == 0x00b3
                           0000B3   627 _P1S	=	0x00b3
                           0000B4   628 G$P1SR$0_0$0 == 0x00b4
                           0000B4   629 _P1SR	=	0x00b4
                           0000B7   630 G$PWM0INTC$0_0$0 == 0x00b7
                           0000B7   631 _PWM0INTC	=	0x00b7
                           0000C4   632 G$PWM0C4H$0_0$0 == 0x00c4
                           0000C4   633 _PWM0C4H	=	0x00c4
                           0000C5   634 G$PWM0C5H$0_0$0 == 0x00c5
                           0000C5   635 _PWM0C5H	=	0x00c5
                           0000C6   636 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   637 _PIOCON1	=	0x00c6
                           0000CC   638 G$PWM0C4L$0_0$0 == 0x00cc
                           0000CC   639 _PWM0C4L	=	0x00cc
                           0000CD   640 G$PWM0C5L$0_0$0 == 0x00cd
                           0000CD   641 _PWM0C5L	=	0x00cd
                           0000F3   642 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   643 _SPCR2	=	0x00f3
                           0000FF   644 G$LVRDIS$0_0$0 == 0x00ff
                           0000FF   645 _LVRDIS	=	0x00ff
                           000084   646 G$ADCBAL$0_0$0 == 0x0084
                           000084   647 _ADCBAL	=	0x0084
                           000085   648 G$ADCBAH$0_0$0 == 0x0085
                           000085   649 _ADCBAH	=	0x0085
                           000086   650 G$ADCCON3$0_0$0 == 0x0086
                           000086   651 _ADCCON3	=	0x0086
                           000089   652 G$P2M1$0_0$0 == 0x0089
                           000089   653 _P2M1	=	0x0089
                           00008A   654 G$P2M2$0_0$0 == 0x008a
                           00008A   655 _P2M2	=	0x008a
                           00008B   656 G$P2SR$0_0$0 == 0x008b
                           00008B   657 _P2SR	=	0x008b
                           00008C   658 G$P2S$0_0$0 == 0x008c
                           00008C   659 _P2S	=	0x008c
                           00008D   660 G$ADCSN$0_0$0 == 0x008d
                           00008D   661 _ADCSN	=	0x008d
                           00008E   662 G$ADCCN$0_0$0 == 0x008e
                           00008E   663 _ADCCN	=	0x008e
                           00008F   664 G$ADCSR$0_0$0 == 0x008f
                           00008F   665 _ADCSR	=	0x008f
                           000092   666 G$P0UP$0_0$0 == 0x0092
                           000092   667 _P0UP	=	0x0092
                           000093   668 G$P1UP$0_0$0 == 0x0093
                           000093   669 _P1UP	=	0x0093
                           000094   670 G$P2UP$0_0$0 == 0x0094
                           000094   671 _P2UP	=	0x0094
                           000095   672 G$P3UP$0_0$0 == 0x0095
                           000095   673 _P3UP	=	0x0095
                           000097   674 G$RWKH$0_0$0 == 0x0097
                           000097   675 _RWKH	=	0x0097
                           000099   676 G$AINDIDS1$0_0$0 == 0x0099
                           000099   677 _AINDIDS1	=	0x0099
                           00009A   678 G$P0DW$0_0$0 == 0x009a
                           00009A   679 _P0DW	=	0x009a
                           00009B   680 G$P1DW$0_0$0 == 0x009b
                           00009B   681 _P1DW	=	0x009b
                           00009C   682 G$P2DW$0_0$0 == 0x009c
                           00009C   683 _P2DW	=	0x009c
                           00009D   684 G$P3DW$0_0$0 == 0x009d
                           00009D   685 _P3DW	=	0x009d
                           0000A1   686 G$AUXR2$0_0$0 == 0x00a1
                           0000A1   687 _AUXR2	=	0x00a1
                           0000A2   688 G$AUXR3$0_0$0 == 0x00a2
                           0000A2   689 _AUXR3	=	0x00a2
                           0000A3   690 G$AUXR4$0_0$0 == 0x00a3
                           0000A3   691 _AUXR4	=	0x00a3
                           0000A4   692 G$AUXR5$0_0$0 == 0x00a4
                           0000A4   693 _AUXR5	=	0x00a4
                           0000A5   694 G$AUXR6$0_0$0 == 0x00a5
                           0000A5   695 _AUXR6	=	0x00a5
                           0000A6   696 G$AUXR7$0_0$0 == 0x00a6
                           0000A6   697 _AUXR7	=	0x00a6
                           0000A7   698 G$AUXR8$0_0$0 == 0x00a7
                           0000A7   699 _AUXR8	=	0x00a7
                           0000A9   700 G$PWM1PH$0_0$0 == 0x00a9
                           0000A9   701 _PWM1PH	=	0x00a9
                           0000AA   702 G$PWM1C0H$0_0$0 == 0x00aa
                           0000AA   703 _PWM1C0H	=	0x00aa
                           0000AB   704 G$PWM1C1H$0_0$0 == 0x00ab
                           0000AB   705 _PWM1C1H	=	0x00ab
                           0000AC   706 G$PWM1MD$0_0$0 == 0x00ac
                           0000AC   707 _PWM1MD	=	0x00ac
                           0000AD   708 G$PWM1MEN$0_0$0 == 0x00ad
                           0000AD   709 _PWM1MEN	=	0x00ad
                           0000B1   710 G$PWM1PL$0_0$0 == 0x00b1
                           0000B1   711 _PWM1PL	=	0x00b1
                           0000B2   712 G$PWM1C0L$0_0$0 == 0x00b2
                           0000B2   713 _PWM1C0L	=	0x00b2
                           0000B3   714 G$PWM1C1L$0_0$0 == 0x00b3
                           0000B3   715 _PWM1C1L	=	0x00b3
                           0000B4   716 G$PWM1CON0$0_0$0 == 0x00b4
                           0000B4   717 _PWM1CON0	=	0x00b4
                           0000B5   718 G$PWM1CON1$0_0$0 == 0x00b5
                           0000B5   719 _PWM1CON1	=	0x00b5
                           0000B6   720 G$PWM1INTC$0_0$0 == 0x00b6
                           0000B6   721 _PWM1INTC	=	0x00b6
                           0000B7   722 G$PIOCON2$0_0$0 == 0x00b7
                           0000B7   723 _PIOCON2	=	0x00b7
                           0000B9   724 G$PWM2PH$0_0$0 == 0x00b9
                           0000B9   725 _PWM2PH	=	0x00b9
                           0000BA   726 G$PWM2C0H$0_0$0 == 0x00ba
                           0000BA   727 _PWM2C0H	=	0x00ba
                           0000BB   728 G$PWM2C1H$0_0$0 == 0x00bb
                           0000BB   729 _PWM2C1H	=	0x00bb
                           0000BC   730 G$PWM2MD$0_0$0 == 0x00bc
                           0000BC   731 _PWM2MD	=	0x00bc
                           0000BD   732 G$PWM2MEN$0_0$0 == 0x00bd
                           0000BD   733 _PWM2MEN	=	0x00bd
                           0000C1   734 G$PWM2PL$0_0$0 == 0x00c1
                           0000C1   735 _PWM2PL	=	0x00c1
                           0000C2   736 G$PWM2C0L$0_0$0 == 0x00c2
                           0000C2   737 _PWM2C0L	=	0x00c2
                           0000C3   738 G$PWM2C1L$0_0$0 == 0x00c3
                           0000C3   739 _PWM2C1L	=	0x00c3
                           0000C4   740 G$PWM2CON0$0_0$0 == 0x00c4
                           0000C4   741 _PWM2CON0	=	0x00c4
                           0000C5   742 G$PWM2CON1$0_0$0 == 0x00c5
                           0000C5   743 _PWM2CON1	=	0x00c5
                           0000C6   744 G$PWM2INTC$0_0$0 == 0x00c6
                           0000C6   745 _PWM2INTC	=	0x00c6
                           0000C9   746 G$PWM3PH$0_0$0 == 0x00c9
                           0000C9   747 _PWM3PH	=	0x00c9
                           0000CA   748 G$PWM3C0H$0_0$0 == 0x00ca
                           0000CA   749 _PWM3C0H	=	0x00ca
                           0000CB   750 G$PWM3C1H$0_0$0 == 0x00cb
                           0000CB   751 _PWM3C1H	=	0x00cb
                           0000CC   752 G$PWM3MD$0_0$0 == 0x00cc
                           0000CC   753 _PWM3MD	=	0x00cc
                           0000CD   754 G$PWM3MEN$0_0$0 == 0x00cd
                           0000CD   755 _PWM3MEN	=	0x00cd
                           0000CE   756 G$EIP2$0_0$0 == 0x00ce
                           0000CE   757 _EIP2	=	0x00ce
                           0000CF   758 G$EIPH2$0_0$0 == 0x00cf
                           0000CF   759 _EIPH2	=	0x00cf
                           0000D1   760 G$PWM3PL$0_0$0 == 0x00d1
                           0000D1   761 _PWM3PL	=	0x00d1
                           0000D2   762 G$PWM3C0L$0_0$0 == 0x00d2
                           0000D2   763 _PWM3C0L	=	0x00d2
                           0000D3   764 G$PWM3C1L$0_0$0 == 0x00d3
                           0000D3   765 _PWM3C1L	=	0x00d3
                           0000D4   766 G$PWM3CON0$0_0$0 == 0x00d4
                           0000D4   767 _PWM3CON0	=	0x00d4
                           0000D5   768 G$PWM3CON1$0_0$0 == 0x00d5
                           0000D5   769 _PWM3CON1	=	0x00d5
                           0000D6   770 G$PWM3INTC$0_0$0 == 0x00d6
                           0000D6   771 _PWM3INTC	=	0x00d6
                           0000D7   772 G$XTLCON$0_0$0 == 0x00d7
                           0000D7   773 _XTLCON	=	0x00d7
                           0000D9   774 G$SC0DR$0_0$0 == 0x00d9
                           0000D9   775 _SC0DR	=	0x00d9
                           0000DA   776 G$SC0EGT$0_0$0 == 0x00da
                           0000DA   777 _SC0EGT	=	0x00da
                           0000DB   778 G$SC0ETURD0$0_0$0 == 0x00db
                           0000DB   779 _SC0ETURD0	=	0x00db
                           0000DC   780 G$SC0ETURD1$0_0$0 == 0x00dc
                           0000DC   781 _SC0ETURD1	=	0x00dc
                           0000DD   782 G$SC0IE$0_0$0 == 0x00dd
                           0000DD   783 _SC0IE	=	0x00dd
                           0000DE   784 G$SC0IS$0_0$0 == 0x00de
                           0000DE   785 _SC0IS	=	0x00de
                           0000DF   786 G$SC0TSR$0_0$0 == 0x00df
                           0000DF   787 _SC0TSR	=	0x00df
                           0000E1   788 G$SC1DR$0_0$0 == 0x00e1
                           0000E1   789 _SC1DR	=	0x00e1
                           0000E2   790 G$SC1EGT$0_0$0 == 0x00e2
                           0000E2   791 _SC1EGT	=	0x00e2
                           0000E3   792 G$SC1ETURD0$0_0$0 == 0x00e3
                           0000E3   793 _SC1ETURD0	=	0x00e3
                           0000E4   794 G$SC1ETURD1$0_0$0 == 0x00e4
                           0000E4   795 _SC1ETURD1	=	0x00e4
                           0000E5   796 G$SC1IE$0_0$0 == 0x00e5
                           0000E5   797 _SC1IE	=	0x00e5
                           0000E6   798 G$SC1IS$0_0$0 == 0x00e6
                           0000E6   799 _SC1IS	=	0x00e6
                           0000E7   800 G$SC1TSR$0_0$0 == 0x00e7
                           0000E7   801 _SC1TSR	=	0x00e7
                           0000E9   802 G$SC2DR$0_0$0 == 0x00e9
                           0000E9   803 _SC2DR	=	0x00e9
                           0000EA   804 G$SC2EGT$0_0$0 == 0x00ea
                           0000EA   805 _SC2EGT	=	0x00ea
                           0000EB   806 G$SC2ETURD0$0_0$0 == 0x00eb
                           0000EB   807 _SC2ETURD0	=	0x00eb
                           0000EC   808 G$SC2ETURD1$0_0$0 == 0x00ec
                           0000EC   809 _SC2ETURD1	=	0x00ec
                           0000ED   810 G$SC2IE$0_0$0 == 0x00ed
                           0000ED   811 _SC2IE	=	0x00ed
                           0000EE   812 G$SC2IS$0_0$0 == 0x00ee
                           0000EE   813 _SC2IS	=	0x00ee
                           0000EF   814 G$SC2TSR$0_0$0 == 0x00ef
                           0000EF   815 _SC2TSR	=	0x00ef
                           0000F1   816 G$SC0CR0$0_0$0 == 0x00f1
                           0000F1   817 _SC0CR0	=	0x00f1
                           0000F2   818 G$SC0CR1$0_0$0 == 0x00f2
                           0000F2   819 _SC0CR1	=	0x00f2
                           0000F3   820 G$SC1CR0$0_0$0 == 0x00f3
                           0000F3   821 _SC1CR0	=	0x00f3
                           0000F4   822 G$SC1CR1$0_0$0 == 0x00f4
                           0000F4   823 _SC1CR1	=	0x00f4
                           0000F5   824 G$SC2CR0$0_0$0 == 0x00f5
                           0000F5   825 _SC2CR0	=	0x00f5
                           0000F6   826 G$SC2CR1$0_0$0 == 0x00f6
                           0000F6   827 _SC2CR1	=	0x00f6
                           0000F7   828 G$PIPS7$0_0$0 == 0x00f7
                           0000F7   829 _PIPS7	=	0x00f7
                           0000F9   830 G$PIPS0$0_0$0 == 0x00f9
                           0000F9   831 _PIPS0	=	0x00f9
                           0000FA   832 G$PIPS1$0_0$0 == 0x00fa
                           0000FA   833 _PIPS1	=	0x00fa
                           0000FB   834 G$PIPS2$0_0$0 == 0x00fb
                           0000FB   835 _PIPS2	=	0x00fb
                           0000FC   836 G$PIPS3$0_0$0 == 0x00fc
                           0000FC   837 _PIPS3	=	0x00fc
                           0000FD   838 G$PIPS4$0_0$0 == 0x00fd
                           0000FD   839 _PIPS4	=	0x00fd
                           0000FE   840 G$PIPS5$0_0$0 == 0x00fe
                           0000FE   841 _PIPS5	=	0x00fe
                           0000FF   842 G$PIPS6$0_0$0 == 0x00ff
                           0000FF   843 _PIPS6	=	0x00ff
                                    844 ;--------------------------------------------------------
                                    845 ; special function bits
                                    846 ;--------------------------------------------------------
                                    847 	.area RSEG    (ABS,DATA)
      000000                        848 	.org 0x0000
                           0000FF   849 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   850 _SM0_1	=	0x00ff
                           0000FF   851 G$FE_1$0_0$0 == 0x00ff
                           0000FF   852 _FE_1	=	0x00ff
                           0000FE   853 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   854 _SM1_1	=	0x00fe
                           0000FD   855 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   856 _SM2_1	=	0x00fd
                           0000FC   857 G$REN_1$0_0$0 == 0x00fc
                           0000FC   858 _REN_1	=	0x00fc
                           0000FB   859 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   860 _TB8_1	=	0x00fb
                           0000FA   861 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   862 _RB8_1	=	0x00fa
                           0000F9   863 G$TI_1$0_0$0 == 0x00f9
                           0000F9   864 _TI_1	=	0x00f9
                           0000F8   865 G$RI_1$0_0$0 == 0x00f8
                           0000F8   866 _RI_1	=	0x00f8
                           0000EF   867 G$ADCF$0_0$0 == 0x00ef
                           0000EF   868 _ADCF	=	0x00ef
                           0000EE   869 G$ADCS$0_0$0 == 0x00ee
                           0000EE   870 _ADCS	=	0x00ee
                           0000ED   871 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   872 _ETGSEL1	=	0x00ed
                           0000EC   873 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   874 _ETGSEL0	=	0x00ec
                           0000EB   875 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   876 _ADCHS3	=	0x00eb
                           0000EA   877 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   878 _ADCHS2	=	0x00ea
                           0000E9   879 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   880 _ADCHS1	=	0x00e9
                           0000E8   881 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   882 _ADCHS0	=	0x00e8
                           0000DF   883 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   884 _PWMRUN	=	0x00df
                           0000DE   885 G$LOAD$0_0$0 == 0x00de
                           0000DE   886 _LOAD	=	0x00de
                           0000DD   887 G$PWMF$0_0$0 == 0x00dd
                           0000DD   888 _PWMF	=	0x00dd
                           0000DC   889 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   890 _CLRPWM	=	0x00dc
                           0000D7   891 G$CY$0_0$0 == 0x00d7
                           0000D7   892 _CY	=	0x00d7
                           0000D6   893 G$AC$0_0$0 == 0x00d6
                           0000D6   894 _AC	=	0x00d6
                           0000D5   895 G$F0$0_0$0 == 0x00d5
                           0000D5   896 _F0	=	0x00d5
                           0000D4   897 G$RS1$0_0$0 == 0x00d4
                           0000D4   898 _RS1	=	0x00d4
                           0000D3   899 G$RS0$0_0$0 == 0x00d3
                           0000D3   900 _RS0	=	0x00d3
                           0000D2   901 G$OV$0_0$0 == 0x00d2
                           0000D2   902 _OV	=	0x00d2
                           0000D0   903 G$P$0_0$0 == 0x00d0
                           0000D0   904 _P	=	0x00d0
                           0000CF   905 G$TF2$0_0$0 == 0x00cf
                           0000CF   906 _TF2	=	0x00cf
                           0000CA   907 G$TR2$0_0$0 == 0x00ca
                           0000CA   908 _TR2	=	0x00ca
                           0000C8   909 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   910 _CM_RL2	=	0x00c8
                           0000C6   911 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   912 _I2CEN	=	0x00c6
                           0000C5   913 G$STA$0_0$0 == 0x00c5
                           0000C5   914 _STA	=	0x00c5
                           0000C4   915 G$STO$0_0$0 == 0x00c4
                           0000C4   916 _STO	=	0x00c4
                           0000C3   917 G$SI$0_0$0 == 0x00c3
                           0000C3   918 _SI	=	0x00c3
                           0000C2   919 G$AA$0_0$0 == 0x00c2
                           0000C2   920 _AA	=	0x00c2
                           0000C0   921 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   922 _I2CPX	=	0x00c0
                           0000BE   923 G$PADC$0_0$0 == 0x00be
                           0000BE   924 _PADC	=	0x00be
                           0000BD   925 G$PBOD$0_0$0 == 0x00bd
                           0000BD   926 _PBOD	=	0x00bd
                           0000BC   927 G$PS$0_0$0 == 0x00bc
                           0000BC   928 _PS	=	0x00bc
                           0000BB   929 G$PT1$0_0$0 == 0x00bb
                           0000BB   930 _PT1	=	0x00bb
                           0000BA   931 G$PX1$0_0$0 == 0x00ba
                           0000BA   932 _PX1	=	0x00ba
                           0000B9   933 G$PT0$0_0$0 == 0x00b9
                           0000B9   934 _PT0	=	0x00b9
                           0000B8   935 G$PX0$0_0$0 == 0x00b8
                           0000B8   936 _PX0	=	0x00b8
                           0000B7   937 G$P37$0_0$0 == 0x00b7
                           0000B7   938 _P37	=	0x00b7
                           0000B6   939 G$P36$0_0$0 == 0x00b6
                           0000B6   940 _P36	=	0x00b6
                           0000B5   941 G$P35$0_0$0 == 0x00b5
                           0000B5   942 _P35	=	0x00b5
                           0000B4   943 G$P34$0_0$0 == 0x00b4
                           0000B4   944 _P34	=	0x00b4
                           0000B3   945 G$P33$0_0$0 == 0x00b3
                           0000B3   946 _P33	=	0x00b3
                           0000B2   947 G$P32$0_0$0 == 0x00b2
                           0000B2   948 _P32	=	0x00b2
                           0000B1   949 G$P31$0_0$0 == 0x00b1
                           0000B1   950 _P31	=	0x00b1
                           0000B0   951 G$P30$0_0$0 == 0x00b0
                           0000B0   952 _P30	=	0x00b0
                           0000AF   953 G$EA$0_0$0 == 0x00af
                           0000AF   954 _EA	=	0x00af
                           0000AE   955 G$EADC$0_0$0 == 0x00ae
                           0000AE   956 _EADC	=	0x00ae
                           0000AD   957 G$EBOD$0_0$0 == 0x00ad
                           0000AD   958 _EBOD	=	0x00ad
                           0000AC   959 G$ES$0_0$0 == 0x00ac
                           0000AC   960 _ES	=	0x00ac
                           0000AB   961 G$ET1$0_0$0 == 0x00ab
                           0000AB   962 _ET1	=	0x00ab
                           0000AA   963 G$EX1$0_0$0 == 0x00aa
                           0000AA   964 _EX1	=	0x00aa
                           0000A9   965 G$ET0$0_0$0 == 0x00a9
                           0000A9   966 _ET0	=	0x00a9
                           0000A8   967 G$EX0$0_0$0 == 0x00a8
                           0000A8   968 _EX0	=	0x00a8
                           0000A0   969 G$P20$0_0$0 == 0x00a0
                           0000A0   970 _P20	=	0x00a0
                           00009F   971 G$SM0$0_0$0 == 0x009f
                           00009F   972 _SM0	=	0x009f
                           00009F   973 G$FE$0_0$0 == 0x009f
                           00009F   974 _FE	=	0x009f
                           00009E   975 G$SM1$0_0$0 == 0x009e
                           00009E   976 _SM1	=	0x009e
                           00009D   977 G$SM2$0_0$0 == 0x009d
                           00009D   978 _SM2	=	0x009d
                           00009C   979 G$REN$0_0$0 == 0x009c
                           00009C   980 _REN	=	0x009c
                           00009B   981 G$TB8$0_0$0 == 0x009b
                           00009B   982 _TB8	=	0x009b
                           00009A   983 G$RB8$0_0$0 == 0x009a
                           00009A   984 _RB8	=	0x009a
                           000099   985 G$TI$0_0$0 == 0x0099
                           000099   986 _TI	=	0x0099
                           000098   987 G$RI$0_0$0 == 0x0098
                           000098   988 _RI	=	0x0098
                           000097   989 G$P17$0_0$0 == 0x0097
                           000097   990 _P17	=	0x0097
                           000096   991 G$P16$0_0$0 == 0x0096
                           000096   992 _P16	=	0x0096
                           000096   993 G$TXD_1$0_0$0 == 0x0096
                           000096   994 _TXD_1	=	0x0096
                           000095   995 G$P15$0_0$0 == 0x0095
                           000095   996 _P15	=	0x0095
                           000094   997 G$P14$0_0$0 == 0x0094
                           000094   998 _P14	=	0x0094
                           000094   999 G$SDA$0_0$0 == 0x0094
                           000094  1000 _SDA	=	0x0094
                           000093  1001 G$P13$0_0$0 == 0x0093
                           000093  1002 _P13	=	0x0093
                           000093  1003 G$SCL$0_0$0 == 0x0093
                           000093  1004 _SCL	=	0x0093
                           000092  1005 G$P12$0_0$0 == 0x0092
                           000092  1006 _P12	=	0x0092
                           000091  1007 G$P11$0_0$0 == 0x0091
                           000091  1008 _P11	=	0x0091
                           000090  1009 G$P10$0_0$0 == 0x0090
                           000090  1010 _P10	=	0x0090
                           00008F  1011 G$TF1$0_0$0 == 0x008f
                           00008F  1012 _TF1	=	0x008f
                           00008E  1013 G$TR1$0_0$0 == 0x008e
                           00008E  1014 _TR1	=	0x008e
                           00008D  1015 G$TF0$0_0$0 == 0x008d
                           00008D  1016 _TF0	=	0x008d
                           00008C  1017 G$TR0$0_0$0 == 0x008c
                           00008C  1018 _TR0	=	0x008c
                           00008B  1019 G$IE1$0_0$0 == 0x008b
                           00008B  1020 _IE1	=	0x008b
                           00008A  1021 G$IT1$0_0$0 == 0x008a
                           00008A  1022 _IT1	=	0x008a
                           000089  1023 G$IE0$0_0$0 == 0x0089
                           000089  1024 _IE0	=	0x0089
                           000088  1025 G$IT0$0_0$0 == 0x0088
                           000088  1026 _IT0	=	0x0088
                           000087  1027 G$P07$0_0$0 == 0x0087
                           000087  1028 _P07	=	0x0087
                           000087  1029 G$RXD$0_0$0 == 0x0087
                           000087  1030 _RXD	=	0x0087
                           000086  1031 G$P06$0_0$0 == 0x0086
                           000086  1032 _P06	=	0x0086
                           000086  1033 G$TXD$0_0$0 == 0x0086
                           000086  1034 _TXD	=	0x0086
                           000085  1035 G$P05$0_0$0 == 0x0085
                           000085  1036 _P05	=	0x0085
                           000084  1037 G$P04$0_0$0 == 0x0084
                           000084  1038 _P04	=	0x0084
                           000084  1039 G$STADC$0_0$0 == 0x0084
                           000084  1040 _STADC	=	0x0084
                           000083  1041 G$P03$0_0$0 == 0x0083
                           000083  1042 _P03	=	0x0083
                           000082  1043 G$P02$0_0$0 == 0x0082
                           000082  1044 _P02	=	0x0082
                           000082  1045 G$RXD_1$0_0$0 == 0x0082
                           000082  1046 _RXD_1	=	0x0082
                           000081  1047 G$P01$0_0$0 == 0x0081
                           000081  1048 _P01	=	0x0081
                           000081  1049 G$MISO$0_0$0 == 0x0081
                           000081  1050 _MISO	=	0x0081
                           000080  1051 G$P00$0_0$0 == 0x0080
                           000080  1052 _P00	=	0x0080
                           000080  1053 G$MOSI$0_0$0 == 0x0080
                           000080  1054 _MOSI	=	0x0080
                                   1055 ;--------------------------------------------------------
                                   1056 ; overlayable register banks
                                   1057 ;--------------------------------------------------------
                                   1058 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1059 	.ds 8
                                   1060 ;--------------------------------------------------------
                                   1061 ; internal ram data
                                   1062 ;--------------------------------------------------------
                                   1063 	.area DSEG    (DATA)
                           000000  1064 Ldelay.Timer0_Delay$u16CNT$1_0$48==.
      000008                       1065 _Timer0_Delay_PARM_2:
      000008                       1066 	.ds 2
                           000002  1067 Ldelay.Timer0_Delay$u16DLYUnit$1_0$48==.
      00000A                       1068 _Timer0_Delay_PARM_3:
      00000A                       1069 	.ds 2
                           000004  1070 Ldelay.Timer1_Delay$u16CNT$1_0$51==.
      00000C                       1071 _Timer1_Delay_PARM_2:
      00000C                       1072 	.ds 2
                           000006  1073 Ldelay.Timer1_Delay$u16DLYUnit$1_0$51==.
      00000E                       1074 _Timer1_Delay_PARM_3:
      00000E                       1075 	.ds 2
                           000008  1076 Ldelay.Timer2_Delay$u16TMDIV$1_0$54==.
      000010                       1077 _Timer2_Delay_PARM_2:
      000010                       1078 	.ds 2
                           00000A  1079 Ldelay.Timer2_Delay$u16CNT$1_0$54==.
      000012                       1080 _Timer2_Delay_PARM_3:
      000012                       1081 	.ds 2
                           00000C  1082 Ldelay.Timer2_Delay$u32DLYUnit$1_0$54==.
      000014                       1083 _Timer2_Delay_PARM_4:
      000014                       1084 	.ds 4
                           000010  1085 Ldelay.Timer3_Delay$u8TMDIV$1_0$58==.
      000018                       1086 _Timer3_Delay_PARM_2:
      000018                       1087 	.ds 1
                           000011  1088 Ldelay.Timer3_Delay$u16CNT$1_0$58==.
      000019                       1089 _Timer3_Delay_PARM_3:
      000019                       1090 	.ds 2
                           000013  1091 Ldelay.Timer3_Delay$u32DLYUnit$1_0$58==.
      00001B                       1092 _Timer3_Delay_PARM_4:
      00001B                       1093 	.ds 4
                                   1094 ;--------------------------------------------------------
                                   1095 ; overlayable items in internal ram 
                                   1096 ;--------------------------------------------------------
                                   1097 ;--------------------------------------------------------
                                   1098 ; indirectly addressable internal ram data
                                   1099 ;--------------------------------------------------------
                                   1100 	.area ISEG    (DATA)
                                   1101 ;--------------------------------------------------------
                                   1102 ; absolute internal ram data
                                   1103 ;--------------------------------------------------------
                                   1104 	.area IABS    (ABS,DATA)
                                   1105 	.area IABS    (ABS,DATA)
                                   1106 ;--------------------------------------------------------
                                   1107 ; bit data
                                   1108 ;--------------------------------------------------------
                                   1109 	.area BSEG    (BIT)
                                   1110 ;--------------------------------------------------------
                                   1111 ; paged external ram data
                                   1112 ;--------------------------------------------------------
                                   1113 	.area PSEG    (PAG,XDATA)
                                   1114 ;--------------------------------------------------------
                                   1115 ; external ram data
                                   1116 ;--------------------------------------------------------
                                   1117 	.area XSEG    (XDATA)
                                   1118 ;--------------------------------------------------------
                                   1119 ; absolute external ram data
                                   1120 ;--------------------------------------------------------
                                   1121 	.area XABS    (ABS,XDATA)
                                   1122 ;--------------------------------------------------------
                                   1123 ; external initialized ram data
                                   1124 ;--------------------------------------------------------
                                   1125 	.area XISEG   (XDATA)
                                   1126 	.area HOME    (CODE)
                                   1127 	.area GSINIT0 (CODE)
                                   1128 	.area GSINIT1 (CODE)
                                   1129 	.area GSINIT2 (CODE)
                                   1130 	.area GSINIT3 (CODE)
                                   1131 	.area GSINIT4 (CODE)
                                   1132 	.area GSINIT5 (CODE)
                                   1133 	.area GSINIT  (CODE)
                                   1134 	.area GSFINAL (CODE)
                                   1135 	.area CSEG    (CODE)
                                   1136 ;--------------------------------------------------------
                                   1137 ; global & static initialisations
                                   1138 ;--------------------------------------------------------
                                   1139 	.area HOME    (CODE)
                                   1140 	.area GSINIT  (CODE)
                                   1141 	.area GSFINAL (CODE)
                                   1142 	.area GSINIT  (CODE)
                                   1143 ;--------------------------------------------------------
                                   1144 ; Home
                                   1145 ;--------------------------------------------------------
                                   1146 	.area HOME    (CODE)
                                   1147 	.area HOME    (CODE)
                                   1148 ;--------------------------------------------------------
                                   1149 ; code
                                   1150 ;--------------------------------------------------------
                                   1151 	.area CSEG    (CODE)
                                   1152 ;------------------------------------------------------------
                                   1153 ;Allocation info for local variables in function 'Timer0_Delay'
                                   1154 ;------------------------------------------------------------
                                   1155 ;u16CNT                    Allocated with name '_Timer0_Delay_PARM_2'
                                   1156 ;u16DLYUnit                Allocated with name '_Timer0_Delay_PARM_3'
                                   1157 ;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
                                   1158 ;TL0TMP                    Allocated to registers r3 
                                   1159 ;TH0TMP                    Allocated to registers r7 
                                   1160 ;------------------------------------------------------------
                           000000  1161 	G$Timer0_Delay$0$0 ==.
                           000000  1162 	C$delay.c$27$0_0$49 ==.
                                   1163 ;	..\..\..\..\Library\StdDriver\src\delay.c:27: void Timer0_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
                                   1164 ;	-----------------------------------------
                                   1165 ;	 function Timer0_Delay
                                   1166 ;	-----------------------------------------
      000066                       1167 _Timer0_Delay:
                           000007  1168 	ar7 = 0x07
                           000006  1169 	ar6 = 0x06
                           000005  1170 	ar5 = 0x05
                           000004  1171 	ar4 = 0x04
                           000003  1172 	ar3 = 0x03
                           000002  1173 	ar2 = 0x02
                           000001  1174 	ar1 = 0x01
                           000000  1175 	ar0 = 0x00
      000066 AC 82            [24] 1176 	mov	r4,dpl
      000068 AD 83            [24] 1177 	mov	r5,dph
      00006A AE F0            [24] 1178 	mov	r6,b
      00006C FF               [12] 1179 	mov	r7,a
                           000007  1180 	C$delay.c$31$1_0$49 ==.
                                   1181 ;	..\..\..\..\Library\StdDriver\src\delay.c:31: SFRS = 0;
      00006D 75 91 00         [24] 1182 	mov	_SFRS,#0x00
                           00000A  1183 	C$delay.c$32$1_0$49 ==.
                                   1184 ;	..\..\..\..\Library\StdDriver\src\delay.c:32: TIMER0_FSYS_DIV12;                                  //T0M=0, Timer0 Clock = Fsys/12
      000070 75 91 00         [24] 1185 	mov	_SFRS,#0x00
      000073 53 8E F7         [24] 1186 	anl	_CKCON,#0xf7
                           000010  1187 	C$delay.c$33$1_0$49 ==.
                                   1188 ;	..\..\..\..\Library\StdDriver\src\delay.c:33: ENABLE_TIMER0_MODE1;                                   //Timer0 is 16-bit mode
      000076 75 91 00         [24] 1189 	mov	_SFRS,#0x00
      000079 53 89 F0         [24] 1190 	anl	_TMOD,#0xf0
      00007C 43 89 01         [24] 1191 	orl	_TMOD,#0x01
                           000019  1192 	C$delay.c$34$1_0$49 ==.
                                   1193 ;	..\..\..\..\Library\StdDriver\src\delay.c:34: TL0TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
      00007F 75 5D 40         [24] 1194 	mov	__divulong_PARM_2,#0x40
      000082 75 5E 42         [24] 1195 	mov	(__divulong_PARM_2 + 1),#0x42
      000085 75 5F 0F         [24] 1196 	mov	(__divulong_PARM_2 + 2),#0x0f
      000088 75 60 00         [24] 1197 	mov	(__divulong_PARM_2 + 3),#0x00
      00008B 8C 82            [24] 1198 	mov	dpl,r4
      00008D 8D 83            [24] 1199 	mov	dph,r5
      00008F 8E F0            [24] 1200 	mov	b,r6
      000091 EF               [12] 1201 	mov	a,r7
      000092 12 0A 23         [24] 1202 	lcall	__divulong
      000095 85 0A 5D         [24] 1203 	mov	__mullong_PARM_2,_Timer0_Delay_PARM_3
      000098 85 0B 5E         [24] 1204 	mov	(__mullong_PARM_2 + 1),(_Timer0_Delay_PARM_3 + 1)
      00009B 75 5F 00         [24] 1205 	mov	(__mullong_PARM_2 + 2),#0x00
      00009E 75 60 00         [24] 1206 	mov	(__mullong_PARM_2 + 3),#0x00
      0000A1 12 0A 88         [24] 1207 	lcall	__mullong
      0000A4 AC 82            [24] 1208 	mov	r4,dpl
      0000A6 AD 83            [24] 1209 	mov	r5,dph
      0000A8 AE F0            [24] 1210 	mov	r6,b
      0000AA FF               [12] 1211 	mov	r7,a
      0000AB 75 5D 0C         [24] 1212 	mov	__divulong_PARM_2,#0x0c
      0000AE E4               [12] 1213 	clr	a
      0000AF F5 5E            [12] 1214 	mov	(__divulong_PARM_2 + 1),a
      0000B1 F5 5F            [12] 1215 	mov	(__divulong_PARM_2 + 2),a
      0000B3 F5 60            [12] 1216 	mov	(__divulong_PARM_2 + 3),a
      0000B5 8C 82            [24] 1217 	mov	dpl,r4
      0000B7 8D 83            [24] 1218 	mov	dph,r5
      0000B9 8E F0            [24] 1219 	mov	b,r6
      0000BB EF               [12] 1220 	mov	a,r7
      0000BC 12 0A 23         [24] 1221 	lcall	__divulong
      0000BF AC 82            [24] 1222 	mov	r4,dpl
      0000C1 AD 83            [24] 1223 	mov	r5,dph
      0000C3 AE F0            [24] 1224 	mov	r6,b
      0000C5 FF               [12] 1225 	mov	r7,a
      0000C6 8C 03            [24] 1226 	mov	ar3,r4
      0000C8 74 FF            [12] 1227 	mov	a,#0xff
      0000CA C3               [12] 1228 	clr	c
      0000CB 9B               [12] 1229 	subb	a,r3
      0000CC FB               [12] 1230 	mov	r3,a
                           000067  1231 	C$delay.c$35$1_0$49 ==.
                                   1232 ;	..\..\..\..\Library\StdDriver\src\delay.c:35: TH0TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
      0000CD 74 FF            [12] 1233 	mov	a,#0xff
      0000CF C3               [12] 1234 	clr	c
      0000D0 9C               [12] 1235 	subb	a,r4
      0000D1 74 FF            [12] 1236 	mov	a,#0xff
      0000D3 9D               [12] 1237 	subb	a,r5
      0000D4 FD               [12] 1238 	mov	r5,a
      0000D5 E4               [12] 1239 	clr	a
      0000D6 9E               [12] 1240 	subb	a,r6
      0000D7 E4               [12] 1241 	clr	a
      0000D8 9F               [12] 1242 	subb	a,r7
      0000D9 8D 07            [24] 1243 	mov	ar7,r5
                           000075  1244 	C$delay.c$37$1_0$49 ==.
                                   1245 ;	..\..\..\..\Library\StdDriver\src\delay.c:37: while (u16CNT != 0)
      0000DB AD 08            [24] 1246 	mov	r5,_Timer0_Delay_PARM_2
      0000DD AE 09            [24] 1247 	mov	r6,(_Timer0_Delay_PARM_2 + 1)
      0000DF                       1248 00104$:
      0000DF ED               [12] 1249 	mov	a,r5
      0000E0 4E               [12] 1250 	orl	a,r6
      0000E1 60 17            [24] 1251 	jz	00106$
                           00007D  1252 	C$delay.c$39$2_0$50 ==.
                                   1253 ;	..\..\..\..\Library\StdDriver\src\delay.c:39: TL0=TL0TMP;
      0000E3 8B 8A            [24] 1254 	mov	_TL0,r3
                           00007F  1255 	C$delay.c$40$2_0$50 ==.
                                   1256 ;	..\..\..\..\Library\StdDriver\src\delay.c:40: TH0=TH0TMP;
      0000E5 8F 8C            [24] 1257 	mov	_TH0,r7
                           000081  1258 	C$delay.c$41$2_0$50 ==.
                                   1259 ;	..\..\..\..\Library\StdDriver\src\delay.c:41: set_TCON_TR0;                                    //Start Timer0
      0000E7 43 88 10         [24] 1260 	orl	_TCON,#0x10
                           000084  1261 	C$delay.c$42$2_0$50 ==.
                                   1262 ;	..\..\..\..\Library\StdDriver\src\delay.c:42: while (!TF0);                       //Check Timer0 Time-Out Flag
      0000EA                       1263 00101$:
      0000EA 30 8D FD         [24] 1264 	jnb	_TF0,00101$
                           000087  1265 	C$delay.c$43$2_0$50 ==.
                                   1266 ;	..\..\..\..\Library\StdDriver\src\delay.c:43: clr_TCON_TF0;
      0000ED 53 88 DF         [24] 1267 	anl	_TCON,#0xdf
                           00008A  1268 	C$delay.c$44$2_0$50 ==.
                                   1269 ;	..\..\..\..\Library\StdDriver\src\delay.c:44: clr_TCON_TR0;                       //Stop Timer0
      0000F0 53 88 EF         [24] 1270 	anl	_TCON,#0xef
                           00008D  1271 	C$delay.c$45$2_0$50 ==.
                                   1272 ;	..\..\..\..\Library\StdDriver\src\delay.c:45: u16CNT --;
      0000F3 1D               [12] 1273 	dec	r5
      0000F4 BD FF 01         [24] 1274 	cjne	r5,#0xff,00128$
      0000F7 1E               [12] 1275 	dec	r6
      0000F8                       1276 00128$:
      0000F8 80 E5            [24] 1277 	sjmp	00104$
      0000FA                       1278 00106$:
                           000094  1279 	C$delay.c$48$1_0$49 ==.
                                   1280 ;	..\..\..\..\Library\StdDriver\src\delay.c:48: TL0  = 0; 
      0000FA 75 8A 00         [24] 1281 	mov	_TL0,#0x00
                           000097  1282 	C$delay.c$49$1_0$49 ==.
                                   1283 ;	..\..\..\..\Library\StdDriver\src\delay.c:49: TH0 = 0;
      0000FD 75 8C 00         [24] 1284 	mov	_TH0,#0x00
                           00009A  1285 	C$delay.c$50$1_0$49 ==.
                                   1286 ;	..\..\..\..\Library\StdDriver\src\delay.c:50: }
                           00009A  1287 	C$delay.c$50$1_0$49 ==.
                           00009A  1288 	XG$Timer0_Delay$0$0 ==.
      000100 22               [24] 1289 	ret
                                   1290 ;------------------------------------------------------------
                                   1291 ;Allocation info for local variables in function 'Timer1_Delay'
                                   1292 ;------------------------------------------------------------
                                   1293 ;u16CNT                    Allocated with name '_Timer1_Delay_PARM_2'
                                   1294 ;u16DLYUnit                Allocated with name '_Timer1_Delay_PARM_3'
                                   1295 ;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
                                   1296 ;TL1TMP                    Allocated to registers r3 
                                   1297 ;TH1TMP                    Allocated to registers r7 
                                   1298 ;------------------------------------------------------------
                           00009B  1299 	G$Timer1_Delay$0$0 ==.
                           00009B  1300 	C$delay.c$65$1_0$52 ==.
                                   1301 ;	..\..\..\..\Library\StdDriver\src\delay.c:65: void Timer1_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
                                   1302 ;	-----------------------------------------
                                   1303 ;	 function Timer1_Delay
                                   1304 ;	-----------------------------------------
      000101                       1305 _Timer1_Delay:
      000101 AC 82            [24] 1306 	mov	r4,dpl
      000103 AD 83            [24] 1307 	mov	r5,dph
      000105 AE F0            [24] 1308 	mov	r6,b
      000107 FF               [12] 1309 	mov	r7,a
                           0000A2  1310 	C$delay.c$69$1_0$52 ==.
                                   1311 ;	..\..\..\..\Library\StdDriver\src\delay.c:69: SFRS = 0;
      000108 75 91 00         [24] 1312 	mov	_SFRS,#0x00
                           0000A5  1313 	C$delay.c$70$1_0$52 ==.
                                   1314 ;	..\..\..\..\Library\StdDriver\src\delay.c:70: TIMER1_FSYS_DIV12;                                 //T1M=0, Timer1 Clock = Fsys/12
      00010B 75 91 00         [24] 1315 	mov	_SFRS,#0x00
      00010E 53 8E EF         [24] 1316 	anl	_CKCON,#0xef
                           0000AB  1317 	C$delay.c$71$1_0$52 ==.
                                   1318 ;	..\..\..\..\Library\StdDriver\src\delay.c:71: ENABLE_TIMER1_MODE1;                                //Timer1 is 16-bit mode
      000111 75 91 00         [24] 1319 	mov	_SFRS,#0x00
      000114 53 89 0F         [24] 1320 	anl	_TMOD,#0x0f
      000117 43 89 10         [24] 1321 	orl	_TMOD,#0x10
                           0000B4  1322 	C$delay.c$72$1_0$52 ==.
                                   1323 ;	..\..\..\..\Library\StdDriver\src\delay.c:72: TL1TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit)/12);
      00011A 75 5D 40         [24] 1324 	mov	__divulong_PARM_2,#0x40
      00011D 75 5E 42         [24] 1325 	mov	(__divulong_PARM_2 + 1),#0x42
      000120 75 5F 0F         [24] 1326 	mov	(__divulong_PARM_2 + 2),#0x0f
      000123 75 60 00         [24] 1327 	mov	(__divulong_PARM_2 + 3),#0x00
      000126 8C 82            [24] 1328 	mov	dpl,r4
      000128 8D 83            [24] 1329 	mov	dph,r5
      00012A 8E F0            [24] 1330 	mov	b,r6
      00012C EF               [12] 1331 	mov	a,r7
      00012D 12 0A 23         [24] 1332 	lcall	__divulong
      000130 85 0E 5D         [24] 1333 	mov	__mullong_PARM_2,_Timer1_Delay_PARM_3
      000133 85 0F 5E         [24] 1334 	mov	(__mullong_PARM_2 + 1),(_Timer1_Delay_PARM_3 + 1)
      000136 75 5F 00         [24] 1335 	mov	(__mullong_PARM_2 + 2),#0x00
      000139 75 60 00         [24] 1336 	mov	(__mullong_PARM_2 + 3),#0x00
      00013C 12 0A 88         [24] 1337 	lcall	__mullong
      00013F AC 82            [24] 1338 	mov	r4,dpl
      000141 AD 83            [24] 1339 	mov	r5,dph
      000143 AE F0            [24] 1340 	mov	r6,b
      000145 FF               [12] 1341 	mov	r7,a
      000146 75 5D 0C         [24] 1342 	mov	__divulong_PARM_2,#0x0c
      000149 E4               [12] 1343 	clr	a
      00014A F5 5E            [12] 1344 	mov	(__divulong_PARM_2 + 1),a
      00014C F5 5F            [12] 1345 	mov	(__divulong_PARM_2 + 2),a
      00014E F5 60            [12] 1346 	mov	(__divulong_PARM_2 + 3),a
      000150 8C 82            [24] 1347 	mov	dpl,r4
      000152 8D 83            [24] 1348 	mov	dph,r5
      000154 8E F0            [24] 1349 	mov	b,r6
      000156 EF               [12] 1350 	mov	a,r7
      000157 12 0A 23         [24] 1351 	lcall	__divulong
      00015A AC 82            [24] 1352 	mov	r4,dpl
      00015C AD 83            [24] 1353 	mov	r5,dph
      00015E AE F0            [24] 1354 	mov	r6,b
      000160 FF               [12] 1355 	mov	r7,a
      000161 8C 03            [24] 1356 	mov	ar3,r4
      000163 74 FF            [12] 1357 	mov	a,#0xff
      000165 C3               [12] 1358 	clr	c
      000166 9B               [12] 1359 	subb	a,r3
      000167 FB               [12] 1360 	mov	r3,a
                           000102  1361 	C$delay.c$73$1_0$52 ==.
                                   1362 ;	..\..\..\..\Library\StdDriver\src\delay.c:73: TH1TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit)/12);
      000168 74 FF            [12] 1363 	mov	a,#0xff
      00016A C3               [12] 1364 	clr	c
      00016B 9C               [12] 1365 	subb	a,r4
      00016C 74 FF            [12] 1366 	mov	a,#0xff
      00016E 9D               [12] 1367 	subb	a,r5
      00016F FD               [12] 1368 	mov	r5,a
      000170 E4               [12] 1369 	clr	a
      000171 9E               [12] 1370 	subb	a,r6
      000172 E4               [12] 1371 	clr	a
      000173 9F               [12] 1372 	subb	a,r7
      000174 8D 07            [24] 1373 	mov	ar7,r5
                           000110  1374 	C$delay.c$75$1_0$52 ==.
                                   1375 ;	..\..\..\..\Library\StdDriver\src\delay.c:75: while (u16CNT != 0)
      000176 AD 0C            [24] 1376 	mov	r5,_Timer1_Delay_PARM_2
      000178 AE 0D            [24] 1377 	mov	r6,(_Timer1_Delay_PARM_2 + 1)
      00017A                       1378 00104$:
      00017A ED               [12] 1379 	mov	a,r5
      00017B 4E               [12] 1380 	orl	a,r6
      00017C 60 17            [24] 1381 	jz	00107$
                           000118  1382 	C$delay.c$77$2_0$53 ==.
                                   1383 ;	..\..\..\..\Library\StdDriver\src\delay.c:77: TL1 = TL1TMP;
      00017E 8B 8B            [24] 1384 	mov	_TL1,r3
                           00011A  1385 	C$delay.c$78$2_0$53 ==.
                                   1386 ;	..\..\..\..\Library\StdDriver\src\delay.c:78: TH1 = TH1TMP;
      000180 8F 8D            [24] 1387 	mov	_TH1,r7
                           00011C  1388 	C$delay.c$79$2_0$53 ==.
                                   1389 ;	..\..\..\..\Library\StdDriver\src\delay.c:79: set_TCON_TR1;                                //Start Timer1
      000182 43 88 40         [24] 1390 	orl	_TCON,#0x40
                           00011F  1391 	C$delay.c$80$2_0$53 ==.
                                   1392 ;	..\..\..\..\Library\StdDriver\src\delay.c:80: while (!TF1);                                //Check Timer1 Time-Out Flag
      000185                       1393 00101$:
      000185 30 8F FD         [24] 1394 	jnb	_TF1,00101$
                           000122  1395 	C$delay.c$81$2_0$53 ==.
                                   1396 ;	..\..\..\..\Library\StdDriver\src\delay.c:81: clr_TCON_TF1;
      000188 53 88 7F         [24] 1397 	anl	_TCON,#0x7f
                           000125  1398 	C$delay.c$82$2_0$53 ==.
                                   1399 ;	..\..\..\..\Library\StdDriver\src\delay.c:82: clr_TCON_TR1;
      00018B 53 88 BF         [24] 1400 	anl	_TCON,#0xbf
                           000128  1401 	C$delay.c$83$2_0$53 ==.
                                   1402 ;	..\..\..\..\Library\StdDriver\src\delay.c:83: u16CNT --;
      00018E 1D               [12] 1403 	dec	r5
      00018F BD FF 01         [24] 1404 	cjne	r5,#0xff,00128$
      000192 1E               [12] 1405 	dec	r6
      000193                       1406 00128$:
      000193 80 E5            [24] 1407 	sjmp	00104$
      000195                       1408 00107$:
                           00012F  1409 	C$delay.c$85$1_0$52 ==.
                                   1410 ;	..\..\..\..\Library\StdDriver\src\delay.c:85: }
                           00012F  1411 	C$delay.c$85$1_0$52 ==.
                           00012F  1412 	XG$Timer1_Delay$0$0 ==.
      000195 22               [24] 1413 	ret
                                   1414 ;------------------------------------------------------------
                                   1415 ;Allocation info for local variables in function 'Timer2_Delay'
                                   1416 ;------------------------------------------------------------
                                   1417 ;u16TMDIV                  Allocated with name '_Timer2_Delay_PARM_2'
                                   1418 ;u16CNT                    Allocated with name '_Timer2_Delay_PARM_3'
                                   1419 ;u32DLYUnit                Allocated with name '_Timer2_Delay_PARM_4'
                                   1420 ;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
                                   1421 ;TL2TMP                    Allocated to registers r3 
                                   1422 ;TH2TMP                    Allocated to registers r7 
                                   1423 ;------------------------------------------------------------
                           000130  1424 	G$Timer2_Delay$0$0 ==.
                           000130  1425 	C$delay.c$102$1_0$55 ==.
                                   1426 ;	..\..\..\..\Library\StdDriver\src\delay.c:102: void Timer2_Delay(unsigned long u32SYSCLK,unsigned int u16TMDIV, unsigned int u16CNT, unsigned long u32DLYUnit)
                                   1427 ;	-----------------------------------------
                                   1428 ;	 function Timer2_Delay
                                   1429 ;	-----------------------------------------
      000196                       1430 _Timer2_Delay:
      000196 AC 82            [24] 1431 	mov	r4,dpl
      000198 AD 83            [24] 1432 	mov	r5,dph
      00019A AE F0            [24] 1433 	mov	r6,b
      00019C FF               [12] 1434 	mov	r7,a
                           000137  1435 	C$delay.c$106$1_0$55 ==.
                                   1436 ;	..\..\..\..\Library\StdDriver\src\delay.c:106: SFRS = 0;
      00019D 75 91 00         [24] 1437 	mov	_SFRS,#0x00
                           00013A  1438 	C$delay.c$107$1_0$55 ==.
                                   1439 ;	..\..\..\..\Library\StdDriver\src\delay.c:107: switch (u16TMDIV)
      0001A0 74 01            [12] 1440 	mov	a,#0x01
      0001A2 B5 10 06         [24] 1441 	cjne	a,_Timer2_Delay_PARM_2,00167$
      0001A5 14               [12] 1442 	dec	a
      0001A6 B5 11 02         [24] 1443 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00167$
      0001A9 80 4C            [24] 1444 	sjmp	00101$
      0001AB                       1445 00167$:
      0001AB 74 04            [12] 1446 	mov	a,#0x04
      0001AD B5 10 06         [24] 1447 	cjne	a,_Timer2_Delay_PARM_2,00168$
      0001B0 E4               [12] 1448 	clr	a
      0001B1 B5 11 02         [24] 1449 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00168$
      0001B4 80 46            [24] 1450 	sjmp	00102$
      0001B6                       1451 00168$:
      0001B6 74 10            [12] 1452 	mov	a,#0x10
      0001B8 B5 10 06         [24] 1453 	cjne	a,_Timer2_Delay_PARM_2,00169$
      0001BB E4               [12] 1454 	clr	a
      0001BC B5 11 02         [24] 1455 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00169$
      0001BF 80 43            [24] 1456 	sjmp	00103$
      0001C1                       1457 00169$:
      0001C1 74 20            [12] 1458 	mov	a,#0x20
      0001C3 B5 10 06         [24] 1459 	cjne	a,_Timer2_Delay_PARM_2,00170$
      0001C6 E4               [12] 1460 	clr	a
      0001C7 B5 11 02         [24] 1461 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00170$
      0001CA 80 40            [24] 1462 	sjmp	00104$
      0001CC                       1463 00170$:
      0001CC 74 40            [12] 1464 	mov	a,#0x40
      0001CE B5 10 06         [24] 1465 	cjne	a,_Timer2_Delay_PARM_2,00171$
      0001D1 E4               [12] 1466 	clr	a
      0001D2 B5 11 02         [24] 1467 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00171$
      0001D5 80 3D            [24] 1468 	sjmp	00105$
      0001D7                       1469 00171$:
      0001D7 74 80            [12] 1470 	mov	a,#0x80
      0001D9 B5 10 06         [24] 1471 	cjne	a,_Timer2_Delay_PARM_2,00172$
      0001DC E4               [12] 1472 	clr	a
      0001DD B5 11 02         [24] 1473 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00172$
      0001E0 80 3A            [24] 1474 	sjmp	00106$
      0001E2                       1475 00172$:
      0001E2 E4               [12] 1476 	clr	a
      0001E3 B5 10 06         [24] 1477 	cjne	a,_Timer2_Delay_PARM_2,00173$
      0001E6 04               [12] 1478 	inc	a
      0001E7 B5 11 02         [24] 1479 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00173$
      0001EA 80 38            [24] 1480 	sjmp	00107$
      0001EC                       1481 00173$:
      0001EC E4               [12] 1482 	clr	a
                           000187  1483 	C$delay.c$109$2_0$56 ==.
                                   1484 ;	..\..\..\..\Library\StdDriver\src\delay.c:109: case 1:T2MOD&=0x8F; break;
      0001ED B5 10 42         [24] 1485 	cjne	a,_Timer2_Delay_PARM_2,00109$
      0001F0 74 02            [12] 1486 	mov	a,#0x02
      0001F2 B5 11 3D         [24] 1487 	cjne	a,(_Timer2_Delay_PARM_2 + 1),00109$
      0001F5 80 35            [24] 1488 	sjmp	00108$
      0001F7                       1489 00101$:
      0001F7 53 C9 8F         [24] 1490 	anl	_T2MOD,#0x8f
                           000194  1491 	C$delay.c$110$2_0$56 ==.
                                   1492 ;	..\..\..\..\Library\StdDriver\src\delay.c:110: case 4:T2MOD&=0x8F;T2MOD|=0x10; break;
      0001FA 80 36            [24] 1493 	sjmp	00109$
      0001FC                       1494 00102$:
      0001FC 53 C9 8F         [24] 1495 	anl	_T2MOD,#0x8f
      0001FF 43 C9 10         [24] 1496 	orl	_T2MOD,#0x10
                           00019C  1497 	C$delay.c$111$2_0$56 ==.
                                   1498 ;	..\..\..\..\Library\StdDriver\src\delay.c:111: case 16:T2MOD&=0x8F;T2MOD|=0x20; break;
      000202 80 2E            [24] 1499 	sjmp	00109$
      000204                       1500 00103$:
      000204 53 C9 8F         [24] 1501 	anl	_T2MOD,#0x8f
      000207 43 C9 20         [24] 1502 	orl	_T2MOD,#0x20
                           0001A4  1503 	C$delay.c$112$2_0$56 ==.
                                   1504 ;	..\..\..\..\Library\StdDriver\src\delay.c:112: case 32:T2MOD&=0x8F;T2MOD|=0x30; break;
      00020A 80 26            [24] 1505 	sjmp	00109$
      00020C                       1506 00104$:
      00020C 53 C9 8F         [24] 1507 	anl	_T2MOD,#0x8f
      00020F 43 C9 30         [24] 1508 	orl	_T2MOD,#0x30
                           0001AC  1509 	C$delay.c$113$2_0$56 ==.
                                   1510 ;	..\..\..\..\Library\StdDriver\src\delay.c:113: case 64:T2MOD&=0x8F;T2MOD|=0x40; break;
      000212 80 1E            [24] 1511 	sjmp	00109$
      000214                       1512 00105$:
      000214 53 C9 8F         [24] 1513 	anl	_T2MOD,#0x8f
      000217 43 C9 40         [24] 1514 	orl	_T2MOD,#0x40
                           0001B4  1515 	C$delay.c$114$2_0$56 ==.
                                   1516 ;	..\..\..\..\Library\StdDriver\src\delay.c:114: case 128:T2MOD&=0x8F;T2MOD|=0x50; break;
      00021A 80 16            [24] 1517 	sjmp	00109$
      00021C                       1518 00106$:
      00021C 53 C9 8F         [24] 1519 	anl	_T2MOD,#0x8f
      00021F 43 C9 50         [24] 1520 	orl	_T2MOD,#0x50
                           0001BC  1521 	C$delay.c$115$2_0$56 ==.
                                   1522 ;	..\..\..\..\Library\StdDriver\src\delay.c:115: case 256:T2MOD&=0x8F;T2MOD|=0x60; break;
      000222 80 0E            [24] 1523 	sjmp	00109$
      000224                       1524 00107$:
      000224 53 C9 8F         [24] 1525 	anl	_T2MOD,#0x8f
      000227 43 C9 60         [24] 1526 	orl	_T2MOD,#0x60
                           0001C4  1527 	C$delay.c$116$2_0$56 ==.
                                   1528 ;	..\..\..\..\Library\StdDriver\src\delay.c:116: case 512:T2MOD&=0x8F;T2MOD|=0x70; break;
      00022A 80 06            [24] 1529 	sjmp	00109$
      00022C                       1530 00108$:
      00022C 53 C9 8F         [24] 1531 	anl	_T2MOD,#0x8f
      00022F 43 C9 70         [24] 1532 	orl	_T2MOD,#0x70
                           0001CC  1533 	C$delay.c$117$1_0$55 ==.
                                   1534 ;	..\..\..\..\Library\StdDriver\src\delay.c:117: }
      000232                       1535 00109$:
                           0001CC  1536 	C$delay.c$118$1_0$55 ==.
                                   1537 ;	..\..\..\..\Library\StdDriver\src\delay.c:118: clr_T2CON_CMRL2;                                  //Timer 2 as auto-reload mode
      000232 53 C8 FE         [24] 1538 	anl	_T2CON,#0xfe
                           0001CF  1539 	C$delay.c$119$1_0$55 ==.
                                   1540 ;	..\..\..\..\Library\StdDriver\src\delay.c:119: set_T2MOD_LDEN;
      000235 75 91 00         [24] 1541 	mov	_SFRS,#0x00
      000238 43 C9 80         [24] 1542 	orl	_T2MOD,#0x80
                           0001D5  1543 	C$delay.c$120$1_0$55 ==.
                                   1544 ;	..\..\..\..\Library\StdDriver\src\delay.c:120: set_T2MOD_CMPCR;                                  //Timer 2 value is auto-cleared as 0000H when a compare match occurs.
      00023B 75 91 00         [24] 1545 	mov	_SFRS,#0x00
      00023E 43 C9 04         [24] 1546 	orl	_T2MOD,#0x04
                           0001DB  1547 	C$delay.c$121$1_0$55 ==.
                                   1548 ;	..\..\..\..\Library\StdDriver\src\delay.c:121: TL2TMP = LOBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u16TMDIV));
      000241 75 5D 40         [24] 1549 	mov	__divulong_PARM_2,#0x40
      000244 75 5E 42         [24] 1550 	mov	(__divulong_PARM_2 + 1),#0x42
      000247 75 5F 0F         [24] 1551 	mov	(__divulong_PARM_2 + 2),#0x0f
      00024A 75 60 00         [24] 1552 	mov	(__divulong_PARM_2 + 3),#0x00
      00024D 8C 82            [24] 1553 	mov	dpl,r4
      00024F 8D 83            [24] 1554 	mov	dph,r5
      000251 8E F0            [24] 1555 	mov	b,r6
      000253 EF               [12] 1556 	mov	a,r7
      000254 12 0A 23         [24] 1557 	lcall	__divulong
      000257 85 14 5D         [24] 1558 	mov	__mullong_PARM_2,_Timer2_Delay_PARM_4
      00025A 85 15 5E         [24] 1559 	mov	(__mullong_PARM_2 + 1),(_Timer2_Delay_PARM_4 + 1)
      00025D 85 16 5F         [24] 1560 	mov	(__mullong_PARM_2 + 2),(_Timer2_Delay_PARM_4 + 2)
      000260 85 17 60         [24] 1561 	mov	(__mullong_PARM_2 + 3),(_Timer2_Delay_PARM_4 + 3)
      000263 12 0A 88         [24] 1562 	lcall	__mullong
      000266 85 10 5D         [24] 1563 	mov	__divulong_PARM_2,_Timer2_Delay_PARM_2
      000269 85 11 5E         [24] 1564 	mov	(__divulong_PARM_2 + 1),(_Timer2_Delay_PARM_2 + 1)
      00026C 75 5F 00         [24] 1565 	mov	(__divulong_PARM_2 + 2),#0x00
      00026F 75 60 00         [24] 1566 	mov	(__divulong_PARM_2 + 3),#0x00
      000272 12 0A 23         [24] 1567 	lcall	__divulong
      000275 AC 82            [24] 1568 	mov	r4,dpl
      000277 AD 83            [24] 1569 	mov	r5,dph
      000279 AE F0            [24] 1570 	mov	r6,b
      00027B FF               [12] 1571 	mov	r7,a
      00027C 8C 03            [24] 1572 	mov	ar3,r4
      00027E C3               [12] 1573 	clr	c
      00027F E4               [12] 1574 	clr	a
      000280 9B               [12] 1575 	subb	a,r3
      000281 FB               [12] 1576 	mov	r3,a
                           00021C  1577 	C$delay.c$122$1_0$55 ==.
                                   1578 ;	..\..\..\..\Library\StdDriver\src\delay.c:122: TH2TMP = HIBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u16TMDIV));
      000282 E4               [12] 1579 	clr	a
      000283 C3               [12] 1580 	clr	c
      000284 9C               [12] 1581 	subb	a,r4
      000285 E4               [12] 1582 	clr	a
      000286 9D               [12] 1583 	subb	a,r5
      000287 FD               [12] 1584 	mov	r5,a
      000288 74 01            [12] 1585 	mov	a,#0x01
      00028A 9E               [12] 1586 	subb	a,r6
      00028B E4               [12] 1587 	clr	a
      00028C 9F               [12] 1588 	subb	a,r7
      00028D 8D 07            [24] 1589 	mov	ar7,r5
                           000229  1590 	C$delay.c$123$1_0$55 ==.
                                   1591 ;	..\..\..\..\Library\StdDriver\src\delay.c:123: while (u16CNT != 0)
      00028F AD 12            [24] 1592 	mov	r5,_Timer2_Delay_PARM_3
      000291 AE 13            [24] 1593 	mov	r6,(_Timer2_Delay_PARM_3 + 1)
      000293                       1594 00113$:
      000293 ED               [12] 1595 	mov	a,r5
      000294 4E               [12] 1596 	orl	a,r6
      000295 60 17            [24] 1597 	jz	00116$
                           000231  1598 	C$delay.c$125$2_0$57 ==.
                                   1599 ;	..\..\..\..\Library\StdDriver\src\delay.c:125: TL2 = TL2TMP;
      000297 8B CC            [24] 1600 	mov	_TL2,r3
                           000233  1601 	C$delay.c$126$2_0$57 ==.
                                   1602 ;	..\..\..\..\Library\StdDriver\src\delay.c:126: TH2 = TH2TMP;
      000299 8F CD            [24] 1603 	mov	_TH2,r7
                           000235  1604 	C$delay.c$127$2_0$57 ==.
                                   1605 ;	..\..\..\..\Library\StdDriver\src\delay.c:127: set_T2CON_TR2;                                    //Start Timer2
      00029B 43 C8 04         [24] 1606 	orl	_T2CON,#0x04
                           000238  1607 	C$delay.c$128$2_0$57 ==.
                                   1608 ;	..\..\..\..\Library\StdDriver\src\delay.c:128: while (TF2!=1);            //Check Timer2 Time-Out Flag
      00029E                       1609 00110$:
      00029E 30 CF FD         [24] 1610 	jnb	_TF2,00110$
                           00023B  1611 	C$delay.c$129$2_0$57 ==.
                                   1612 ;	..\..\..\..\Library\StdDriver\src\delay.c:129: clr_T2CON_TF2;
      0002A1 53 C8 7F         [24] 1613 	anl	_T2CON,#0x7f
                           00023E  1614 	C$delay.c$130$2_0$57 ==.
                                   1615 ;	..\..\..\..\Library\StdDriver\src\delay.c:130: clr_T2CON_TR2;                                    //Stop Timer2
      0002A4 53 C8 FB         [24] 1616 	anl	_T2CON,#0xfb
                           000241  1617 	C$delay.c$131$2_0$57 ==.
                                   1618 ;	..\..\..\..\Library\StdDriver\src\delay.c:131: u16CNT --;
      0002A7 1D               [12] 1619 	dec	r5
      0002A8 BD FF 01         [24] 1620 	cjne	r5,#0xff,00177$
      0002AB 1E               [12] 1621 	dec	r6
      0002AC                       1622 00177$:
      0002AC 80 E5            [24] 1623 	sjmp	00113$
      0002AE                       1624 00116$:
                           000248  1625 	C$delay.c$133$1_0$55 ==.
                                   1626 ;	..\..\..\..\Library\StdDriver\src\delay.c:133: }
                           000248  1627 	C$delay.c$133$1_0$55 ==.
                           000248  1628 	XG$Timer2_Delay$0$0 ==.
      0002AE 22               [24] 1629 	ret
                                   1630 ;------------------------------------------------------------
                                   1631 ;Allocation info for local variables in function 'Timer3_Delay'
                                   1632 ;------------------------------------------------------------
                                   1633 ;u8TMDIV                   Allocated with name '_Timer3_Delay_PARM_2'
                                   1634 ;u16CNT                    Allocated with name '_Timer3_Delay_PARM_3'
                                   1635 ;u32DLYUnit                Allocated with name '_Timer3_Delay_PARM_4'
                                   1636 ;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
                                   1637 ;TL3TMP                    Allocated to registers r3 
                                   1638 ;TH3TMP                    Allocated to registers r7 
                                   1639 ;------------------------------------------------------------
                           000249  1640 	G$Timer3_Delay$0$0 ==.
                           000249  1641 	C$delay.c$149$1_0$59 ==.
                                   1642 ;	..\..\..\..\Library\StdDriver\src\delay.c:149: void Timer3_Delay(unsigned long u32SYSCLK,unsigned char u8TMDIV, unsigned int u16CNT, unsigned long u32DLYUnit)
                                   1643 ;	-----------------------------------------
                                   1644 ;	 function Timer3_Delay
                                   1645 ;	-----------------------------------------
      0002AF                       1646 _Timer3_Delay:
      0002AF AC 82            [24] 1647 	mov	r4,dpl
      0002B1 AD 83            [24] 1648 	mov	r5,dph
      0002B3 AE F0            [24] 1649 	mov	r6,b
      0002B5 FF               [12] 1650 	mov	r7,a
                           000250  1651 	C$delay.c$153$1_0$59 ==.
                                   1652 ;	..\..\..\..\Library\StdDriver\src\delay.c:153: SFRS = 0;
      0002B6 75 91 00         [24] 1653 	mov	_SFRS,#0x00
                           000253  1654 	C$delay.c$154$1_0$59 ==.
                                   1655 ;	..\..\..\..\Library\StdDriver\src\delay.c:154: switch (u8TMDIV)
      0002B9 74 01            [12] 1656 	mov	a,#0x01
      0002BB B5 18 02         [24] 1657 	cjne	a,_Timer3_Delay_PARM_2,00167$
      0002BE 80 31            [24] 1658 	sjmp	00101$
      0002C0                       1659 00167$:
      0002C0 74 02            [12] 1660 	mov	a,#0x02
      0002C2 B5 18 02         [24] 1661 	cjne	a,_Timer3_Delay_PARM_2,00168$
      0002C5 80 2F            [24] 1662 	sjmp	00102$
      0002C7                       1663 00168$:
      0002C7 74 04            [12] 1664 	mov	a,#0x04
      0002C9 B5 18 02         [24] 1665 	cjne	a,_Timer3_Delay_PARM_2,00169$
      0002CC 80 30            [24] 1666 	sjmp	00103$
      0002CE                       1667 00169$:
      0002CE 74 08            [12] 1668 	mov	a,#0x08
      0002D0 B5 18 02         [24] 1669 	cjne	a,_Timer3_Delay_PARM_2,00170$
      0002D3 80 31            [24] 1670 	sjmp	00104$
      0002D5                       1671 00170$:
      0002D5 74 10            [12] 1672 	mov	a,#0x10
      0002D7 B5 18 02         [24] 1673 	cjne	a,_Timer3_Delay_PARM_2,00171$
      0002DA 80 32            [24] 1674 	sjmp	00105$
      0002DC                       1675 00171$:
      0002DC 74 20            [12] 1676 	mov	a,#0x20
      0002DE B5 18 02         [24] 1677 	cjne	a,_Timer3_Delay_PARM_2,00172$
      0002E1 80 33            [24] 1678 	sjmp	00106$
      0002E3                       1679 00172$:
      0002E3 74 40            [12] 1680 	mov	a,#0x40
      0002E5 B5 18 02         [24] 1681 	cjne	a,_Timer3_Delay_PARM_2,00173$
      0002E8 80 34            [24] 1682 	sjmp	00107$
      0002EA                       1683 00173$:
      0002EA 74 80            [12] 1684 	mov	a,#0x80
                           000286  1685 	C$delay.c$156$2_0$60 ==.
                                   1686 ;	..\..\..\..\Library\StdDriver\src\delay.c:156: case 1:T3CON&=0xF8; break;
      0002EC B5 18 3D         [24] 1687 	cjne	a,_Timer3_Delay_PARM_2,00109$
      0002EF 80 35            [24] 1688 	sjmp	00108$
      0002F1                       1689 00101$:
      0002F1 53 C4 F8         [24] 1690 	anl	_T3CON,#0xf8
                           00028E  1691 	C$delay.c$157$2_0$60 ==.
                                   1692 ;	..\..\..\..\Library\StdDriver\src\delay.c:157: case 2:T3CON&=0xF8;T3CON|=0x01; break;
      0002F4 80 36            [24] 1693 	sjmp	00109$
      0002F6                       1694 00102$:
      0002F6 53 C4 F8         [24] 1695 	anl	_T3CON,#0xf8
      0002F9 43 C4 01         [24] 1696 	orl	_T3CON,#0x01
                           000296  1697 	C$delay.c$158$2_0$60 ==.
                                   1698 ;	..\..\..\..\Library\StdDriver\src\delay.c:158: case 4:T3CON&=0xF8;T3CON|=0x02; break;
      0002FC 80 2E            [24] 1699 	sjmp	00109$
      0002FE                       1700 00103$:
      0002FE 53 C4 F8         [24] 1701 	anl	_T3CON,#0xf8
      000301 43 C4 02         [24] 1702 	orl	_T3CON,#0x02
                           00029E  1703 	C$delay.c$159$2_0$60 ==.
                                   1704 ;	..\..\..\..\Library\StdDriver\src\delay.c:159: case 8:T3CON&=0xF8;T3CON|=0x03; break;
      000304 80 26            [24] 1705 	sjmp	00109$
      000306                       1706 00104$:
      000306 53 C4 F8         [24] 1707 	anl	_T3CON,#0xf8
      000309 43 C4 03         [24] 1708 	orl	_T3CON,#0x03
                           0002A6  1709 	C$delay.c$160$2_0$60 ==.
                                   1710 ;	..\..\..\..\Library\StdDriver\src\delay.c:160: case 16:T3CON&=0xF8;T3CON|=0x04; break;
      00030C 80 1E            [24] 1711 	sjmp	00109$
      00030E                       1712 00105$:
      00030E 53 C4 F8         [24] 1713 	anl	_T3CON,#0xf8
      000311 43 C4 04         [24] 1714 	orl	_T3CON,#0x04
                           0002AE  1715 	C$delay.c$161$2_0$60 ==.
                                   1716 ;	..\..\..\..\Library\StdDriver\src\delay.c:161: case 32:T3CON&=0xF8;T3CON|=0x05; break;
      000314 80 16            [24] 1717 	sjmp	00109$
      000316                       1718 00106$:
      000316 53 C4 F8         [24] 1719 	anl	_T3CON,#0xf8
      000319 43 C4 05         [24] 1720 	orl	_T3CON,#0x05
                           0002B6  1721 	C$delay.c$162$2_0$60 ==.
                                   1722 ;	..\..\..\..\Library\StdDriver\src\delay.c:162: case 64:T3CON&=0xF8;T3CON|=0x06; break;
      00031C 80 0E            [24] 1723 	sjmp	00109$
      00031E                       1724 00107$:
      00031E 53 C4 F8         [24] 1725 	anl	_T3CON,#0xf8
      000321 43 C4 06         [24] 1726 	orl	_T3CON,#0x06
                           0002BE  1727 	C$delay.c$163$2_0$60 ==.
                                   1728 ;	..\..\..\..\Library\StdDriver\src\delay.c:163: case 128:T3CON&=0xF8;T3CON|=0x07; break;
      000324 80 06            [24] 1729 	sjmp	00109$
      000326                       1730 00108$:
      000326 53 C4 F8         [24] 1731 	anl	_T3CON,#0xf8
      000329 43 C4 07         [24] 1732 	orl	_T3CON,#0x07
                           0002C6  1733 	C$delay.c$164$1_0$59 ==.
                                   1734 ;	..\..\..\..\Library\StdDriver\src\delay.c:164: }
      00032C                       1735 00109$:
                           0002C6  1736 	C$delay.c$165$1_0$59 ==.
                                   1737 ;	..\..\..\..\Library\StdDriver\src\delay.c:165: TL3TMP = LOBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u8TMDIV));
      00032C 75 5D 40         [24] 1738 	mov	__divulong_PARM_2,#0x40
      00032F 75 5E 42         [24] 1739 	mov	(__divulong_PARM_2 + 1),#0x42
      000332 75 5F 0F         [24] 1740 	mov	(__divulong_PARM_2 + 2),#0x0f
      000335 75 60 00         [24] 1741 	mov	(__divulong_PARM_2 + 3),#0x00
      000338 8C 82            [24] 1742 	mov	dpl,r4
      00033A 8D 83            [24] 1743 	mov	dph,r5
      00033C 8E F0            [24] 1744 	mov	b,r6
      00033E EF               [12] 1745 	mov	a,r7
      00033F 12 0A 23         [24] 1746 	lcall	__divulong
      000342 85 1B 5D         [24] 1747 	mov	__mullong_PARM_2,_Timer3_Delay_PARM_4
      000345 85 1C 5E         [24] 1748 	mov	(__mullong_PARM_2 + 1),(_Timer3_Delay_PARM_4 + 1)
      000348 85 1D 5F         [24] 1749 	mov	(__mullong_PARM_2 + 2),(_Timer3_Delay_PARM_4 + 2)
      00034B 85 1E 60         [24] 1750 	mov	(__mullong_PARM_2 + 3),(_Timer3_Delay_PARM_4 + 3)
      00034E 12 0A 88         [24] 1751 	lcall	__mullong
      000351 85 18 5D         [24] 1752 	mov	__divulong_PARM_2,_Timer3_Delay_PARM_2
      000354 75 5E 00         [24] 1753 	mov	(__divulong_PARM_2 + 1),#0x00
      000357 75 5F 00         [24] 1754 	mov	(__divulong_PARM_2 + 2),#0x00
      00035A 75 60 00         [24] 1755 	mov	(__divulong_PARM_2 + 3),#0x00
      00035D 12 0A 23         [24] 1756 	lcall	__divulong
      000360 AC 82            [24] 1757 	mov	r4,dpl
      000362 AD 83            [24] 1758 	mov	r5,dph
      000364 AE F0            [24] 1759 	mov	r6,b
      000366 FF               [12] 1760 	mov	r7,a
      000367 8C 03            [24] 1761 	mov	ar3,r4
      000369 C3               [12] 1762 	clr	c
      00036A E4               [12] 1763 	clr	a
      00036B 9B               [12] 1764 	subb	a,r3
      00036C FB               [12] 1765 	mov	r3,a
                           000307  1766 	C$delay.c$166$1_0$59 ==.
                                   1767 ;	..\..\..\..\Library\StdDriver\src\delay.c:166: TH3TMP = HIBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u8TMDIV));
      00036D E4               [12] 1768 	clr	a
      00036E C3               [12] 1769 	clr	c
      00036F 9C               [12] 1770 	subb	a,r4
      000370 FC               [12] 1771 	mov	r4,a
      000371 E4               [12] 1772 	clr	a
      000372 9D               [12] 1773 	subb	a,r5
      000373 FD               [12] 1774 	mov	r5,a
      000374 74 01            [12] 1775 	mov	a,#0x01
      000376 9E               [12] 1776 	subb	a,r6
      000377 E4               [12] 1777 	clr	a
      000378 9F               [12] 1778 	subb	a,r7
      000379 8D 07            [24] 1779 	mov	ar7,r5
                           000315  1780 	C$delay.c$167$1_0$59 ==.
                                   1781 ;	..\..\..\..\Library\StdDriver\src\delay.c:167: while (u16CNT != 0)
      00037B AD 19            [24] 1782 	mov	r5,_Timer3_Delay_PARM_3
      00037D AE 1A            [24] 1783 	mov	r6,(_Timer3_Delay_PARM_3 + 1)
      00037F                       1784 00113$:
      00037F ED               [12] 1785 	mov	a,r5
      000380 4E               [12] 1786 	orl	a,r6
      000381 60 32            [24] 1787 	jz	00116$
                           00031D  1788 	C$delay.c$169$2_0$61 ==.
                                   1789 ;	..\..\..\..\Library\StdDriver\src\delay.c:169: clr_T3CON_TF3;
      000383 75 91 00         [24] 1790 	mov	_SFRS,#0x00
      000386 53 C4 EF         [24] 1791 	anl	_T3CON,#0xef
                           000323  1792 	C$delay.c$170$2_0$61 ==.
                                   1793 ;	..\..\..\..\Library\StdDriver\src\delay.c:170: RL3 = TL3TMP;
      000389 8B C5            [24] 1794 	mov	_RL3,r3
                           000325  1795 	C$delay.c$171$2_0$61 ==.
                                   1796 ;	..\..\..\..\Library\StdDriver\src\delay.c:171: RH3 = TH3TMP;
      00038B 8F C6            [24] 1797 	mov	_RH3,r7
                           000327  1798 	C$delay.c$172$2_0$61 ==.
                                   1799 ;	..\..\..\..\Library\StdDriver\src\delay.c:172: set_T3CON_TR3;                                    //Trigger Timer3
      00038D 75 91 00         [24] 1800 	mov	_SFRS,#0x00
      000390 43 C4 08         [24] 1801 	orl	_T3CON,#0x08
                           00032D  1802 	C$delay.c$173$2_0$61 ==.
                                   1803 ;	..\..\..\..\Library\StdDriver\src\delay.c:173: while ((T3CON|CLR_BIT4)==CLR_BIT4);    //Check Timer3 Time-Out Flag
      000393                       1804 00110$:
      000393 AA C4            [24] 1805 	mov	r2,_T3CON
      000395 7C 00            [12] 1806 	mov	r4,#0x00
      000397 43 02 EF         [24] 1807 	orl	ar2,#0xef
      00039A BA EF 05         [24] 1808 	cjne	r2,#0xef,00176$
      00039D BC 00 02         [24] 1809 	cjne	r4,#0x00,00176$
      0003A0 80 F1            [24] 1810 	sjmp	00110$
      0003A2                       1811 00176$:
                           00033C  1812 	C$delay.c$174$2_0$61 ==.
                                   1813 ;	..\..\..\..\Library\StdDriver\src\delay.c:174: clr_T3CON_TF3;
      0003A2 75 91 00         [24] 1814 	mov	_SFRS,#0x00
      0003A5 53 C4 EF         [24] 1815 	anl	_T3CON,#0xef
                           000342  1816 	C$delay.c$175$2_0$61 ==.
                                   1817 ;	..\..\..\..\Library\StdDriver\src\delay.c:175: clr_T3CON_TR3;                                    //Stop Timer3
      0003A8 75 91 00         [24] 1818 	mov	_SFRS,#0x00
      0003AB 53 C4 F7         [24] 1819 	anl	_T3CON,#0xf7
                           000348  1820 	C$delay.c$176$2_0$61 ==.
                                   1821 ;	..\..\..\..\Library\StdDriver\src\delay.c:176: u16CNT --;
      0003AE 1D               [12] 1822 	dec	r5
      0003AF BD FF 01         [24] 1823 	cjne	r5,#0xff,00177$
      0003B2 1E               [12] 1824 	dec	r6
      0003B3                       1825 00177$:
      0003B3 80 CA            [24] 1826 	sjmp	00113$
      0003B5                       1827 00116$:
                           00034F  1828 	C$delay.c$178$1_0$59 ==.
                                   1829 ;	..\..\..\..\Library\StdDriver\src\delay.c:178: }
                           00034F  1830 	C$delay.c$178$1_0$59 ==.
                           00034F  1831 	XG$Timer3_Delay$0$0 ==.
      0003B5 22               [24] 1832 	ret
                                   1833 	.area CSEG    (CODE)
                                   1834 	.area CONST   (CODE)
                                   1835 	.area XINIT   (CODE)
                                   1836 	.area CABS    (ABS,CODE)
