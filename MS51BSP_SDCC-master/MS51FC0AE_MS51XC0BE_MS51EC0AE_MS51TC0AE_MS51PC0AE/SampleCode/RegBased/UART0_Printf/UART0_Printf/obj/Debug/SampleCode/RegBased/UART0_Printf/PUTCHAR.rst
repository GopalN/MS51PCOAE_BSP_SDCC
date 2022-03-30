                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module PUTCHAR
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
                                    351 	.globl _putchar
                                    352 ;--------------------------------------------------------
                                    353 ; special function registers
                                    354 ;--------------------------------------------------------
                                    355 	.area RSEG    (ABS,DATA)
      000000                        356 	.org 0x0000
                           000080   357 G$P0$0_0$0 == 0x0080
                           000080   358 _P0	=	0x0080
                           000081   359 G$SP$0_0$0 == 0x0081
                           000081   360 _SP	=	0x0081
                           000082   361 G$DPL$0_0$0 == 0x0082
                           000082   362 _DPL	=	0x0082
                           000083   363 G$DPH$0_0$0 == 0x0083
                           000083   364 _DPH	=	0x0083
                           000084   365 G$RCTRIM0$0_0$0 == 0x0084
                           000084   366 _RCTRIM0	=	0x0084
                           000085   367 G$RCTRIM1$0_0$0 == 0x0085
                           000085   368 _RCTRIM1	=	0x0085
                           000086   369 G$RWKL$0_0$0 == 0x0086
                           000086   370 _RWKL	=	0x0086
                           000087   371 G$PCON$0_0$0 == 0x0087
                           000087   372 _PCON	=	0x0087
                           000088   373 G$TCON$0_0$0 == 0x0088
                           000088   374 _TCON	=	0x0088
                           000089   375 G$TMOD$0_0$0 == 0x0089
                           000089   376 _TMOD	=	0x0089
                           00008A   377 G$TL0$0_0$0 == 0x008a
                           00008A   378 _TL0	=	0x008a
                           00008B   379 G$TL1$0_0$0 == 0x008b
                           00008B   380 _TL1	=	0x008b
                           00008C   381 G$TH0$0_0$0 == 0x008c
                           00008C   382 _TH0	=	0x008c
                           00008D   383 G$TH1$0_0$0 == 0x008d
                           00008D   384 _TH1	=	0x008d
                           00008E   385 G$CKCON$0_0$0 == 0x008e
                           00008E   386 _CKCON	=	0x008e
                           00008F   387 G$WKCON$0_0$0 == 0x008f
                           00008F   388 _WKCON	=	0x008f
                           000090   389 G$P1$0_0$0 == 0x0090
                           000090   390 _P1	=	0x0090
                           000091   391 G$SFRS$0_0$0 == 0x0091
                           000091   392 _SFRS	=	0x0091
                           000092   393 G$CAPCON0$0_0$0 == 0x0092
                           000092   394 _CAPCON0	=	0x0092
                           000093   395 G$CAPCON1$0_0$0 == 0x0093
                           000093   396 _CAPCON1	=	0x0093
                           000094   397 G$CAPCON2$0_0$0 == 0x0094
                           000094   398 _CAPCON2	=	0x0094
                           000095   399 G$CKDIV$0_0$0 == 0x0095
                           000095   400 _CKDIV	=	0x0095
                           000096   401 G$CKSWT$0_0$0 == 0x0096
                           000096   402 _CKSWT	=	0x0096
                           000097   403 G$CKEN$0_0$0 == 0x0097
                           000097   404 _CKEN	=	0x0097
                           000098   405 G$SCON$0_0$0 == 0x0098
                           000098   406 _SCON	=	0x0098
                           000099   407 G$SBUF$0_0$0 == 0x0099
                           000099   408 _SBUF	=	0x0099
                           00009A   409 G$SBUF_1$0_0$0 == 0x009a
                           00009A   410 _SBUF_1	=	0x009a
                           00009B   411 G$EIE$0_0$0 == 0x009b
                           00009B   412 _EIE	=	0x009b
                           00009C   413 G$EIE1$0_0$0 == 0x009c
                           00009C   414 _EIE1	=	0x009c
                           00009F   415 G$CHPCON$0_0$0 == 0x009f
                           00009F   416 _CHPCON	=	0x009f
                           0000A0   417 G$P2$0_0$0 == 0x00a0
                           0000A0   418 _P2	=	0x00a0
                           0000A2   419 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   420 _AUXR1	=	0x00a2
                           0000A3   421 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   422 _BODCON0	=	0x00a3
                           0000A4   423 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   424 _IAPTRG	=	0x00a4
                           0000A5   425 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   426 _IAPUEN	=	0x00a5
                           0000A6   427 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   428 _IAPAL	=	0x00a6
                           0000A7   429 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   430 _IAPAH	=	0x00a7
                           0000A8   431 G$IE$0_0$0 == 0x00a8
                           0000A8   432 _IE	=	0x00a8
                           0000A9   433 G$SADDR$0_0$0 == 0x00a9
                           0000A9   434 _SADDR	=	0x00a9
                           0000AA   435 G$WDCON$0_0$0 == 0x00aa
                           0000AA   436 _WDCON	=	0x00aa
                           0000AB   437 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   438 _BODCON1	=	0x00ab
                           0000AC   439 G$P3M1$0_0$0 == 0x00ac
                           0000AC   440 _P3M1	=	0x00ac
                           0000AD   441 G$P3M2$0_0$0 == 0x00ad
                           0000AD   442 _P3M2	=	0x00ad
                           0000AE   443 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   444 _IAPFD	=	0x00ae
                           0000AF   445 G$IAPCN$0_0$0 == 0x00af
                           0000AF   446 _IAPCN	=	0x00af
                           0000B0   447 G$P3$0_0$0 == 0x00b0
                           0000B0   448 _P3	=	0x00b0
                           0000B1   449 G$P0M1$0_0$0 == 0x00b1
                           0000B1   450 _P0M1	=	0x00b1
                           0000B2   451 G$P0M2$0_0$0 == 0x00b2
                           0000B2   452 _P0M2	=	0x00b2
                           0000B3   453 G$P1M1$0_0$0 == 0x00b3
                           0000B3   454 _P1M1	=	0x00b3
                           0000B4   455 G$P1M2$0_0$0 == 0x00b4
                           0000B4   456 _P1M2	=	0x00b4
                           0000B5   457 G$TOE$0_0$0 == 0x00b5
                           0000B5   458 _TOE	=	0x00b5
                           0000B7   459 G$IPH$0_0$0 == 0x00b7
                           0000B7   460 _IPH	=	0x00b7
                           0000B8   461 G$IP$0_0$0 == 0x00b8
                           0000B8   462 _IP	=	0x00b8
                           0000B9   463 G$SADEN$0_0$0 == 0x00b9
                           0000B9   464 _SADEN	=	0x00b9
                           0000BA   465 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   466 _SADEN_1	=	0x00ba
                           0000BB   467 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   468 _SADDR_1	=	0x00bb
                           0000BC   469 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   470 _I2DAT	=	0x00bc
                           0000BD   471 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   472 _I2STAT	=	0x00bd
                           0000BE   473 G$I2CLK$0_0$0 == 0x00be
                           0000BE   474 _I2CLK	=	0x00be
                           0000BF   475 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   476 _I2TOC	=	0x00bf
                           0000C0   477 G$I2CON$0_0$0 == 0x00c0
                           0000C0   478 _I2CON	=	0x00c0
                           0000C1   479 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   480 _I2ADDR	=	0x00c1
                           0000C2   481 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   482 _ADCRL	=	0x00c2
                           0000C3   483 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   484 _ADCRH	=	0x00c3
                           0000C4   485 G$T3CON$0_0$0 == 0x00c4
                           0000C4   486 _T3CON	=	0x00c4
                           0000C5   487 G$RL3$0_0$0 == 0x00c5
                           0000C5   488 _RL3	=	0x00c5
                           0000C6   489 G$RH3$0_0$0 == 0x00c6
                           0000C6   490 _RH3	=	0x00c6
                           0000C7   491 G$TA$0_0$0 == 0x00c7
                           0000C7   492 _TA	=	0x00c7
                           0000C8   493 G$T2CON$0_0$0 == 0x00c8
                           0000C8   494 _T2CON	=	0x00c8
                           0000C9   495 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   496 _T2MOD	=	0x00c9
                           0000CA   497 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   498 _RCMP2L	=	0x00ca
                           0000CB   499 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   500 _RCMP2H	=	0x00cb
                           0000CC   501 G$TL2$0_0$0 == 0x00cc
                           0000CC   502 _TL2	=	0x00cc
                           0000CD   503 G$TH2$0_0$0 == 0x00cd
                           0000CD   504 _TH2	=	0x00cd
                           0000CE   505 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   506 _ADCMPL	=	0x00ce
                           0000CF   507 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   508 _ADCMPH	=	0x00cf
                           0000D0   509 G$PSW$0_0$0 == 0x00d0
                           0000D0   510 _PSW	=	0x00d0
                           0000D1   511 G$PWM0PH$0_0$0 == 0x00d1
                           0000D1   512 _PWM0PH	=	0x00d1
                           0000D2   513 G$PWM0C0H$0_0$0 == 0x00d2
                           0000D2   514 _PWM0C0H	=	0x00d2
                           0000D3   515 G$PWM0C1H$0_0$0 == 0x00d3
                           0000D3   516 _PWM0C1H	=	0x00d3
                           0000D4   517 G$PWM0C2H$0_0$0 == 0x00d4
                           0000D4   518 _PWM0C2H	=	0x00d4
                           0000D5   519 G$PWM0C3H$0_0$0 == 0x00d5
                           0000D5   520 _PWM0C3H	=	0x00d5
                           0000D6   521 G$PNP$0_0$0 == 0x00d6
                           0000D6   522 _PNP	=	0x00d6
                           0000D7   523 G$PWM0FBD$0_0$0 == 0x00d7
                           0000D7   524 _PWM0FBD	=	0x00d7
                           0000D8   525 G$PWM0CON0$0_0$0 == 0x00d8
                           0000D8   526 _PWM0CON0	=	0x00d8
                           0000D9   527 G$PWM0PL$0_0$0 == 0x00d9
                           0000D9   528 _PWM0PL	=	0x00d9
                           0000DA   529 G$PWM0C0L$0_0$0 == 0x00da
                           0000DA   530 _PWM0C0L	=	0x00da
                           0000DB   531 G$PWM0C1L$0_0$0 == 0x00db
                           0000DB   532 _PWM0C1L	=	0x00db
                           0000DC   533 G$PWM0C2L$0_0$0 == 0x00dc
                           0000DC   534 _PWM0C2L	=	0x00dc
                           0000DD   535 G$PWM0C3L$0_0$0 == 0x00dd
                           0000DD   536 _PWM0C3L	=	0x00dd
                           0000DE   537 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   538 _PIOCON0	=	0x00de
                           0000DF   539 G$PWM0CON1$0_0$0 == 0x00df
                           0000DF   540 _PWM0CON1	=	0x00df
                           0000E0   541 G$ACC$0_0$0 == 0x00e0
                           0000E0   542 _ACC	=	0x00e0
                           0000E1   543 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   544 _ADCCON1	=	0x00e1
                           0000E2   545 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   546 _ADCCON2	=	0x00e2
                           0000E3   547 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   548 _ADCDLY	=	0x00e3
                           0000E4   549 G$C0L$0_0$0 == 0x00e4
                           0000E4   550 _C0L	=	0x00e4
                           0000E5   551 G$C0H$0_0$0 == 0x00e5
                           0000E5   552 _C0H	=	0x00e5
                           0000E6   553 G$C1L$0_0$0 == 0x00e6
                           0000E6   554 _C1L	=	0x00e6
                           0000E7   555 G$C1H$0_0$0 == 0x00e7
                           0000E7   556 _C1H	=	0x00e7
                           0000E8   557 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   558 _ADCCON0	=	0x00e8
                           0000E9   559 G$PICON$0_0$0 == 0x00e9
                           0000E9   560 _PICON	=	0x00e9
                           0000EA   561 G$PINEN$0_0$0 == 0x00ea
                           0000EA   562 _PINEN	=	0x00ea
                           0000EB   563 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   564 _PIPEN	=	0x00eb
                           0000EC   565 G$PIF$0_0$0 == 0x00ec
                           0000EC   566 _PIF	=	0x00ec
                           0000ED   567 G$C2L$0_0$0 == 0x00ed
                           0000ED   568 _C2L	=	0x00ed
                           0000EE   569 G$C2H$0_0$0 == 0x00ee
                           0000EE   570 _C2H	=	0x00ee
                           0000EF   571 G$EIP$0_0$0 == 0x00ef
                           0000EF   572 _EIP	=	0x00ef
                           0000F0   573 G$B$0_0$0 == 0x00f0
                           0000F0   574 _B	=	0x00f0
                           0000F1   575 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   576 _CAPCON3	=	0x00f1
                           0000F2   577 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   578 _CAPCON4	=	0x00f2
                           0000F3   579 G$SPCR$0_0$0 == 0x00f3
                           0000F3   580 _SPCR	=	0x00f3
                           0000F4   581 G$SPSR$0_0$0 == 0x00f4
                           0000F4   582 _SPSR	=	0x00f4
                           0000F5   583 G$SPDR$0_0$0 == 0x00f5
                           0000F5   584 _SPDR	=	0x00f5
                           0000F6   585 G$AINDIDS0$0_0$0 == 0x00f6
                           0000F6   586 _AINDIDS0	=	0x00f6
                           0000F7   587 G$EIPH$0_0$0 == 0x00f7
                           0000F7   588 _EIPH	=	0x00f7
                           0000F8   589 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   590 _SCON_1	=	0x00f8
                           0000F9   591 G$PWM0DTEN$0_0$0 == 0x00f9
                           0000F9   592 _PWM0DTEN	=	0x00f9
                           0000FA   593 G$PWM0DTCNT$0_0$0 == 0x00fa
                           0000FA   594 _PWM0DTCNT	=	0x00fa
                           0000FB   595 G$PWM0MEN$0_0$0 == 0x00fb
                           0000FB   596 _PWM0MEN	=	0x00fb
                           0000FC   597 G$PWM0MD$0_0$0 == 0x00fc
                           0000FC   598 _PWM0MD	=	0x00fc
                           0000FD   599 G$PORDIS$0_0$0 == 0x00fd
                           0000FD   600 _PORDIS	=	0x00fd
                           0000FE   601 G$EIP1$0_0$0 == 0x00fe
                           0000FE   602 _EIP1	=	0x00fe
                           0000FF   603 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   604 _EIPH1	=	0x00ff
                           0000AC   605 G$P3S$0_0$0 == 0x00ac
                           0000AC   606 _P3S	=	0x00ac
                           0000AD   607 G$P3SR$0_0$0 == 0x00ad
                           0000AD   608 _P3SR	=	0x00ad
                           0000B1   609 G$P0S$0_0$0 == 0x00b1
                           0000B1   610 _P0S	=	0x00b1
                           0000B2   611 G$P0SR$0_0$0 == 0x00b2
                           0000B2   612 _P0SR	=	0x00b2
                           0000B3   613 G$P1S$0_0$0 == 0x00b3
                           0000B3   614 _P1S	=	0x00b3
                           0000B4   615 G$P1SR$0_0$0 == 0x00b4
                           0000B4   616 _P1SR	=	0x00b4
                           0000B7   617 G$PWM0INTC$0_0$0 == 0x00b7
                           0000B7   618 _PWM0INTC	=	0x00b7
                           0000C4   619 G$PWM0C4H$0_0$0 == 0x00c4
                           0000C4   620 _PWM0C4H	=	0x00c4
                           0000C5   621 G$PWM0C5H$0_0$0 == 0x00c5
                           0000C5   622 _PWM0C5H	=	0x00c5
                           0000C6   623 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   624 _PIOCON1	=	0x00c6
                           0000CC   625 G$PWM0C4L$0_0$0 == 0x00cc
                           0000CC   626 _PWM0C4L	=	0x00cc
                           0000CD   627 G$PWM0C5L$0_0$0 == 0x00cd
                           0000CD   628 _PWM0C5L	=	0x00cd
                           0000F3   629 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   630 _SPCR2	=	0x00f3
                           0000FF   631 G$LVRDIS$0_0$0 == 0x00ff
                           0000FF   632 _LVRDIS	=	0x00ff
                           000084   633 G$ADCBAL$0_0$0 == 0x0084
                           000084   634 _ADCBAL	=	0x0084
                           000085   635 G$ADCBAH$0_0$0 == 0x0085
                           000085   636 _ADCBAH	=	0x0085
                           000086   637 G$ADCCON3$0_0$0 == 0x0086
                           000086   638 _ADCCON3	=	0x0086
                           000089   639 G$P2M1$0_0$0 == 0x0089
                           000089   640 _P2M1	=	0x0089
                           00008A   641 G$P2M2$0_0$0 == 0x008a
                           00008A   642 _P2M2	=	0x008a
                           00008B   643 G$P2SR$0_0$0 == 0x008b
                           00008B   644 _P2SR	=	0x008b
                           00008C   645 G$P2S$0_0$0 == 0x008c
                           00008C   646 _P2S	=	0x008c
                           00008D   647 G$ADCSN$0_0$0 == 0x008d
                           00008D   648 _ADCSN	=	0x008d
                           00008E   649 G$ADCCN$0_0$0 == 0x008e
                           00008E   650 _ADCCN	=	0x008e
                           00008F   651 G$ADCSR$0_0$0 == 0x008f
                           00008F   652 _ADCSR	=	0x008f
                           000092   653 G$P0UP$0_0$0 == 0x0092
                           000092   654 _P0UP	=	0x0092
                           000093   655 G$P1UP$0_0$0 == 0x0093
                           000093   656 _P1UP	=	0x0093
                           000094   657 G$P2UP$0_0$0 == 0x0094
                           000094   658 _P2UP	=	0x0094
                           000095   659 G$P3UP$0_0$0 == 0x0095
                           000095   660 _P3UP	=	0x0095
                           000097   661 G$RWKH$0_0$0 == 0x0097
                           000097   662 _RWKH	=	0x0097
                           000099   663 G$AINDIDS1$0_0$0 == 0x0099
                           000099   664 _AINDIDS1	=	0x0099
                           00009A   665 G$P0DW$0_0$0 == 0x009a
                           00009A   666 _P0DW	=	0x009a
                           00009B   667 G$P1DW$0_0$0 == 0x009b
                           00009B   668 _P1DW	=	0x009b
                           00009C   669 G$P2DW$0_0$0 == 0x009c
                           00009C   670 _P2DW	=	0x009c
                           00009D   671 G$P3DW$0_0$0 == 0x009d
                           00009D   672 _P3DW	=	0x009d
                           0000A1   673 G$AUXR2$0_0$0 == 0x00a1
                           0000A1   674 _AUXR2	=	0x00a1
                           0000A2   675 G$AUXR3$0_0$0 == 0x00a2
                           0000A2   676 _AUXR3	=	0x00a2
                           0000A3   677 G$AUXR4$0_0$0 == 0x00a3
                           0000A3   678 _AUXR4	=	0x00a3
                           0000A4   679 G$AUXR5$0_0$0 == 0x00a4
                           0000A4   680 _AUXR5	=	0x00a4
                           0000A5   681 G$AUXR6$0_0$0 == 0x00a5
                           0000A5   682 _AUXR6	=	0x00a5
                           0000A6   683 G$AUXR7$0_0$0 == 0x00a6
                           0000A6   684 _AUXR7	=	0x00a6
                           0000A7   685 G$AUXR8$0_0$0 == 0x00a7
                           0000A7   686 _AUXR8	=	0x00a7
                           0000A9   687 G$PWM1PH$0_0$0 == 0x00a9
                           0000A9   688 _PWM1PH	=	0x00a9
                           0000AA   689 G$PWM1C0H$0_0$0 == 0x00aa
                           0000AA   690 _PWM1C0H	=	0x00aa
                           0000AB   691 G$PWM1C1H$0_0$0 == 0x00ab
                           0000AB   692 _PWM1C1H	=	0x00ab
                           0000AC   693 G$PWM1MD$0_0$0 == 0x00ac
                           0000AC   694 _PWM1MD	=	0x00ac
                           0000AD   695 G$PWM1MEN$0_0$0 == 0x00ad
                           0000AD   696 _PWM1MEN	=	0x00ad
                           0000B1   697 G$PWM1PL$0_0$0 == 0x00b1
                           0000B1   698 _PWM1PL	=	0x00b1
                           0000B2   699 G$PWM1C0L$0_0$0 == 0x00b2
                           0000B2   700 _PWM1C0L	=	0x00b2
                           0000B3   701 G$PWM1C1L$0_0$0 == 0x00b3
                           0000B3   702 _PWM1C1L	=	0x00b3
                           0000B4   703 G$PWM1CON0$0_0$0 == 0x00b4
                           0000B4   704 _PWM1CON0	=	0x00b4
                           0000B5   705 G$PWM1CON1$0_0$0 == 0x00b5
                           0000B5   706 _PWM1CON1	=	0x00b5
                           0000B6   707 G$PWM1INTC$0_0$0 == 0x00b6
                           0000B6   708 _PWM1INTC	=	0x00b6
                           0000B7   709 G$PIOCON2$0_0$0 == 0x00b7
                           0000B7   710 _PIOCON2	=	0x00b7
                           0000B9   711 G$PWM2PH$0_0$0 == 0x00b9
                           0000B9   712 _PWM2PH	=	0x00b9
                           0000BA   713 G$PWM2C0H$0_0$0 == 0x00ba
                           0000BA   714 _PWM2C0H	=	0x00ba
                           0000BB   715 G$PWM2C1H$0_0$0 == 0x00bb
                           0000BB   716 _PWM2C1H	=	0x00bb
                           0000BC   717 G$PWM2MD$0_0$0 == 0x00bc
                           0000BC   718 _PWM2MD	=	0x00bc
                           0000BD   719 G$PWM2MEN$0_0$0 == 0x00bd
                           0000BD   720 _PWM2MEN	=	0x00bd
                           0000C1   721 G$PWM2PL$0_0$0 == 0x00c1
                           0000C1   722 _PWM2PL	=	0x00c1
                           0000C2   723 G$PWM2C0L$0_0$0 == 0x00c2
                           0000C2   724 _PWM2C0L	=	0x00c2
                           0000C3   725 G$PWM2C1L$0_0$0 == 0x00c3
                           0000C3   726 _PWM2C1L	=	0x00c3
                           0000C4   727 G$PWM2CON0$0_0$0 == 0x00c4
                           0000C4   728 _PWM2CON0	=	0x00c4
                           0000C5   729 G$PWM2CON1$0_0$0 == 0x00c5
                           0000C5   730 _PWM2CON1	=	0x00c5
                           0000C6   731 G$PWM2INTC$0_0$0 == 0x00c6
                           0000C6   732 _PWM2INTC	=	0x00c6
                           0000C9   733 G$PWM3PH$0_0$0 == 0x00c9
                           0000C9   734 _PWM3PH	=	0x00c9
                           0000CA   735 G$PWM3C0H$0_0$0 == 0x00ca
                           0000CA   736 _PWM3C0H	=	0x00ca
                           0000CB   737 G$PWM3C1H$0_0$0 == 0x00cb
                           0000CB   738 _PWM3C1H	=	0x00cb
                           0000CC   739 G$PWM3MD$0_0$0 == 0x00cc
                           0000CC   740 _PWM3MD	=	0x00cc
                           0000CD   741 G$PWM3MEN$0_0$0 == 0x00cd
                           0000CD   742 _PWM3MEN	=	0x00cd
                           0000CE   743 G$EIP2$0_0$0 == 0x00ce
                           0000CE   744 _EIP2	=	0x00ce
                           0000CF   745 G$EIPH2$0_0$0 == 0x00cf
                           0000CF   746 _EIPH2	=	0x00cf
                           0000D1   747 G$PWM3PL$0_0$0 == 0x00d1
                           0000D1   748 _PWM3PL	=	0x00d1
                           0000D2   749 G$PWM3C0L$0_0$0 == 0x00d2
                           0000D2   750 _PWM3C0L	=	0x00d2
                           0000D3   751 G$PWM3C1L$0_0$0 == 0x00d3
                           0000D3   752 _PWM3C1L	=	0x00d3
                           0000D4   753 G$PWM3CON0$0_0$0 == 0x00d4
                           0000D4   754 _PWM3CON0	=	0x00d4
                           0000D5   755 G$PWM3CON1$0_0$0 == 0x00d5
                           0000D5   756 _PWM3CON1	=	0x00d5
                           0000D6   757 G$PWM3INTC$0_0$0 == 0x00d6
                           0000D6   758 _PWM3INTC	=	0x00d6
                           0000D7   759 G$XTLCON$0_0$0 == 0x00d7
                           0000D7   760 _XTLCON	=	0x00d7
                           0000D9   761 G$SC0DR$0_0$0 == 0x00d9
                           0000D9   762 _SC0DR	=	0x00d9
                           0000DA   763 G$SC0EGT$0_0$0 == 0x00da
                           0000DA   764 _SC0EGT	=	0x00da
                           0000DB   765 G$SC0ETURD0$0_0$0 == 0x00db
                           0000DB   766 _SC0ETURD0	=	0x00db
                           0000DC   767 G$SC0ETURD1$0_0$0 == 0x00dc
                           0000DC   768 _SC0ETURD1	=	0x00dc
                           0000DD   769 G$SC0IE$0_0$0 == 0x00dd
                           0000DD   770 _SC0IE	=	0x00dd
                           0000DE   771 G$SC0IS$0_0$0 == 0x00de
                           0000DE   772 _SC0IS	=	0x00de
                           0000DF   773 G$SC0TSR$0_0$0 == 0x00df
                           0000DF   774 _SC0TSR	=	0x00df
                           0000E1   775 G$SC1DR$0_0$0 == 0x00e1
                           0000E1   776 _SC1DR	=	0x00e1
                           0000E2   777 G$SC1EGT$0_0$0 == 0x00e2
                           0000E2   778 _SC1EGT	=	0x00e2
                           0000E3   779 G$SC1ETURD0$0_0$0 == 0x00e3
                           0000E3   780 _SC1ETURD0	=	0x00e3
                           0000E4   781 G$SC1ETURD1$0_0$0 == 0x00e4
                           0000E4   782 _SC1ETURD1	=	0x00e4
                           0000E5   783 G$SC1IE$0_0$0 == 0x00e5
                           0000E5   784 _SC1IE	=	0x00e5
                           0000E6   785 G$SC1IS$0_0$0 == 0x00e6
                           0000E6   786 _SC1IS	=	0x00e6
                           0000E7   787 G$SC1TSR$0_0$0 == 0x00e7
                           0000E7   788 _SC1TSR	=	0x00e7
                           0000E9   789 G$SC2DR$0_0$0 == 0x00e9
                           0000E9   790 _SC2DR	=	0x00e9
                           0000EA   791 G$SC2EGT$0_0$0 == 0x00ea
                           0000EA   792 _SC2EGT	=	0x00ea
                           0000EB   793 G$SC2ETURD0$0_0$0 == 0x00eb
                           0000EB   794 _SC2ETURD0	=	0x00eb
                           0000EC   795 G$SC2ETURD1$0_0$0 == 0x00ec
                           0000EC   796 _SC2ETURD1	=	0x00ec
                           0000ED   797 G$SC2IE$0_0$0 == 0x00ed
                           0000ED   798 _SC2IE	=	0x00ed
                           0000EE   799 G$SC2IS$0_0$0 == 0x00ee
                           0000EE   800 _SC2IS	=	0x00ee
                           0000EF   801 G$SC2TSR$0_0$0 == 0x00ef
                           0000EF   802 _SC2TSR	=	0x00ef
                           0000F1   803 G$SC0CR0$0_0$0 == 0x00f1
                           0000F1   804 _SC0CR0	=	0x00f1
                           0000F2   805 G$SC0CR1$0_0$0 == 0x00f2
                           0000F2   806 _SC0CR1	=	0x00f2
                           0000F3   807 G$SC1CR0$0_0$0 == 0x00f3
                           0000F3   808 _SC1CR0	=	0x00f3
                           0000F4   809 G$SC1CR1$0_0$0 == 0x00f4
                           0000F4   810 _SC1CR1	=	0x00f4
                           0000F5   811 G$SC2CR0$0_0$0 == 0x00f5
                           0000F5   812 _SC2CR0	=	0x00f5
                           0000F6   813 G$SC2CR1$0_0$0 == 0x00f6
                           0000F6   814 _SC2CR1	=	0x00f6
                           0000F7   815 G$PIPS7$0_0$0 == 0x00f7
                           0000F7   816 _PIPS7	=	0x00f7
                           0000F9   817 G$PIPS0$0_0$0 == 0x00f9
                           0000F9   818 _PIPS0	=	0x00f9
                           0000FA   819 G$PIPS1$0_0$0 == 0x00fa
                           0000FA   820 _PIPS1	=	0x00fa
                           0000FB   821 G$PIPS2$0_0$0 == 0x00fb
                           0000FB   822 _PIPS2	=	0x00fb
                           0000FC   823 G$PIPS3$0_0$0 == 0x00fc
                           0000FC   824 _PIPS3	=	0x00fc
                           0000FD   825 G$PIPS4$0_0$0 == 0x00fd
                           0000FD   826 _PIPS4	=	0x00fd
                           0000FE   827 G$PIPS5$0_0$0 == 0x00fe
                           0000FE   828 _PIPS5	=	0x00fe
                           0000FF   829 G$PIPS6$0_0$0 == 0x00ff
                           0000FF   830 _PIPS6	=	0x00ff
                                    831 ;--------------------------------------------------------
                                    832 ; special function bits
                                    833 ;--------------------------------------------------------
                                    834 	.area RSEG    (ABS,DATA)
      000000                        835 	.org 0x0000
                           0000FF   836 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   837 _SM0_1	=	0x00ff
                           0000FF   838 G$FE_1$0_0$0 == 0x00ff
                           0000FF   839 _FE_1	=	0x00ff
                           0000FE   840 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   841 _SM1_1	=	0x00fe
                           0000FD   842 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   843 _SM2_1	=	0x00fd
                           0000FC   844 G$REN_1$0_0$0 == 0x00fc
                           0000FC   845 _REN_1	=	0x00fc
                           0000FB   846 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   847 _TB8_1	=	0x00fb
                           0000FA   848 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   849 _RB8_1	=	0x00fa
                           0000F9   850 G$TI_1$0_0$0 == 0x00f9
                           0000F9   851 _TI_1	=	0x00f9
                           0000F8   852 G$RI_1$0_0$0 == 0x00f8
                           0000F8   853 _RI_1	=	0x00f8
                           0000EF   854 G$ADCF$0_0$0 == 0x00ef
                           0000EF   855 _ADCF	=	0x00ef
                           0000EE   856 G$ADCS$0_0$0 == 0x00ee
                           0000EE   857 _ADCS	=	0x00ee
                           0000ED   858 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   859 _ETGSEL1	=	0x00ed
                           0000EC   860 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   861 _ETGSEL0	=	0x00ec
                           0000EB   862 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   863 _ADCHS3	=	0x00eb
                           0000EA   864 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   865 _ADCHS2	=	0x00ea
                           0000E9   866 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   867 _ADCHS1	=	0x00e9
                           0000E8   868 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   869 _ADCHS0	=	0x00e8
                           0000DF   870 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   871 _PWMRUN	=	0x00df
                           0000DE   872 G$LOAD$0_0$0 == 0x00de
                           0000DE   873 _LOAD	=	0x00de
                           0000DD   874 G$PWMF$0_0$0 == 0x00dd
                           0000DD   875 _PWMF	=	0x00dd
                           0000DC   876 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   877 _CLRPWM	=	0x00dc
                           0000D7   878 G$CY$0_0$0 == 0x00d7
                           0000D7   879 _CY	=	0x00d7
                           0000D6   880 G$AC$0_0$0 == 0x00d6
                           0000D6   881 _AC	=	0x00d6
                           0000D5   882 G$F0$0_0$0 == 0x00d5
                           0000D5   883 _F0	=	0x00d5
                           0000D4   884 G$RS1$0_0$0 == 0x00d4
                           0000D4   885 _RS1	=	0x00d4
                           0000D3   886 G$RS0$0_0$0 == 0x00d3
                           0000D3   887 _RS0	=	0x00d3
                           0000D2   888 G$OV$0_0$0 == 0x00d2
                           0000D2   889 _OV	=	0x00d2
                           0000D0   890 G$P$0_0$0 == 0x00d0
                           0000D0   891 _P	=	0x00d0
                           0000CF   892 G$TF2$0_0$0 == 0x00cf
                           0000CF   893 _TF2	=	0x00cf
                           0000CA   894 G$TR2$0_0$0 == 0x00ca
                           0000CA   895 _TR2	=	0x00ca
                           0000C8   896 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   897 _CM_RL2	=	0x00c8
                           0000C6   898 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   899 _I2CEN	=	0x00c6
                           0000C5   900 G$STA$0_0$0 == 0x00c5
                           0000C5   901 _STA	=	0x00c5
                           0000C4   902 G$STO$0_0$0 == 0x00c4
                           0000C4   903 _STO	=	0x00c4
                           0000C3   904 G$SI$0_0$0 == 0x00c3
                           0000C3   905 _SI	=	0x00c3
                           0000C2   906 G$AA$0_0$0 == 0x00c2
                           0000C2   907 _AA	=	0x00c2
                           0000C0   908 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   909 _I2CPX	=	0x00c0
                           0000BE   910 G$PADC$0_0$0 == 0x00be
                           0000BE   911 _PADC	=	0x00be
                           0000BD   912 G$PBOD$0_0$0 == 0x00bd
                           0000BD   913 _PBOD	=	0x00bd
                           0000BC   914 G$PS$0_0$0 == 0x00bc
                           0000BC   915 _PS	=	0x00bc
                           0000BB   916 G$PT1$0_0$0 == 0x00bb
                           0000BB   917 _PT1	=	0x00bb
                           0000BA   918 G$PX1$0_0$0 == 0x00ba
                           0000BA   919 _PX1	=	0x00ba
                           0000B9   920 G$PT0$0_0$0 == 0x00b9
                           0000B9   921 _PT0	=	0x00b9
                           0000B8   922 G$PX0$0_0$0 == 0x00b8
                           0000B8   923 _PX0	=	0x00b8
                           0000B7   924 G$P37$0_0$0 == 0x00b7
                           0000B7   925 _P37	=	0x00b7
                           0000B6   926 G$P36$0_0$0 == 0x00b6
                           0000B6   927 _P36	=	0x00b6
                           0000B5   928 G$P35$0_0$0 == 0x00b5
                           0000B5   929 _P35	=	0x00b5
                           0000B4   930 G$P34$0_0$0 == 0x00b4
                           0000B4   931 _P34	=	0x00b4
                           0000B3   932 G$P33$0_0$0 == 0x00b3
                           0000B3   933 _P33	=	0x00b3
                           0000B2   934 G$P32$0_0$0 == 0x00b2
                           0000B2   935 _P32	=	0x00b2
                           0000B1   936 G$P31$0_0$0 == 0x00b1
                           0000B1   937 _P31	=	0x00b1
                           0000B0   938 G$P30$0_0$0 == 0x00b0
                           0000B0   939 _P30	=	0x00b0
                           0000AF   940 G$EA$0_0$0 == 0x00af
                           0000AF   941 _EA	=	0x00af
                           0000AE   942 G$EADC$0_0$0 == 0x00ae
                           0000AE   943 _EADC	=	0x00ae
                           0000AD   944 G$EBOD$0_0$0 == 0x00ad
                           0000AD   945 _EBOD	=	0x00ad
                           0000AC   946 G$ES$0_0$0 == 0x00ac
                           0000AC   947 _ES	=	0x00ac
                           0000AB   948 G$ET1$0_0$0 == 0x00ab
                           0000AB   949 _ET1	=	0x00ab
                           0000AA   950 G$EX1$0_0$0 == 0x00aa
                           0000AA   951 _EX1	=	0x00aa
                           0000A9   952 G$ET0$0_0$0 == 0x00a9
                           0000A9   953 _ET0	=	0x00a9
                           0000A8   954 G$EX0$0_0$0 == 0x00a8
                           0000A8   955 _EX0	=	0x00a8
                           0000A0   956 G$P20$0_0$0 == 0x00a0
                           0000A0   957 _P20	=	0x00a0
                           00009F   958 G$SM0$0_0$0 == 0x009f
                           00009F   959 _SM0	=	0x009f
                           00009F   960 G$FE$0_0$0 == 0x009f
                           00009F   961 _FE	=	0x009f
                           00009E   962 G$SM1$0_0$0 == 0x009e
                           00009E   963 _SM1	=	0x009e
                           00009D   964 G$SM2$0_0$0 == 0x009d
                           00009D   965 _SM2	=	0x009d
                           00009C   966 G$REN$0_0$0 == 0x009c
                           00009C   967 _REN	=	0x009c
                           00009B   968 G$TB8$0_0$0 == 0x009b
                           00009B   969 _TB8	=	0x009b
                           00009A   970 G$RB8$0_0$0 == 0x009a
                           00009A   971 _RB8	=	0x009a
                           000099   972 G$TI$0_0$0 == 0x0099
                           000099   973 _TI	=	0x0099
                           000098   974 G$RI$0_0$0 == 0x0098
                           000098   975 _RI	=	0x0098
                           000097   976 G$P17$0_0$0 == 0x0097
                           000097   977 _P17	=	0x0097
                           000096   978 G$P16$0_0$0 == 0x0096
                           000096   979 _P16	=	0x0096
                           000096   980 G$TXD_1$0_0$0 == 0x0096
                           000096   981 _TXD_1	=	0x0096
                           000095   982 G$P15$0_0$0 == 0x0095
                           000095   983 _P15	=	0x0095
                           000094   984 G$P14$0_0$0 == 0x0094
                           000094   985 _P14	=	0x0094
                           000094   986 G$SDA$0_0$0 == 0x0094
                           000094   987 _SDA	=	0x0094
                           000093   988 G$P13$0_0$0 == 0x0093
                           000093   989 _P13	=	0x0093
                           000093   990 G$SCL$0_0$0 == 0x0093
                           000093   991 _SCL	=	0x0093
                           000092   992 G$P12$0_0$0 == 0x0092
                           000092   993 _P12	=	0x0092
                           000091   994 G$P11$0_0$0 == 0x0091
                           000091   995 _P11	=	0x0091
                           000090   996 G$P10$0_0$0 == 0x0090
                           000090   997 _P10	=	0x0090
                           00008F   998 G$TF1$0_0$0 == 0x008f
                           00008F   999 _TF1	=	0x008f
                           00008E  1000 G$TR1$0_0$0 == 0x008e
                           00008E  1001 _TR1	=	0x008e
                           00008D  1002 G$TF0$0_0$0 == 0x008d
                           00008D  1003 _TF0	=	0x008d
                           00008C  1004 G$TR0$0_0$0 == 0x008c
                           00008C  1005 _TR0	=	0x008c
                           00008B  1006 G$IE1$0_0$0 == 0x008b
                           00008B  1007 _IE1	=	0x008b
                           00008A  1008 G$IT1$0_0$0 == 0x008a
                           00008A  1009 _IT1	=	0x008a
                           000089  1010 G$IE0$0_0$0 == 0x0089
                           000089  1011 _IE0	=	0x0089
                           000088  1012 G$IT0$0_0$0 == 0x0088
                           000088  1013 _IT0	=	0x0088
                           000087  1014 G$P07$0_0$0 == 0x0087
                           000087  1015 _P07	=	0x0087
                           000087  1016 G$RXD$0_0$0 == 0x0087
                           000087  1017 _RXD	=	0x0087
                           000086  1018 G$P06$0_0$0 == 0x0086
                           000086  1019 _P06	=	0x0086
                           000086  1020 G$TXD$0_0$0 == 0x0086
                           000086  1021 _TXD	=	0x0086
                           000085  1022 G$P05$0_0$0 == 0x0085
                           000085  1023 _P05	=	0x0085
                           000084  1024 G$P04$0_0$0 == 0x0084
                           000084  1025 _P04	=	0x0084
                           000084  1026 G$STADC$0_0$0 == 0x0084
                           000084  1027 _STADC	=	0x0084
                           000083  1028 G$P03$0_0$0 == 0x0083
                           000083  1029 _P03	=	0x0083
                           000082  1030 G$P02$0_0$0 == 0x0082
                           000082  1031 _P02	=	0x0082
                           000082  1032 G$RXD_1$0_0$0 == 0x0082
                           000082  1033 _RXD_1	=	0x0082
                           000081  1034 G$P01$0_0$0 == 0x0081
                           000081  1035 _P01	=	0x0081
                           000081  1036 G$MISO$0_0$0 == 0x0081
                           000081  1037 _MISO	=	0x0081
                           000080  1038 G$P00$0_0$0 == 0x0080
                           000080  1039 _P00	=	0x0080
                           000080  1040 G$MOSI$0_0$0 == 0x0080
                           000080  1041 _MOSI	=	0x0080
                                   1042 ;--------------------------------------------------------
                                   1043 ; overlayable register banks
                                   1044 ;--------------------------------------------------------
                                   1045 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1046 	.ds 8
                                   1047 ;--------------------------------------------------------
                                   1048 ; internal ram data
                                   1049 ;--------------------------------------------------------
                                   1050 	.area DSEG    (DATA)
                                   1051 ;--------------------------------------------------------
                                   1052 ; overlayable items in internal ram 
                                   1053 ;--------------------------------------------------------
                                   1054 	.area	OSEG    (OVR,DATA)
                                   1055 ;--------------------------------------------------------
                                   1056 ; indirectly addressable internal ram data
                                   1057 ;--------------------------------------------------------
                                   1058 	.area ISEG    (DATA)
                                   1059 ;--------------------------------------------------------
                                   1060 ; absolute internal ram data
                                   1061 ;--------------------------------------------------------
                                   1062 	.area IABS    (ABS,DATA)
                                   1063 	.area IABS    (ABS,DATA)
                                   1064 ;--------------------------------------------------------
                                   1065 ; bit data
                                   1066 ;--------------------------------------------------------
                                   1067 	.area BSEG    (BIT)
                                   1068 ;--------------------------------------------------------
                                   1069 ; paged external ram data
                                   1070 ;--------------------------------------------------------
                                   1071 	.area PSEG    (PAG,XDATA)
                                   1072 ;--------------------------------------------------------
                                   1073 ; external ram data
                                   1074 ;--------------------------------------------------------
                                   1075 	.area XSEG    (XDATA)
                                   1076 ;--------------------------------------------------------
                                   1077 ; absolute external ram data
                                   1078 ;--------------------------------------------------------
                                   1079 	.area XABS    (ABS,XDATA)
                                   1080 ;--------------------------------------------------------
                                   1081 ; external initialized ram data
                                   1082 ;--------------------------------------------------------
                                   1083 	.area XISEG   (XDATA)
                                   1084 	.area HOME    (CODE)
                                   1085 	.area GSINIT0 (CODE)
                                   1086 	.area GSINIT1 (CODE)
                                   1087 	.area GSINIT2 (CODE)
                                   1088 	.area GSINIT3 (CODE)
                                   1089 	.area GSINIT4 (CODE)
                                   1090 	.area GSINIT5 (CODE)
                                   1091 	.area GSINIT  (CODE)
                                   1092 	.area GSFINAL (CODE)
                                   1093 	.area CSEG    (CODE)
                                   1094 ;--------------------------------------------------------
                                   1095 ; global & static initialisations
                                   1096 ;--------------------------------------------------------
                                   1097 	.area HOME    (CODE)
                                   1098 	.area GSINIT  (CODE)
                                   1099 	.area GSFINAL (CODE)
                                   1100 	.area GSINIT  (CODE)
                                   1101 ;--------------------------------------------------------
                                   1102 ; Home
                                   1103 ;--------------------------------------------------------
                                   1104 	.area HOME    (CODE)
                                   1105 	.area HOME    (CODE)
                                   1106 ;--------------------------------------------------------
                                   1107 ; code
                                   1108 ;--------------------------------------------------------
                                   1109 	.area CSEG    (CODE)
                                   1110 ;------------------------------------------------------------
                                   1111 ;Allocation info for local variables in function 'putchar'
                                   1112 ;------------------------------------------------------------
                                   1113 ;c                         Allocated to registers r6 r7 
                                   1114 ;------------------------------------------------------------
                           000000  1115 	G$putchar$0$0 ==.
                           000000  1116 	C$PUTCHAR.C$39$0_0$49 ==.
                                   1117 ;	..\PUTCHAR.C:39: int putchar (int c)  {
                                   1118 ;	-----------------------------------------
                                   1119 ;	 function putchar
                                   1120 ;	-----------------------------------------
      000A13                       1121 _putchar:
                           000007  1122 	ar7 = 0x07
                           000006  1123 	ar6 = 0x06
                           000005  1124 	ar5 = 0x05
                           000004  1125 	ar4 = 0x04
                           000003  1126 	ar3 = 0x03
                           000002  1127 	ar2 = 0x02
                           000001  1128 	ar1 = 0x01
                           000000  1129 	ar0 = 0x00
      000A13 AE 82            [24] 1130 	mov	r6,dpl
                           000002  1131 	C$PUTCHAR.C$40$1_0$49 ==.
                                   1132 ;	..\PUTCHAR.C:40: while (!TI);
      000A15                       1133 00101$:
                           000002  1134 	C$PUTCHAR.C$41$1_0$49 ==.
                                   1135 ;	..\PUTCHAR.C:41: TI = 0;
                                   1136 ;	assignBit
      000A15 10 99 02         [24] 1137 	jbc	_TI,00114$
      000A18 80 FB            [24] 1138 	sjmp	00101$
      000A1A                       1139 00114$:
                           000007  1140 	C$PUTCHAR.C$42$1_0$49 ==.
                                   1141 ;	..\PUTCHAR.C:42: return (SBUF = c);
      000A1A 8E 99            [24] 1142 	mov	_SBUF,r6
      000A1C 7F 00            [12] 1143 	mov	r7,#0x00
      000A1E 8E 82            [24] 1144 	mov	dpl,r6
      000A20 8F 83            [24] 1145 	mov	dph,r7
                           00000F  1146 	C$PUTCHAR.C$43$1_0$49 ==.
                                   1147 ;	..\PUTCHAR.C:43: }
                           00000F  1148 	C$PUTCHAR.C$43$1_0$49 ==.
                           00000F  1149 	XG$putchar$0$0 ==.
      000A22 22               [24] 1150 	ret
                                   1151 	.area CSEG    (CODE)
                                   1152 	.area CONST   (CODE)
                                   1153 	.area XINIT   (CODE)
                                   1154 	.area CABS    (ABS,CODE)
