                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module GPIO
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Timer0_Delay
                                     13 	.globl _MOSI
                                     14 	.globl _P00
                                     15 	.globl _MISO
                                     16 	.globl _P01
                                     17 	.globl _RXD_1
                                     18 	.globl _P02
                                     19 	.globl _P03
                                     20 	.globl _STADC
                                     21 	.globl _P04
                                     22 	.globl _P05
                                     23 	.globl _TXD
                                     24 	.globl _P06
                                     25 	.globl _RXD
                                     26 	.globl _P07
                                     27 	.globl _IT0
                                     28 	.globl _IE0
                                     29 	.globl _IT1
                                     30 	.globl _IE1
                                     31 	.globl _TR0
                                     32 	.globl _TF0
                                     33 	.globl _TR1
                                     34 	.globl _TF1
                                     35 	.globl _P10
                                     36 	.globl _P11
                                     37 	.globl _P12
                                     38 	.globl _SCL
                                     39 	.globl _P13
                                     40 	.globl _SDA
                                     41 	.globl _P14
                                     42 	.globl _P15
                                     43 	.globl _TXD_1
                                     44 	.globl _P16
                                     45 	.globl _P17
                                     46 	.globl _RI
                                     47 	.globl _TI
                                     48 	.globl _RB8
                                     49 	.globl _TB8
                                     50 	.globl _REN
                                     51 	.globl _SM2
                                     52 	.globl _SM1
                                     53 	.globl _FE
                                     54 	.globl _SM0
                                     55 	.globl _P20
                                     56 	.globl _EX0
                                     57 	.globl _ET0
                                     58 	.globl _EX1
                                     59 	.globl _ET1
                                     60 	.globl _ES
                                     61 	.globl _EBOD
                                     62 	.globl _EADC
                                     63 	.globl _EA
                                     64 	.globl _P30
                                     65 	.globl _P31
                                     66 	.globl _P32
                                     67 	.globl _P33
                                     68 	.globl _P34
                                     69 	.globl _P35
                                     70 	.globl _P36
                                     71 	.globl _P37
                                     72 	.globl _PX0
                                     73 	.globl _PT0
                                     74 	.globl _PX1
                                     75 	.globl _PT1
                                     76 	.globl _PS
                                     77 	.globl _PBOD
                                     78 	.globl _PADC
                                     79 	.globl _I2CPX
                                     80 	.globl _AA
                                     81 	.globl _SI
                                     82 	.globl _STO
                                     83 	.globl _STA
                                     84 	.globl _I2CEN
                                     85 	.globl _CM_RL2
                                     86 	.globl _TR2
                                     87 	.globl _TF2
                                     88 	.globl _P
                                     89 	.globl _OV
                                     90 	.globl _RS0
                                     91 	.globl _RS1
                                     92 	.globl _F0
                                     93 	.globl _AC
                                     94 	.globl _CY
                                     95 	.globl _CLRPWM
                                     96 	.globl _PWMF
                                     97 	.globl _LOAD
                                     98 	.globl _PWMRUN
                                     99 	.globl _ADCHS0
                                    100 	.globl _ADCHS1
                                    101 	.globl _ADCHS2
                                    102 	.globl _ADCHS3
                                    103 	.globl _ETGSEL0
                                    104 	.globl _ETGSEL1
                                    105 	.globl _ADCS
                                    106 	.globl _ADCF
                                    107 	.globl _RI_1
                                    108 	.globl _TI_1
                                    109 	.globl _RB8_1
                                    110 	.globl _TB8_1
                                    111 	.globl _REN_1
                                    112 	.globl _SM2_1
                                    113 	.globl _SM1_1
                                    114 	.globl _FE_1
                                    115 	.globl _SM0_1
                                    116 	.globl _PIPS6
                                    117 	.globl _PIPS5
                                    118 	.globl _PIPS4
                                    119 	.globl _PIPS3
                                    120 	.globl _PIPS2
                                    121 	.globl _PIPS1
                                    122 	.globl _PIPS0
                                    123 	.globl _PIPS7
                                    124 	.globl _SC2CR1
                                    125 	.globl _SC2CR0
                                    126 	.globl _SC1CR1
                                    127 	.globl _SC1CR0
                                    128 	.globl _SC0CR1
                                    129 	.globl _SC0CR0
                                    130 	.globl _SC2TSR
                                    131 	.globl _SC2IS
                                    132 	.globl _SC2IE
                                    133 	.globl _SC2ETURD1
                                    134 	.globl _SC2ETURD0
                                    135 	.globl _SC2EGT
                                    136 	.globl _SC2DR
                                    137 	.globl _SC1TSR
                                    138 	.globl _SC1IS
                                    139 	.globl _SC1IE
                                    140 	.globl _SC1ETURD1
                                    141 	.globl _SC1ETURD0
                                    142 	.globl _SC1EGT
                                    143 	.globl _SC1DR
                                    144 	.globl _SC0TSR
                                    145 	.globl _SC0IS
                                    146 	.globl _SC0IE
                                    147 	.globl _SC0ETURD1
                                    148 	.globl _SC0ETURD0
                                    149 	.globl _SC0EGT
                                    150 	.globl _SC0DR
                                    151 	.globl _XTLCON
                                    152 	.globl _PWM3INTC
                                    153 	.globl _PWM3CON1
                                    154 	.globl _PWM3CON0
                                    155 	.globl _PWM3C1L
                                    156 	.globl _PWM3C0L
                                    157 	.globl _PWM3PL
                                    158 	.globl _EIPH2
                                    159 	.globl _EIP2
                                    160 	.globl _PWM3MEN
                                    161 	.globl _PWM3MD
                                    162 	.globl _PWM3C1H
                                    163 	.globl _PWM3C0H
                                    164 	.globl _PWM3PH
                                    165 	.globl _PWM2INTC
                                    166 	.globl _PWM2CON1
                                    167 	.globl _PWM2CON0
                                    168 	.globl _PWM2C1L
                                    169 	.globl _PWM2C0L
                                    170 	.globl _PWM2PL
                                    171 	.globl _PWM2MEN
                                    172 	.globl _PWM2MD
                                    173 	.globl _PWM2C1H
                                    174 	.globl _PWM2C0H
                                    175 	.globl _PWM2PH
                                    176 	.globl _PIOCON2
                                    177 	.globl _PWM1INTC
                                    178 	.globl _PWM1CON1
                                    179 	.globl _PWM1CON0
                                    180 	.globl _PWM1C1L
                                    181 	.globl _PWM1C0L
                                    182 	.globl _PWM1PL
                                    183 	.globl _PWM1MEN
                                    184 	.globl _PWM1MD
                                    185 	.globl _PWM1C1H
                                    186 	.globl _PWM1C0H
                                    187 	.globl _PWM1PH
                                    188 	.globl _AUXR8
                                    189 	.globl _AUXR7
                                    190 	.globl _AUXR6
                                    191 	.globl _AUXR5
                                    192 	.globl _AUXR4
                                    193 	.globl _AUXR3
                                    194 	.globl _AUXR2
                                    195 	.globl _P3DW
                                    196 	.globl _P2DW
                                    197 	.globl _P1DW
                                    198 	.globl _P0DW
                                    199 	.globl _AINDIDS1
                                    200 	.globl _RWKH
                                    201 	.globl _P3UP
                                    202 	.globl _P2UP
                                    203 	.globl _P1UP
                                    204 	.globl _P0UP
                                    205 	.globl _ADCSR
                                    206 	.globl _ADCCN
                                    207 	.globl _ADCSN
                                    208 	.globl _P2S
                                    209 	.globl _P2SR
                                    210 	.globl _P2M2
                                    211 	.globl _P2M1
                                    212 	.globl _ADCCON3
                                    213 	.globl _ADCBAH
                                    214 	.globl _ADCBAL
                                    215 	.globl _LVRDIS
                                    216 	.globl _SPCR2
                                    217 	.globl _PWM0C5L
                                    218 	.globl _PWM0C4L
                                    219 	.globl _PIOCON1
                                    220 	.globl _PWM0C5H
                                    221 	.globl _PWM0C4H
                                    222 	.globl _PWM0INTC
                                    223 	.globl _P1SR
                                    224 	.globl _P1S
                                    225 	.globl _P0SR
                                    226 	.globl _P0S
                                    227 	.globl _P3SR
                                    228 	.globl _P3S
                                    229 	.globl _EIPH1
                                    230 	.globl _EIP1
                                    231 	.globl _PORDIS
                                    232 	.globl _PWM0MD
                                    233 	.globl _PWM0MEN
                                    234 	.globl _PWM0DTCNT
                                    235 	.globl _PWM0DTEN
                                    236 	.globl _SCON_1
                                    237 	.globl _EIPH
                                    238 	.globl _AINDIDS0
                                    239 	.globl _SPDR
                                    240 	.globl _SPSR
                                    241 	.globl _SPCR
                                    242 	.globl _CAPCON4
                                    243 	.globl _CAPCON3
                                    244 	.globl _B
                                    245 	.globl _EIP
                                    246 	.globl _C2H
                                    247 	.globl _C2L
                                    248 	.globl _PIF
                                    249 	.globl _PIPEN
                                    250 	.globl _PINEN
                                    251 	.globl _PICON
                                    252 	.globl _ADCCON0
                                    253 	.globl _C1H
                                    254 	.globl _C1L
                                    255 	.globl _C0H
                                    256 	.globl _C0L
                                    257 	.globl _ADCDLY
                                    258 	.globl _ADCCON2
                                    259 	.globl _ADCCON1
                                    260 	.globl _ACC
                                    261 	.globl _PWM0CON1
                                    262 	.globl _PIOCON0
                                    263 	.globl _PWM0C3L
                                    264 	.globl _PWM0C2L
                                    265 	.globl _PWM0C1L
                                    266 	.globl _PWM0C0L
                                    267 	.globl _PWM0PL
                                    268 	.globl _PWM0CON0
                                    269 	.globl _PWM0FBD
                                    270 	.globl _PNP
                                    271 	.globl _PWM0C3H
                                    272 	.globl _PWM0C2H
                                    273 	.globl _PWM0C1H
                                    274 	.globl _PWM0C0H
                                    275 	.globl _PWM0PH
                                    276 	.globl _PSW
                                    277 	.globl _ADCMPH
                                    278 	.globl _ADCMPL
                                    279 	.globl _TH2
                                    280 	.globl _TL2
                                    281 	.globl _RCMP2H
                                    282 	.globl _RCMP2L
                                    283 	.globl _T2MOD
                                    284 	.globl _T2CON
                                    285 	.globl _TA
                                    286 	.globl _RH3
                                    287 	.globl _RL3
                                    288 	.globl _T3CON
                                    289 	.globl _ADCRH
                                    290 	.globl _ADCRL
                                    291 	.globl _I2ADDR
                                    292 	.globl _I2CON
                                    293 	.globl _I2TOC
                                    294 	.globl _I2CLK
                                    295 	.globl _I2STAT
                                    296 	.globl _I2DAT
                                    297 	.globl _SADDR_1
                                    298 	.globl _SADEN_1
                                    299 	.globl _SADEN
                                    300 	.globl _IP
                                    301 	.globl _IPH
                                    302 	.globl _TOE
                                    303 	.globl _P1M2
                                    304 	.globl _P1M1
                                    305 	.globl _P0M2
                                    306 	.globl _P0M1
                                    307 	.globl _P3
                                    308 	.globl _IAPCN
                                    309 	.globl _IAPFD
                                    310 	.globl _P3M2
                                    311 	.globl _P3M1
                                    312 	.globl _BODCON1
                                    313 	.globl _WDCON
                                    314 	.globl _SADDR
                                    315 	.globl _IE
                                    316 	.globl _IAPAH
                                    317 	.globl _IAPAL
                                    318 	.globl _IAPUEN
                                    319 	.globl _IAPTRG
                                    320 	.globl _BODCON0
                                    321 	.globl _AUXR1
                                    322 	.globl _P2
                                    323 	.globl _CHPCON
                                    324 	.globl _EIE1
                                    325 	.globl _EIE
                                    326 	.globl _SBUF_1
                                    327 	.globl _SBUF
                                    328 	.globl _SCON
                                    329 	.globl _CKEN
                                    330 	.globl _CKSWT
                                    331 	.globl _CKDIV
                                    332 	.globl _CAPCON2
                                    333 	.globl _CAPCON1
                                    334 	.globl _CAPCON0
                                    335 	.globl _SFRS
                                    336 	.globl _P1
                                    337 	.globl _WKCON
                                    338 	.globl _CKCON
                                    339 	.globl _TH1
                                    340 	.globl _TH0
                                    341 	.globl _TL1
                                    342 	.globl _TL0
                                    343 	.globl _TMOD
                                    344 	.globl _TCON
                                    345 	.globl _PCON
                                    346 	.globl _RWKL
                                    347 	.globl _RCTRIM1
                                    348 	.globl _RCTRIM0
                                    349 	.globl _DPH
                                    350 	.globl _DPL
                                    351 	.globl _SP
                                    352 	.globl _P0
                                    353 ;--------------------------------------------------------
                                    354 ; special function registers
                                    355 ;--------------------------------------------------------
                                    356 	.area RSEG    (ABS,DATA)
      000000                        357 	.org 0x0000
                           000080   358 G$P0$0_0$0 == 0x0080
                           000080   359 _P0	=	0x0080
                           000081   360 G$SP$0_0$0 == 0x0081
                           000081   361 _SP	=	0x0081
                           000082   362 G$DPL$0_0$0 == 0x0082
                           000082   363 _DPL	=	0x0082
                           000083   364 G$DPH$0_0$0 == 0x0083
                           000083   365 _DPH	=	0x0083
                           000084   366 G$RCTRIM0$0_0$0 == 0x0084
                           000084   367 _RCTRIM0	=	0x0084
                           000085   368 G$RCTRIM1$0_0$0 == 0x0085
                           000085   369 _RCTRIM1	=	0x0085
                           000086   370 G$RWKL$0_0$0 == 0x0086
                           000086   371 _RWKL	=	0x0086
                           000087   372 G$PCON$0_0$0 == 0x0087
                           000087   373 _PCON	=	0x0087
                           000088   374 G$TCON$0_0$0 == 0x0088
                           000088   375 _TCON	=	0x0088
                           000089   376 G$TMOD$0_0$0 == 0x0089
                           000089   377 _TMOD	=	0x0089
                           00008A   378 G$TL0$0_0$0 == 0x008a
                           00008A   379 _TL0	=	0x008a
                           00008B   380 G$TL1$0_0$0 == 0x008b
                           00008B   381 _TL1	=	0x008b
                           00008C   382 G$TH0$0_0$0 == 0x008c
                           00008C   383 _TH0	=	0x008c
                           00008D   384 G$TH1$0_0$0 == 0x008d
                           00008D   385 _TH1	=	0x008d
                           00008E   386 G$CKCON$0_0$0 == 0x008e
                           00008E   387 _CKCON	=	0x008e
                           00008F   388 G$WKCON$0_0$0 == 0x008f
                           00008F   389 _WKCON	=	0x008f
                           000090   390 G$P1$0_0$0 == 0x0090
                           000090   391 _P1	=	0x0090
                           000091   392 G$SFRS$0_0$0 == 0x0091
                           000091   393 _SFRS	=	0x0091
                           000092   394 G$CAPCON0$0_0$0 == 0x0092
                           000092   395 _CAPCON0	=	0x0092
                           000093   396 G$CAPCON1$0_0$0 == 0x0093
                           000093   397 _CAPCON1	=	0x0093
                           000094   398 G$CAPCON2$0_0$0 == 0x0094
                           000094   399 _CAPCON2	=	0x0094
                           000095   400 G$CKDIV$0_0$0 == 0x0095
                           000095   401 _CKDIV	=	0x0095
                           000096   402 G$CKSWT$0_0$0 == 0x0096
                           000096   403 _CKSWT	=	0x0096
                           000097   404 G$CKEN$0_0$0 == 0x0097
                           000097   405 _CKEN	=	0x0097
                           000098   406 G$SCON$0_0$0 == 0x0098
                           000098   407 _SCON	=	0x0098
                           000099   408 G$SBUF$0_0$0 == 0x0099
                           000099   409 _SBUF	=	0x0099
                           00009A   410 G$SBUF_1$0_0$0 == 0x009a
                           00009A   411 _SBUF_1	=	0x009a
                           00009B   412 G$EIE$0_0$0 == 0x009b
                           00009B   413 _EIE	=	0x009b
                           00009C   414 G$EIE1$0_0$0 == 0x009c
                           00009C   415 _EIE1	=	0x009c
                           00009F   416 G$CHPCON$0_0$0 == 0x009f
                           00009F   417 _CHPCON	=	0x009f
                           0000A0   418 G$P2$0_0$0 == 0x00a0
                           0000A0   419 _P2	=	0x00a0
                           0000A2   420 G$AUXR1$0_0$0 == 0x00a2
                           0000A2   421 _AUXR1	=	0x00a2
                           0000A3   422 G$BODCON0$0_0$0 == 0x00a3
                           0000A3   423 _BODCON0	=	0x00a3
                           0000A4   424 G$IAPTRG$0_0$0 == 0x00a4
                           0000A4   425 _IAPTRG	=	0x00a4
                           0000A5   426 G$IAPUEN$0_0$0 == 0x00a5
                           0000A5   427 _IAPUEN	=	0x00a5
                           0000A6   428 G$IAPAL$0_0$0 == 0x00a6
                           0000A6   429 _IAPAL	=	0x00a6
                           0000A7   430 G$IAPAH$0_0$0 == 0x00a7
                           0000A7   431 _IAPAH	=	0x00a7
                           0000A8   432 G$IE$0_0$0 == 0x00a8
                           0000A8   433 _IE	=	0x00a8
                           0000A9   434 G$SADDR$0_0$0 == 0x00a9
                           0000A9   435 _SADDR	=	0x00a9
                           0000AA   436 G$WDCON$0_0$0 == 0x00aa
                           0000AA   437 _WDCON	=	0x00aa
                           0000AB   438 G$BODCON1$0_0$0 == 0x00ab
                           0000AB   439 _BODCON1	=	0x00ab
                           0000AC   440 G$P3M1$0_0$0 == 0x00ac
                           0000AC   441 _P3M1	=	0x00ac
                           0000AD   442 G$P3M2$0_0$0 == 0x00ad
                           0000AD   443 _P3M2	=	0x00ad
                           0000AE   444 G$IAPFD$0_0$0 == 0x00ae
                           0000AE   445 _IAPFD	=	0x00ae
                           0000AF   446 G$IAPCN$0_0$0 == 0x00af
                           0000AF   447 _IAPCN	=	0x00af
                           0000B0   448 G$P3$0_0$0 == 0x00b0
                           0000B0   449 _P3	=	0x00b0
                           0000B1   450 G$P0M1$0_0$0 == 0x00b1
                           0000B1   451 _P0M1	=	0x00b1
                           0000B2   452 G$P0M2$0_0$0 == 0x00b2
                           0000B2   453 _P0M2	=	0x00b2
                           0000B3   454 G$P1M1$0_0$0 == 0x00b3
                           0000B3   455 _P1M1	=	0x00b3
                           0000B4   456 G$P1M2$0_0$0 == 0x00b4
                           0000B4   457 _P1M2	=	0x00b4
                           0000B5   458 G$TOE$0_0$0 == 0x00b5
                           0000B5   459 _TOE	=	0x00b5
                           0000B7   460 G$IPH$0_0$0 == 0x00b7
                           0000B7   461 _IPH	=	0x00b7
                           0000B8   462 G$IP$0_0$0 == 0x00b8
                           0000B8   463 _IP	=	0x00b8
                           0000B9   464 G$SADEN$0_0$0 == 0x00b9
                           0000B9   465 _SADEN	=	0x00b9
                           0000BA   466 G$SADEN_1$0_0$0 == 0x00ba
                           0000BA   467 _SADEN_1	=	0x00ba
                           0000BB   468 G$SADDR_1$0_0$0 == 0x00bb
                           0000BB   469 _SADDR_1	=	0x00bb
                           0000BC   470 G$I2DAT$0_0$0 == 0x00bc
                           0000BC   471 _I2DAT	=	0x00bc
                           0000BD   472 G$I2STAT$0_0$0 == 0x00bd
                           0000BD   473 _I2STAT	=	0x00bd
                           0000BE   474 G$I2CLK$0_0$0 == 0x00be
                           0000BE   475 _I2CLK	=	0x00be
                           0000BF   476 G$I2TOC$0_0$0 == 0x00bf
                           0000BF   477 _I2TOC	=	0x00bf
                           0000C0   478 G$I2CON$0_0$0 == 0x00c0
                           0000C0   479 _I2CON	=	0x00c0
                           0000C1   480 G$I2ADDR$0_0$0 == 0x00c1
                           0000C1   481 _I2ADDR	=	0x00c1
                           0000C2   482 G$ADCRL$0_0$0 == 0x00c2
                           0000C2   483 _ADCRL	=	0x00c2
                           0000C3   484 G$ADCRH$0_0$0 == 0x00c3
                           0000C3   485 _ADCRH	=	0x00c3
                           0000C4   486 G$T3CON$0_0$0 == 0x00c4
                           0000C4   487 _T3CON	=	0x00c4
                           0000C5   488 G$RL3$0_0$0 == 0x00c5
                           0000C5   489 _RL3	=	0x00c5
                           0000C6   490 G$RH3$0_0$0 == 0x00c6
                           0000C6   491 _RH3	=	0x00c6
                           0000C7   492 G$TA$0_0$0 == 0x00c7
                           0000C7   493 _TA	=	0x00c7
                           0000C8   494 G$T2CON$0_0$0 == 0x00c8
                           0000C8   495 _T2CON	=	0x00c8
                           0000C9   496 G$T2MOD$0_0$0 == 0x00c9
                           0000C9   497 _T2MOD	=	0x00c9
                           0000CA   498 G$RCMP2L$0_0$0 == 0x00ca
                           0000CA   499 _RCMP2L	=	0x00ca
                           0000CB   500 G$RCMP2H$0_0$0 == 0x00cb
                           0000CB   501 _RCMP2H	=	0x00cb
                           0000CC   502 G$TL2$0_0$0 == 0x00cc
                           0000CC   503 _TL2	=	0x00cc
                           0000CD   504 G$TH2$0_0$0 == 0x00cd
                           0000CD   505 _TH2	=	0x00cd
                           0000CE   506 G$ADCMPL$0_0$0 == 0x00ce
                           0000CE   507 _ADCMPL	=	0x00ce
                           0000CF   508 G$ADCMPH$0_0$0 == 0x00cf
                           0000CF   509 _ADCMPH	=	0x00cf
                           0000D0   510 G$PSW$0_0$0 == 0x00d0
                           0000D0   511 _PSW	=	0x00d0
                           0000D1   512 G$PWM0PH$0_0$0 == 0x00d1
                           0000D1   513 _PWM0PH	=	0x00d1
                           0000D2   514 G$PWM0C0H$0_0$0 == 0x00d2
                           0000D2   515 _PWM0C0H	=	0x00d2
                           0000D3   516 G$PWM0C1H$0_0$0 == 0x00d3
                           0000D3   517 _PWM0C1H	=	0x00d3
                           0000D4   518 G$PWM0C2H$0_0$0 == 0x00d4
                           0000D4   519 _PWM0C2H	=	0x00d4
                           0000D5   520 G$PWM0C3H$0_0$0 == 0x00d5
                           0000D5   521 _PWM0C3H	=	0x00d5
                           0000D6   522 G$PNP$0_0$0 == 0x00d6
                           0000D6   523 _PNP	=	0x00d6
                           0000D7   524 G$PWM0FBD$0_0$0 == 0x00d7
                           0000D7   525 _PWM0FBD	=	0x00d7
                           0000D8   526 G$PWM0CON0$0_0$0 == 0x00d8
                           0000D8   527 _PWM0CON0	=	0x00d8
                           0000D9   528 G$PWM0PL$0_0$0 == 0x00d9
                           0000D9   529 _PWM0PL	=	0x00d9
                           0000DA   530 G$PWM0C0L$0_0$0 == 0x00da
                           0000DA   531 _PWM0C0L	=	0x00da
                           0000DB   532 G$PWM0C1L$0_0$0 == 0x00db
                           0000DB   533 _PWM0C1L	=	0x00db
                           0000DC   534 G$PWM0C2L$0_0$0 == 0x00dc
                           0000DC   535 _PWM0C2L	=	0x00dc
                           0000DD   536 G$PWM0C3L$0_0$0 == 0x00dd
                           0000DD   537 _PWM0C3L	=	0x00dd
                           0000DE   538 G$PIOCON0$0_0$0 == 0x00de
                           0000DE   539 _PIOCON0	=	0x00de
                           0000DF   540 G$PWM0CON1$0_0$0 == 0x00df
                           0000DF   541 _PWM0CON1	=	0x00df
                           0000E0   542 G$ACC$0_0$0 == 0x00e0
                           0000E0   543 _ACC	=	0x00e0
                           0000E1   544 G$ADCCON1$0_0$0 == 0x00e1
                           0000E1   545 _ADCCON1	=	0x00e1
                           0000E2   546 G$ADCCON2$0_0$0 == 0x00e2
                           0000E2   547 _ADCCON2	=	0x00e2
                           0000E3   548 G$ADCDLY$0_0$0 == 0x00e3
                           0000E3   549 _ADCDLY	=	0x00e3
                           0000E4   550 G$C0L$0_0$0 == 0x00e4
                           0000E4   551 _C0L	=	0x00e4
                           0000E5   552 G$C0H$0_0$0 == 0x00e5
                           0000E5   553 _C0H	=	0x00e5
                           0000E6   554 G$C1L$0_0$0 == 0x00e6
                           0000E6   555 _C1L	=	0x00e6
                           0000E7   556 G$C1H$0_0$0 == 0x00e7
                           0000E7   557 _C1H	=	0x00e7
                           0000E8   558 G$ADCCON0$0_0$0 == 0x00e8
                           0000E8   559 _ADCCON0	=	0x00e8
                           0000E9   560 G$PICON$0_0$0 == 0x00e9
                           0000E9   561 _PICON	=	0x00e9
                           0000EA   562 G$PINEN$0_0$0 == 0x00ea
                           0000EA   563 _PINEN	=	0x00ea
                           0000EB   564 G$PIPEN$0_0$0 == 0x00eb
                           0000EB   565 _PIPEN	=	0x00eb
                           0000EC   566 G$PIF$0_0$0 == 0x00ec
                           0000EC   567 _PIF	=	0x00ec
                           0000ED   568 G$C2L$0_0$0 == 0x00ed
                           0000ED   569 _C2L	=	0x00ed
                           0000EE   570 G$C2H$0_0$0 == 0x00ee
                           0000EE   571 _C2H	=	0x00ee
                           0000EF   572 G$EIP$0_0$0 == 0x00ef
                           0000EF   573 _EIP	=	0x00ef
                           0000F0   574 G$B$0_0$0 == 0x00f0
                           0000F0   575 _B	=	0x00f0
                           0000F1   576 G$CAPCON3$0_0$0 == 0x00f1
                           0000F1   577 _CAPCON3	=	0x00f1
                           0000F2   578 G$CAPCON4$0_0$0 == 0x00f2
                           0000F2   579 _CAPCON4	=	0x00f2
                           0000F3   580 G$SPCR$0_0$0 == 0x00f3
                           0000F3   581 _SPCR	=	0x00f3
                           0000F4   582 G$SPSR$0_0$0 == 0x00f4
                           0000F4   583 _SPSR	=	0x00f4
                           0000F5   584 G$SPDR$0_0$0 == 0x00f5
                           0000F5   585 _SPDR	=	0x00f5
                           0000F6   586 G$AINDIDS0$0_0$0 == 0x00f6
                           0000F6   587 _AINDIDS0	=	0x00f6
                           0000F7   588 G$EIPH$0_0$0 == 0x00f7
                           0000F7   589 _EIPH	=	0x00f7
                           0000F8   590 G$SCON_1$0_0$0 == 0x00f8
                           0000F8   591 _SCON_1	=	0x00f8
                           0000F9   592 G$PWM0DTEN$0_0$0 == 0x00f9
                           0000F9   593 _PWM0DTEN	=	0x00f9
                           0000FA   594 G$PWM0DTCNT$0_0$0 == 0x00fa
                           0000FA   595 _PWM0DTCNT	=	0x00fa
                           0000FB   596 G$PWM0MEN$0_0$0 == 0x00fb
                           0000FB   597 _PWM0MEN	=	0x00fb
                           0000FC   598 G$PWM0MD$0_0$0 == 0x00fc
                           0000FC   599 _PWM0MD	=	0x00fc
                           0000FD   600 G$PORDIS$0_0$0 == 0x00fd
                           0000FD   601 _PORDIS	=	0x00fd
                           0000FE   602 G$EIP1$0_0$0 == 0x00fe
                           0000FE   603 _EIP1	=	0x00fe
                           0000FF   604 G$EIPH1$0_0$0 == 0x00ff
                           0000FF   605 _EIPH1	=	0x00ff
                           0000AC   606 G$P3S$0_0$0 == 0x00ac
                           0000AC   607 _P3S	=	0x00ac
                           0000AD   608 G$P3SR$0_0$0 == 0x00ad
                           0000AD   609 _P3SR	=	0x00ad
                           0000B1   610 G$P0S$0_0$0 == 0x00b1
                           0000B1   611 _P0S	=	0x00b1
                           0000B2   612 G$P0SR$0_0$0 == 0x00b2
                           0000B2   613 _P0SR	=	0x00b2
                           0000B3   614 G$P1S$0_0$0 == 0x00b3
                           0000B3   615 _P1S	=	0x00b3
                           0000B4   616 G$P1SR$0_0$0 == 0x00b4
                           0000B4   617 _P1SR	=	0x00b4
                           0000B7   618 G$PWM0INTC$0_0$0 == 0x00b7
                           0000B7   619 _PWM0INTC	=	0x00b7
                           0000C4   620 G$PWM0C4H$0_0$0 == 0x00c4
                           0000C4   621 _PWM0C4H	=	0x00c4
                           0000C5   622 G$PWM0C5H$0_0$0 == 0x00c5
                           0000C5   623 _PWM0C5H	=	0x00c5
                           0000C6   624 G$PIOCON1$0_0$0 == 0x00c6
                           0000C6   625 _PIOCON1	=	0x00c6
                           0000CC   626 G$PWM0C4L$0_0$0 == 0x00cc
                           0000CC   627 _PWM0C4L	=	0x00cc
                           0000CD   628 G$PWM0C5L$0_0$0 == 0x00cd
                           0000CD   629 _PWM0C5L	=	0x00cd
                           0000F3   630 G$SPCR2$0_0$0 == 0x00f3
                           0000F3   631 _SPCR2	=	0x00f3
                           0000FF   632 G$LVRDIS$0_0$0 == 0x00ff
                           0000FF   633 _LVRDIS	=	0x00ff
                           000084   634 G$ADCBAL$0_0$0 == 0x0084
                           000084   635 _ADCBAL	=	0x0084
                           000085   636 G$ADCBAH$0_0$0 == 0x0085
                           000085   637 _ADCBAH	=	0x0085
                           000086   638 G$ADCCON3$0_0$0 == 0x0086
                           000086   639 _ADCCON3	=	0x0086
                           000089   640 G$P2M1$0_0$0 == 0x0089
                           000089   641 _P2M1	=	0x0089
                           00008A   642 G$P2M2$0_0$0 == 0x008a
                           00008A   643 _P2M2	=	0x008a
                           00008B   644 G$P2SR$0_0$0 == 0x008b
                           00008B   645 _P2SR	=	0x008b
                           00008C   646 G$P2S$0_0$0 == 0x008c
                           00008C   647 _P2S	=	0x008c
                           00008D   648 G$ADCSN$0_0$0 == 0x008d
                           00008D   649 _ADCSN	=	0x008d
                           00008E   650 G$ADCCN$0_0$0 == 0x008e
                           00008E   651 _ADCCN	=	0x008e
                           00008F   652 G$ADCSR$0_0$0 == 0x008f
                           00008F   653 _ADCSR	=	0x008f
                           000092   654 G$P0UP$0_0$0 == 0x0092
                           000092   655 _P0UP	=	0x0092
                           000093   656 G$P1UP$0_0$0 == 0x0093
                           000093   657 _P1UP	=	0x0093
                           000094   658 G$P2UP$0_0$0 == 0x0094
                           000094   659 _P2UP	=	0x0094
                           000095   660 G$P3UP$0_0$0 == 0x0095
                           000095   661 _P3UP	=	0x0095
                           000097   662 G$RWKH$0_0$0 == 0x0097
                           000097   663 _RWKH	=	0x0097
                           000099   664 G$AINDIDS1$0_0$0 == 0x0099
                           000099   665 _AINDIDS1	=	0x0099
                           00009A   666 G$P0DW$0_0$0 == 0x009a
                           00009A   667 _P0DW	=	0x009a
                           00009B   668 G$P1DW$0_0$0 == 0x009b
                           00009B   669 _P1DW	=	0x009b
                           00009C   670 G$P2DW$0_0$0 == 0x009c
                           00009C   671 _P2DW	=	0x009c
                           00009D   672 G$P3DW$0_0$0 == 0x009d
                           00009D   673 _P3DW	=	0x009d
                           0000A1   674 G$AUXR2$0_0$0 == 0x00a1
                           0000A1   675 _AUXR2	=	0x00a1
                           0000A2   676 G$AUXR3$0_0$0 == 0x00a2
                           0000A2   677 _AUXR3	=	0x00a2
                           0000A3   678 G$AUXR4$0_0$0 == 0x00a3
                           0000A3   679 _AUXR4	=	0x00a3
                           0000A4   680 G$AUXR5$0_0$0 == 0x00a4
                           0000A4   681 _AUXR5	=	0x00a4
                           0000A5   682 G$AUXR6$0_0$0 == 0x00a5
                           0000A5   683 _AUXR6	=	0x00a5
                           0000A6   684 G$AUXR7$0_0$0 == 0x00a6
                           0000A6   685 _AUXR7	=	0x00a6
                           0000A7   686 G$AUXR8$0_0$0 == 0x00a7
                           0000A7   687 _AUXR8	=	0x00a7
                           0000A9   688 G$PWM1PH$0_0$0 == 0x00a9
                           0000A9   689 _PWM1PH	=	0x00a9
                           0000AA   690 G$PWM1C0H$0_0$0 == 0x00aa
                           0000AA   691 _PWM1C0H	=	0x00aa
                           0000AB   692 G$PWM1C1H$0_0$0 == 0x00ab
                           0000AB   693 _PWM1C1H	=	0x00ab
                           0000AC   694 G$PWM1MD$0_0$0 == 0x00ac
                           0000AC   695 _PWM1MD	=	0x00ac
                           0000AD   696 G$PWM1MEN$0_0$0 == 0x00ad
                           0000AD   697 _PWM1MEN	=	0x00ad
                           0000B1   698 G$PWM1PL$0_0$0 == 0x00b1
                           0000B1   699 _PWM1PL	=	0x00b1
                           0000B2   700 G$PWM1C0L$0_0$0 == 0x00b2
                           0000B2   701 _PWM1C0L	=	0x00b2
                           0000B3   702 G$PWM1C1L$0_0$0 == 0x00b3
                           0000B3   703 _PWM1C1L	=	0x00b3
                           0000B4   704 G$PWM1CON0$0_0$0 == 0x00b4
                           0000B4   705 _PWM1CON0	=	0x00b4
                           0000B5   706 G$PWM1CON1$0_0$0 == 0x00b5
                           0000B5   707 _PWM1CON1	=	0x00b5
                           0000B6   708 G$PWM1INTC$0_0$0 == 0x00b6
                           0000B6   709 _PWM1INTC	=	0x00b6
                           0000B7   710 G$PIOCON2$0_0$0 == 0x00b7
                           0000B7   711 _PIOCON2	=	0x00b7
                           0000B9   712 G$PWM2PH$0_0$0 == 0x00b9
                           0000B9   713 _PWM2PH	=	0x00b9
                           0000BA   714 G$PWM2C0H$0_0$0 == 0x00ba
                           0000BA   715 _PWM2C0H	=	0x00ba
                           0000BB   716 G$PWM2C1H$0_0$0 == 0x00bb
                           0000BB   717 _PWM2C1H	=	0x00bb
                           0000BC   718 G$PWM2MD$0_0$0 == 0x00bc
                           0000BC   719 _PWM2MD	=	0x00bc
                           0000BD   720 G$PWM2MEN$0_0$0 == 0x00bd
                           0000BD   721 _PWM2MEN	=	0x00bd
                           0000C1   722 G$PWM2PL$0_0$0 == 0x00c1
                           0000C1   723 _PWM2PL	=	0x00c1
                           0000C2   724 G$PWM2C0L$0_0$0 == 0x00c2
                           0000C2   725 _PWM2C0L	=	0x00c2
                           0000C3   726 G$PWM2C1L$0_0$0 == 0x00c3
                           0000C3   727 _PWM2C1L	=	0x00c3
                           0000C4   728 G$PWM2CON0$0_0$0 == 0x00c4
                           0000C4   729 _PWM2CON0	=	0x00c4
                           0000C5   730 G$PWM2CON1$0_0$0 == 0x00c5
                           0000C5   731 _PWM2CON1	=	0x00c5
                           0000C6   732 G$PWM2INTC$0_0$0 == 0x00c6
                           0000C6   733 _PWM2INTC	=	0x00c6
                           0000C9   734 G$PWM3PH$0_0$0 == 0x00c9
                           0000C9   735 _PWM3PH	=	0x00c9
                           0000CA   736 G$PWM3C0H$0_0$0 == 0x00ca
                           0000CA   737 _PWM3C0H	=	0x00ca
                           0000CB   738 G$PWM3C1H$0_0$0 == 0x00cb
                           0000CB   739 _PWM3C1H	=	0x00cb
                           0000CC   740 G$PWM3MD$0_0$0 == 0x00cc
                           0000CC   741 _PWM3MD	=	0x00cc
                           0000CD   742 G$PWM3MEN$0_0$0 == 0x00cd
                           0000CD   743 _PWM3MEN	=	0x00cd
                           0000CE   744 G$EIP2$0_0$0 == 0x00ce
                           0000CE   745 _EIP2	=	0x00ce
                           0000CF   746 G$EIPH2$0_0$0 == 0x00cf
                           0000CF   747 _EIPH2	=	0x00cf
                           0000D1   748 G$PWM3PL$0_0$0 == 0x00d1
                           0000D1   749 _PWM3PL	=	0x00d1
                           0000D2   750 G$PWM3C0L$0_0$0 == 0x00d2
                           0000D2   751 _PWM3C0L	=	0x00d2
                           0000D3   752 G$PWM3C1L$0_0$0 == 0x00d3
                           0000D3   753 _PWM3C1L	=	0x00d3
                           0000D4   754 G$PWM3CON0$0_0$0 == 0x00d4
                           0000D4   755 _PWM3CON0	=	0x00d4
                           0000D5   756 G$PWM3CON1$0_0$0 == 0x00d5
                           0000D5   757 _PWM3CON1	=	0x00d5
                           0000D6   758 G$PWM3INTC$0_0$0 == 0x00d6
                           0000D6   759 _PWM3INTC	=	0x00d6
                           0000D7   760 G$XTLCON$0_0$0 == 0x00d7
                           0000D7   761 _XTLCON	=	0x00d7
                           0000D9   762 G$SC0DR$0_0$0 == 0x00d9
                           0000D9   763 _SC0DR	=	0x00d9
                           0000DA   764 G$SC0EGT$0_0$0 == 0x00da
                           0000DA   765 _SC0EGT	=	0x00da
                           0000DB   766 G$SC0ETURD0$0_0$0 == 0x00db
                           0000DB   767 _SC0ETURD0	=	0x00db
                           0000DC   768 G$SC0ETURD1$0_0$0 == 0x00dc
                           0000DC   769 _SC0ETURD1	=	0x00dc
                           0000DD   770 G$SC0IE$0_0$0 == 0x00dd
                           0000DD   771 _SC0IE	=	0x00dd
                           0000DE   772 G$SC0IS$0_0$0 == 0x00de
                           0000DE   773 _SC0IS	=	0x00de
                           0000DF   774 G$SC0TSR$0_0$0 == 0x00df
                           0000DF   775 _SC0TSR	=	0x00df
                           0000E1   776 G$SC1DR$0_0$0 == 0x00e1
                           0000E1   777 _SC1DR	=	0x00e1
                           0000E2   778 G$SC1EGT$0_0$0 == 0x00e2
                           0000E2   779 _SC1EGT	=	0x00e2
                           0000E3   780 G$SC1ETURD0$0_0$0 == 0x00e3
                           0000E3   781 _SC1ETURD0	=	0x00e3
                           0000E4   782 G$SC1ETURD1$0_0$0 == 0x00e4
                           0000E4   783 _SC1ETURD1	=	0x00e4
                           0000E5   784 G$SC1IE$0_0$0 == 0x00e5
                           0000E5   785 _SC1IE	=	0x00e5
                           0000E6   786 G$SC1IS$0_0$0 == 0x00e6
                           0000E6   787 _SC1IS	=	0x00e6
                           0000E7   788 G$SC1TSR$0_0$0 == 0x00e7
                           0000E7   789 _SC1TSR	=	0x00e7
                           0000E9   790 G$SC2DR$0_0$0 == 0x00e9
                           0000E9   791 _SC2DR	=	0x00e9
                           0000EA   792 G$SC2EGT$0_0$0 == 0x00ea
                           0000EA   793 _SC2EGT	=	0x00ea
                           0000EB   794 G$SC2ETURD0$0_0$0 == 0x00eb
                           0000EB   795 _SC2ETURD0	=	0x00eb
                           0000EC   796 G$SC2ETURD1$0_0$0 == 0x00ec
                           0000EC   797 _SC2ETURD1	=	0x00ec
                           0000ED   798 G$SC2IE$0_0$0 == 0x00ed
                           0000ED   799 _SC2IE	=	0x00ed
                           0000EE   800 G$SC2IS$0_0$0 == 0x00ee
                           0000EE   801 _SC2IS	=	0x00ee
                           0000EF   802 G$SC2TSR$0_0$0 == 0x00ef
                           0000EF   803 _SC2TSR	=	0x00ef
                           0000F1   804 G$SC0CR0$0_0$0 == 0x00f1
                           0000F1   805 _SC0CR0	=	0x00f1
                           0000F2   806 G$SC0CR1$0_0$0 == 0x00f2
                           0000F2   807 _SC0CR1	=	0x00f2
                           0000F3   808 G$SC1CR0$0_0$0 == 0x00f3
                           0000F3   809 _SC1CR0	=	0x00f3
                           0000F4   810 G$SC1CR1$0_0$0 == 0x00f4
                           0000F4   811 _SC1CR1	=	0x00f4
                           0000F5   812 G$SC2CR0$0_0$0 == 0x00f5
                           0000F5   813 _SC2CR0	=	0x00f5
                           0000F6   814 G$SC2CR1$0_0$0 == 0x00f6
                           0000F6   815 _SC2CR1	=	0x00f6
                           0000F7   816 G$PIPS7$0_0$0 == 0x00f7
                           0000F7   817 _PIPS7	=	0x00f7
                           0000F9   818 G$PIPS0$0_0$0 == 0x00f9
                           0000F9   819 _PIPS0	=	0x00f9
                           0000FA   820 G$PIPS1$0_0$0 == 0x00fa
                           0000FA   821 _PIPS1	=	0x00fa
                           0000FB   822 G$PIPS2$0_0$0 == 0x00fb
                           0000FB   823 _PIPS2	=	0x00fb
                           0000FC   824 G$PIPS3$0_0$0 == 0x00fc
                           0000FC   825 _PIPS3	=	0x00fc
                           0000FD   826 G$PIPS4$0_0$0 == 0x00fd
                           0000FD   827 _PIPS4	=	0x00fd
                           0000FE   828 G$PIPS5$0_0$0 == 0x00fe
                           0000FE   829 _PIPS5	=	0x00fe
                           0000FF   830 G$PIPS6$0_0$0 == 0x00ff
                           0000FF   831 _PIPS6	=	0x00ff
                                    832 ;--------------------------------------------------------
                                    833 ; special function bits
                                    834 ;--------------------------------------------------------
                                    835 	.area RSEG    (ABS,DATA)
      000000                        836 	.org 0x0000
                           0000FF   837 G$SM0_1$0_0$0 == 0x00ff
                           0000FF   838 _SM0_1	=	0x00ff
                           0000FF   839 G$FE_1$0_0$0 == 0x00ff
                           0000FF   840 _FE_1	=	0x00ff
                           0000FE   841 G$SM1_1$0_0$0 == 0x00fe
                           0000FE   842 _SM1_1	=	0x00fe
                           0000FD   843 G$SM2_1$0_0$0 == 0x00fd
                           0000FD   844 _SM2_1	=	0x00fd
                           0000FC   845 G$REN_1$0_0$0 == 0x00fc
                           0000FC   846 _REN_1	=	0x00fc
                           0000FB   847 G$TB8_1$0_0$0 == 0x00fb
                           0000FB   848 _TB8_1	=	0x00fb
                           0000FA   849 G$RB8_1$0_0$0 == 0x00fa
                           0000FA   850 _RB8_1	=	0x00fa
                           0000F9   851 G$TI_1$0_0$0 == 0x00f9
                           0000F9   852 _TI_1	=	0x00f9
                           0000F8   853 G$RI_1$0_0$0 == 0x00f8
                           0000F8   854 _RI_1	=	0x00f8
                           0000EF   855 G$ADCF$0_0$0 == 0x00ef
                           0000EF   856 _ADCF	=	0x00ef
                           0000EE   857 G$ADCS$0_0$0 == 0x00ee
                           0000EE   858 _ADCS	=	0x00ee
                           0000ED   859 G$ETGSEL1$0_0$0 == 0x00ed
                           0000ED   860 _ETGSEL1	=	0x00ed
                           0000EC   861 G$ETGSEL0$0_0$0 == 0x00ec
                           0000EC   862 _ETGSEL0	=	0x00ec
                           0000EB   863 G$ADCHS3$0_0$0 == 0x00eb
                           0000EB   864 _ADCHS3	=	0x00eb
                           0000EA   865 G$ADCHS2$0_0$0 == 0x00ea
                           0000EA   866 _ADCHS2	=	0x00ea
                           0000E9   867 G$ADCHS1$0_0$0 == 0x00e9
                           0000E9   868 _ADCHS1	=	0x00e9
                           0000E8   869 G$ADCHS0$0_0$0 == 0x00e8
                           0000E8   870 _ADCHS0	=	0x00e8
                           0000DF   871 G$PWMRUN$0_0$0 == 0x00df
                           0000DF   872 _PWMRUN	=	0x00df
                           0000DE   873 G$LOAD$0_0$0 == 0x00de
                           0000DE   874 _LOAD	=	0x00de
                           0000DD   875 G$PWMF$0_0$0 == 0x00dd
                           0000DD   876 _PWMF	=	0x00dd
                           0000DC   877 G$CLRPWM$0_0$0 == 0x00dc
                           0000DC   878 _CLRPWM	=	0x00dc
                           0000D7   879 G$CY$0_0$0 == 0x00d7
                           0000D7   880 _CY	=	0x00d7
                           0000D6   881 G$AC$0_0$0 == 0x00d6
                           0000D6   882 _AC	=	0x00d6
                           0000D5   883 G$F0$0_0$0 == 0x00d5
                           0000D5   884 _F0	=	0x00d5
                           0000D4   885 G$RS1$0_0$0 == 0x00d4
                           0000D4   886 _RS1	=	0x00d4
                           0000D3   887 G$RS0$0_0$0 == 0x00d3
                           0000D3   888 _RS0	=	0x00d3
                           0000D2   889 G$OV$0_0$0 == 0x00d2
                           0000D2   890 _OV	=	0x00d2
                           0000D0   891 G$P$0_0$0 == 0x00d0
                           0000D0   892 _P	=	0x00d0
                           0000CF   893 G$TF2$0_0$0 == 0x00cf
                           0000CF   894 _TF2	=	0x00cf
                           0000CA   895 G$TR2$0_0$0 == 0x00ca
                           0000CA   896 _TR2	=	0x00ca
                           0000C8   897 G$CM_RL2$0_0$0 == 0x00c8
                           0000C8   898 _CM_RL2	=	0x00c8
                           0000C6   899 G$I2CEN$0_0$0 == 0x00c6
                           0000C6   900 _I2CEN	=	0x00c6
                           0000C5   901 G$STA$0_0$0 == 0x00c5
                           0000C5   902 _STA	=	0x00c5
                           0000C4   903 G$STO$0_0$0 == 0x00c4
                           0000C4   904 _STO	=	0x00c4
                           0000C3   905 G$SI$0_0$0 == 0x00c3
                           0000C3   906 _SI	=	0x00c3
                           0000C2   907 G$AA$0_0$0 == 0x00c2
                           0000C2   908 _AA	=	0x00c2
                           0000C0   909 G$I2CPX$0_0$0 == 0x00c0
                           0000C0   910 _I2CPX	=	0x00c0
                           0000BE   911 G$PADC$0_0$0 == 0x00be
                           0000BE   912 _PADC	=	0x00be
                           0000BD   913 G$PBOD$0_0$0 == 0x00bd
                           0000BD   914 _PBOD	=	0x00bd
                           0000BC   915 G$PS$0_0$0 == 0x00bc
                           0000BC   916 _PS	=	0x00bc
                           0000BB   917 G$PT1$0_0$0 == 0x00bb
                           0000BB   918 _PT1	=	0x00bb
                           0000BA   919 G$PX1$0_0$0 == 0x00ba
                           0000BA   920 _PX1	=	0x00ba
                           0000B9   921 G$PT0$0_0$0 == 0x00b9
                           0000B9   922 _PT0	=	0x00b9
                           0000B8   923 G$PX0$0_0$0 == 0x00b8
                           0000B8   924 _PX0	=	0x00b8
                           0000B7   925 G$P37$0_0$0 == 0x00b7
                           0000B7   926 _P37	=	0x00b7
                           0000B6   927 G$P36$0_0$0 == 0x00b6
                           0000B6   928 _P36	=	0x00b6
                           0000B5   929 G$P35$0_0$0 == 0x00b5
                           0000B5   930 _P35	=	0x00b5
                           0000B4   931 G$P34$0_0$0 == 0x00b4
                           0000B4   932 _P34	=	0x00b4
                           0000B3   933 G$P33$0_0$0 == 0x00b3
                           0000B3   934 _P33	=	0x00b3
                           0000B2   935 G$P32$0_0$0 == 0x00b2
                           0000B2   936 _P32	=	0x00b2
                           0000B1   937 G$P31$0_0$0 == 0x00b1
                           0000B1   938 _P31	=	0x00b1
                           0000B0   939 G$P30$0_0$0 == 0x00b0
                           0000B0   940 _P30	=	0x00b0
                           0000AF   941 G$EA$0_0$0 == 0x00af
                           0000AF   942 _EA	=	0x00af
                           0000AE   943 G$EADC$0_0$0 == 0x00ae
                           0000AE   944 _EADC	=	0x00ae
                           0000AD   945 G$EBOD$0_0$0 == 0x00ad
                           0000AD   946 _EBOD	=	0x00ad
                           0000AC   947 G$ES$0_0$0 == 0x00ac
                           0000AC   948 _ES	=	0x00ac
                           0000AB   949 G$ET1$0_0$0 == 0x00ab
                           0000AB   950 _ET1	=	0x00ab
                           0000AA   951 G$EX1$0_0$0 == 0x00aa
                           0000AA   952 _EX1	=	0x00aa
                           0000A9   953 G$ET0$0_0$0 == 0x00a9
                           0000A9   954 _ET0	=	0x00a9
                           0000A8   955 G$EX0$0_0$0 == 0x00a8
                           0000A8   956 _EX0	=	0x00a8
                           0000A0   957 G$P20$0_0$0 == 0x00a0
                           0000A0   958 _P20	=	0x00a0
                           00009F   959 G$SM0$0_0$0 == 0x009f
                           00009F   960 _SM0	=	0x009f
                           00009F   961 G$FE$0_0$0 == 0x009f
                           00009F   962 _FE	=	0x009f
                           00009E   963 G$SM1$0_0$0 == 0x009e
                           00009E   964 _SM1	=	0x009e
                           00009D   965 G$SM2$0_0$0 == 0x009d
                           00009D   966 _SM2	=	0x009d
                           00009C   967 G$REN$0_0$0 == 0x009c
                           00009C   968 _REN	=	0x009c
                           00009B   969 G$TB8$0_0$0 == 0x009b
                           00009B   970 _TB8	=	0x009b
                           00009A   971 G$RB8$0_0$0 == 0x009a
                           00009A   972 _RB8	=	0x009a
                           000099   973 G$TI$0_0$0 == 0x0099
                           000099   974 _TI	=	0x0099
                           000098   975 G$RI$0_0$0 == 0x0098
                           000098   976 _RI	=	0x0098
                           000097   977 G$P17$0_0$0 == 0x0097
                           000097   978 _P17	=	0x0097
                           000096   979 G$P16$0_0$0 == 0x0096
                           000096   980 _P16	=	0x0096
                           000096   981 G$TXD_1$0_0$0 == 0x0096
                           000096   982 _TXD_1	=	0x0096
                           000095   983 G$P15$0_0$0 == 0x0095
                           000095   984 _P15	=	0x0095
                           000094   985 G$P14$0_0$0 == 0x0094
                           000094   986 _P14	=	0x0094
                           000094   987 G$SDA$0_0$0 == 0x0094
                           000094   988 _SDA	=	0x0094
                           000093   989 G$P13$0_0$0 == 0x0093
                           000093   990 _P13	=	0x0093
                           000093   991 G$SCL$0_0$0 == 0x0093
                           000093   992 _SCL	=	0x0093
                           000092   993 G$P12$0_0$0 == 0x0092
                           000092   994 _P12	=	0x0092
                           000091   995 G$P11$0_0$0 == 0x0091
                           000091   996 _P11	=	0x0091
                           000090   997 G$P10$0_0$0 == 0x0090
                           000090   998 _P10	=	0x0090
                           00008F   999 G$TF1$0_0$0 == 0x008f
                           00008F  1000 _TF1	=	0x008f
                           00008E  1001 G$TR1$0_0$0 == 0x008e
                           00008E  1002 _TR1	=	0x008e
                           00008D  1003 G$TF0$0_0$0 == 0x008d
                           00008D  1004 _TF0	=	0x008d
                           00008C  1005 G$TR0$0_0$0 == 0x008c
                           00008C  1006 _TR0	=	0x008c
                           00008B  1007 G$IE1$0_0$0 == 0x008b
                           00008B  1008 _IE1	=	0x008b
                           00008A  1009 G$IT1$0_0$0 == 0x008a
                           00008A  1010 _IT1	=	0x008a
                           000089  1011 G$IE0$0_0$0 == 0x0089
                           000089  1012 _IE0	=	0x0089
                           000088  1013 G$IT0$0_0$0 == 0x0088
                           000088  1014 _IT0	=	0x0088
                           000087  1015 G$P07$0_0$0 == 0x0087
                           000087  1016 _P07	=	0x0087
                           000087  1017 G$RXD$0_0$0 == 0x0087
                           000087  1018 _RXD	=	0x0087
                           000086  1019 G$P06$0_0$0 == 0x0086
                           000086  1020 _P06	=	0x0086
                           000086  1021 G$TXD$0_0$0 == 0x0086
                           000086  1022 _TXD	=	0x0086
                           000085  1023 G$P05$0_0$0 == 0x0085
                           000085  1024 _P05	=	0x0085
                           000084  1025 G$P04$0_0$0 == 0x0084
                           000084  1026 _P04	=	0x0084
                           000084  1027 G$STADC$0_0$0 == 0x0084
                           000084  1028 _STADC	=	0x0084
                           000083  1029 G$P03$0_0$0 == 0x0083
                           000083  1030 _P03	=	0x0083
                           000082  1031 G$P02$0_0$0 == 0x0082
                           000082  1032 _P02	=	0x0082
                           000082  1033 G$RXD_1$0_0$0 == 0x0082
                           000082  1034 _RXD_1	=	0x0082
                           000081  1035 G$P01$0_0$0 == 0x0081
                           000081  1036 _P01	=	0x0081
                           000081  1037 G$MISO$0_0$0 == 0x0081
                           000081  1038 _MISO	=	0x0081
                           000080  1039 G$P00$0_0$0 == 0x0080
                           000080  1040 _P00	=	0x0080
                           000080  1041 G$MOSI$0_0$0 == 0x0080
                           000080  1042 _MOSI	=	0x0080
                                   1043 ;--------------------------------------------------------
                                   1044 ; overlayable register banks
                                   1045 ;--------------------------------------------------------
                                   1046 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1047 	.ds 8
                                   1048 ;--------------------------------------------------------
                                   1049 ; internal ram data
                                   1050 ;--------------------------------------------------------
                                   1051 	.area DSEG    (DATA)
                                   1052 ;--------------------------------------------------------
                                   1053 ; overlayable items in internal ram 
                                   1054 ;--------------------------------------------------------
                                   1055 ;--------------------------------------------------------
                                   1056 ; Stack segment in internal ram 
                                   1057 ;--------------------------------------------------------
                                   1058 	.area	SSEG
      000028                       1059 __start__stack:
      000028                       1060 	.ds	1
                                   1061 
                                   1062 ;--------------------------------------------------------
                                   1063 ; indirectly addressable internal ram data
                                   1064 ;--------------------------------------------------------
                                   1065 	.area ISEG    (DATA)
                                   1066 ;--------------------------------------------------------
                                   1067 ; absolute internal ram data
                                   1068 ;--------------------------------------------------------
                                   1069 	.area IABS    (ABS,DATA)
                                   1070 	.area IABS    (ABS,DATA)
                                   1071 ;--------------------------------------------------------
                                   1072 ; bit data
                                   1073 ;--------------------------------------------------------
                                   1074 	.area BSEG    (BIT)
                                   1075 ;--------------------------------------------------------
                                   1076 ; paged external ram data
                                   1077 ;--------------------------------------------------------
                                   1078 	.area PSEG    (PAG,XDATA)
                                   1079 ;--------------------------------------------------------
                                   1080 ; external ram data
                                   1081 ;--------------------------------------------------------
                                   1082 	.area XSEG    (XDATA)
                                   1083 ;--------------------------------------------------------
                                   1084 ; absolute external ram data
                                   1085 ;--------------------------------------------------------
                                   1086 	.area XABS    (ABS,XDATA)
                                   1087 ;--------------------------------------------------------
                                   1088 ; external initialized ram data
                                   1089 ;--------------------------------------------------------
                                   1090 	.area XISEG   (XDATA)
                                   1091 	.area HOME    (CODE)
                                   1092 	.area GSINIT0 (CODE)
                                   1093 	.area GSINIT1 (CODE)
                                   1094 	.area GSINIT2 (CODE)
                                   1095 	.area GSINIT3 (CODE)
                                   1096 	.area GSINIT4 (CODE)
                                   1097 	.area GSINIT5 (CODE)
                                   1098 	.area GSINIT  (CODE)
                                   1099 	.area GSFINAL (CODE)
                                   1100 	.area CSEG    (CODE)
                                   1101 ;--------------------------------------------------------
                                   1102 ; interrupt vector 
                                   1103 ;--------------------------------------------------------
                                   1104 	.area HOME    (CODE)
      000000                       1105 __interrupt_vect:
      000000 02 00 06         [24] 1106 	ljmp	__sdcc_gsinit_startup
                                   1107 ;--------------------------------------------------------
                                   1108 ; global & static initialisations
                                   1109 ;--------------------------------------------------------
                                   1110 	.area HOME    (CODE)
                                   1111 	.area GSINIT  (CODE)
                                   1112 	.area GSFINAL (CODE)
                                   1113 	.area GSINIT  (CODE)
                                   1114 	.globl __sdcc_gsinit_startup
                                   1115 	.globl __sdcc_program_startup
                                   1116 	.globl __start__stack
                                   1117 	.globl __mcs51_genXINIT
                                   1118 	.globl __mcs51_genXRAMCLEAR
                                   1119 	.globl __mcs51_genRAMCLEAR
                                   1120 	.area GSFINAL (CODE)
      00005F 02 00 03         [24] 1121 	ljmp	__sdcc_program_startup
                                   1122 ;--------------------------------------------------------
                                   1123 ; Home
                                   1124 ;--------------------------------------------------------
                                   1125 	.area HOME    (CODE)
                                   1126 	.area HOME    (CODE)
      000003                       1127 __sdcc_program_startup:
      000003 02 07 C7         [24] 1128 	ljmp	_main
                                   1129 ;	return from main will return to caller
                                   1130 ;--------------------------------------------------------
                                   1131 ; code
                                   1132 ;--------------------------------------------------------
                                   1133 	.area CSEG    (CODE)
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'main'
                                   1136 ;------------------------------------------------------------
                           000000  1137 	G$main$0$0 ==.
                           000000  1138 	C$GPIO.C$20$0_0$49 ==.
                                   1139 ;	..\GPIO.C:20: void main (void)
                                   1140 ;	-----------------------------------------
                                   1141 ;	 function main
                                   1142 ;	-----------------------------------------
      0007C7                       1143 _main:
                           000007  1144 	ar7 = 0x07
                           000006  1145 	ar6 = 0x06
                           000005  1146 	ar5 = 0x05
                           000004  1147 	ar4 = 0x04
                           000003  1148 	ar3 = 0x03
                           000002  1149 	ar2 = 0x02
                           000001  1150 	ar1 = 0x01
                           000000  1151 	ar0 = 0x00
                           000000  1152 	C$GPIO.C$22$1_0$49 ==.
                                   1153 ;	..\GPIO.C:22: ALL_GPIO_QUASI_MODE;
      0007C7 75 91 00         [24] 1154 	mov	_SFRS,#0x00
      0007CA 75 B1 00         [24] 1155 	mov	_P0M1,#0x00
      0007CD 75 B2 00         [24] 1156 	mov	_P0M2,#0x00
      0007D0 75 B3 00         [24] 1157 	mov	_P1M1,#0x00
      0007D3 75 B4 00         [24] 1158 	mov	_P1M2,#0x00
      0007D6 75 91 02         [24] 1159 	mov	_SFRS,#0x02
      0007D9 75 89 00         [24] 1160 	mov	_P2M1,#0x00
      0007DC 75 8A 00         [24] 1161 	mov	_P2M2,#0x00
      0007DF 75 91 00         [24] 1162 	mov	_SFRS,#0x00
      0007E2 75 AC 00         [24] 1163 	mov	_P3M1,#0x00
      0007E5 75 AD 00         [24] 1164 	mov	_P3M2,#0x00
                           000021  1165 	C$GPIO.C$23$1_0$49 ==.
                                   1166 ;	..\GPIO.C:23: while(1)
      0007E8                       1167 00102$:
                           000021  1168 	C$GPIO.C$25$2_0$50 ==.
                                   1169 ;	..\GPIO.C:25: P1 = 0xff;
      0007E8 75 90 FF         [24] 1170 	mov	_P1,#0xff
                           000024  1171 	C$GPIO.C$26$2_0$50 ==.
                                   1172 ;	..\GPIO.C:26: P2 = 0xFF;
      0007EB 75 A0 FF         [24] 1173 	mov	_P2,#0xff
                           000027  1174 	C$GPIO.C$27$2_0$50 ==.
                                   1175 ;	..\GPIO.C:27: P3 =0xFF;
      0007EE 75 B0 FF         [24] 1176 	mov	_P3,#0xff
                           00002A  1177 	C$GPIO.C$28$2_0$50 ==.
                                   1178 ;	..\GPIO.C:28: P0 =0xFF;
      0007F1 75 80 FF         [24] 1179 	mov	_P0,#0xff
                           00002D  1180 	C$GPIO.C$29$2_0$50 ==.
                                   1181 ;	..\GPIO.C:29: Timer0_Delay(16000000,100,1000);;
      0007F4 75 08 64         [24] 1182 	mov	_Timer0_Delay_PARM_2,#0x64
      0007F7 75 09 00         [24] 1183 	mov	(_Timer0_Delay_PARM_2 + 1),#0x00
      0007FA 75 0A E8         [24] 1184 	mov	_Timer0_Delay_PARM_3,#0xe8
      0007FD 75 0B 03         [24] 1185 	mov	(_Timer0_Delay_PARM_3 + 1),#0x03
      000800 90 24 00         [24] 1186 	mov	dptr,#0x2400
      000803 75 F0 F4         [24] 1187 	mov	b,#0xf4
      000806 E4               [12] 1188 	clr	a
      000807 12 00 62         [24] 1189 	lcall	_Timer0_Delay
                           000043  1190 	C$GPIO.C$30$2_0$50 ==.
                                   1191 ;	..\GPIO.C:30: P1 = 0x00;
      00080A 75 90 00         [24] 1192 	mov	_P1,#0x00
                           000046  1193 	C$GPIO.C$31$2_0$50 ==.
                                   1194 ;	..\GPIO.C:31: P2 = 0x00;
      00080D 75 A0 00         [24] 1195 	mov	_P2,#0x00
                           000049  1196 	C$GPIO.C$32$2_0$50 ==.
                                   1197 ;	..\GPIO.C:32: P3 =0x00;
      000810 75 B0 00         [24] 1198 	mov	_P3,#0x00
                           00004C  1199 	C$GPIO.C$33$2_0$50 ==.
                                   1200 ;	..\GPIO.C:33: P0 =0x00;
      000813 75 80 00         [24] 1201 	mov	_P0,#0x00
                           00004F  1202 	C$GPIO.C$34$2_0$50 ==.
                                   1203 ;	..\GPIO.C:34: Timer0_Delay(16000000,100,1000);;
      000816 75 08 64         [24] 1204 	mov	_Timer0_Delay_PARM_2,#0x64
      000819 75 09 00         [24] 1205 	mov	(_Timer0_Delay_PARM_2 + 1),#0x00
      00081C 75 0A E8         [24] 1206 	mov	_Timer0_Delay_PARM_3,#0xe8
      00081F 75 0B 03         [24] 1207 	mov	(_Timer0_Delay_PARM_3 + 1),#0x03
      000822 90 24 00         [24] 1208 	mov	dptr,#0x2400
      000825 75 F0 F4         [24] 1209 	mov	b,#0xf4
      000828 E4               [12] 1210 	clr	a
      000829 12 00 62         [24] 1211 	lcall	_Timer0_Delay
      00082C 80 BA            [24] 1212 	sjmp	00102$
                           000067  1213 	C$GPIO.C$36$1_0$49 ==.
                                   1214 ;	..\GPIO.C:36: }
                           000067  1215 	C$GPIO.C$36$1_0$49 ==.
                           000067  1216 	XG$main$0$0 ==.
      00082E 22               [24] 1217 	ret
                                   1218 	.area CSEG    (CODE)
                                   1219 	.area CONST   (CODE)
                                   1220 	.area XINIT   (CODE)
                                   1221 	.area CABS    (ABS,CODE)
