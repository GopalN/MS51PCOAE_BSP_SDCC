                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _TM1650_Send_Buff
                                     13 	.globl _TM1650_init
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
                                    354 	.globl _disp_buff
                                    355 	.globl _sevencodes
                                    356 ;--------------------------------------------------------
                                    357 ; special function registers
                                    358 ;--------------------------------------------------------
                                    359 	.area RSEG    (ABS,DATA)
      000000                        360 	.org 0x0000
                           000080   361 _P0	=	0x0080
                           000081   362 _SP	=	0x0081
                           000082   363 _DPL	=	0x0082
                           000083   364 _DPH	=	0x0083
                           000084   365 _RCTRIM0	=	0x0084
                           000085   366 _RCTRIM1	=	0x0085
                           000086   367 _RWKL	=	0x0086
                           000087   368 _PCON	=	0x0087
                           000088   369 _TCON	=	0x0088
                           000089   370 _TMOD	=	0x0089
                           00008A   371 _TL0	=	0x008a
                           00008B   372 _TL1	=	0x008b
                           00008C   373 _TH0	=	0x008c
                           00008D   374 _TH1	=	0x008d
                           00008E   375 _CKCON	=	0x008e
                           00008F   376 _WKCON	=	0x008f
                           000090   377 _P1	=	0x0090
                           000091   378 _SFRS	=	0x0091
                           000092   379 _CAPCON0	=	0x0092
                           000093   380 _CAPCON1	=	0x0093
                           000094   381 _CAPCON2	=	0x0094
                           000095   382 _CKDIV	=	0x0095
                           000096   383 _CKSWT	=	0x0096
                           000097   384 _CKEN	=	0x0097
                           000098   385 _SCON	=	0x0098
                           000099   386 _SBUF	=	0x0099
                           00009A   387 _SBUF_1	=	0x009a
                           00009B   388 _EIE	=	0x009b
                           00009C   389 _EIE1	=	0x009c
                           00009F   390 _CHPCON	=	0x009f
                           0000A0   391 _P2	=	0x00a0
                           0000A2   392 _AUXR1	=	0x00a2
                           0000A3   393 _BODCON0	=	0x00a3
                           0000A4   394 _IAPTRG	=	0x00a4
                           0000A5   395 _IAPUEN	=	0x00a5
                           0000A6   396 _IAPAL	=	0x00a6
                           0000A7   397 _IAPAH	=	0x00a7
                           0000A8   398 _IE	=	0x00a8
                           0000A9   399 _SADDR	=	0x00a9
                           0000AA   400 _WDCON	=	0x00aa
                           0000AB   401 _BODCON1	=	0x00ab
                           0000AC   402 _P3M1	=	0x00ac
                           0000AD   403 _P3M2	=	0x00ad
                           0000AE   404 _IAPFD	=	0x00ae
                           0000AF   405 _IAPCN	=	0x00af
                           0000B0   406 _P3	=	0x00b0
                           0000B1   407 _P0M1	=	0x00b1
                           0000B2   408 _P0M2	=	0x00b2
                           0000B3   409 _P1M1	=	0x00b3
                           0000B4   410 _P1M2	=	0x00b4
                           0000B5   411 _TOE	=	0x00b5
                           0000B7   412 _IPH	=	0x00b7
                           0000B8   413 _IP	=	0x00b8
                           0000B9   414 _SADEN	=	0x00b9
                           0000BA   415 _SADEN_1	=	0x00ba
                           0000BB   416 _SADDR_1	=	0x00bb
                           0000BC   417 _I2DAT	=	0x00bc
                           0000BD   418 _I2STAT	=	0x00bd
                           0000BE   419 _I2CLK	=	0x00be
                           0000BF   420 _I2TOC	=	0x00bf
                           0000C0   421 _I2CON	=	0x00c0
                           0000C1   422 _I2ADDR	=	0x00c1
                           0000C2   423 _ADCRL	=	0x00c2
                           0000C3   424 _ADCRH	=	0x00c3
                           0000C4   425 _T3CON	=	0x00c4
                           0000C5   426 _RL3	=	0x00c5
                           0000C6   427 _RH3	=	0x00c6
                           0000C7   428 _TA	=	0x00c7
                           0000C8   429 _T2CON	=	0x00c8
                           0000C9   430 _T2MOD	=	0x00c9
                           0000CA   431 _RCMP2L	=	0x00ca
                           0000CB   432 _RCMP2H	=	0x00cb
                           0000CC   433 _TL2	=	0x00cc
                           0000CD   434 _TH2	=	0x00cd
                           0000CE   435 _ADCMPL	=	0x00ce
                           0000CF   436 _ADCMPH	=	0x00cf
                           0000D0   437 _PSW	=	0x00d0
                           0000D1   438 _PWM0PH	=	0x00d1
                           0000D2   439 _PWM0C0H	=	0x00d2
                           0000D3   440 _PWM0C1H	=	0x00d3
                           0000D4   441 _PWM0C2H	=	0x00d4
                           0000D5   442 _PWM0C3H	=	0x00d5
                           0000D6   443 _PNP	=	0x00d6
                           0000D7   444 _PWM0FBD	=	0x00d7
                           0000D8   445 _PWM0CON0	=	0x00d8
                           0000D9   446 _PWM0PL	=	0x00d9
                           0000DA   447 _PWM0C0L	=	0x00da
                           0000DB   448 _PWM0C1L	=	0x00db
                           0000DC   449 _PWM0C2L	=	0x00dc
                           0000DD   450 _PWM0C3L	=	0x00dd
                           0000DE   451 _PIOCON0	=	0x00de
                           0000DF   452 _PWM0CON1	=	0x00df
                           0000E0   453 _ACC	=	0x00e0
                           0000E1   454 _ADCCON1	=	0x00e1
                           0000E2   455 _ADCCON2	=	0x00e2
                           0000E3   456 _ADCDLY	=	0x00e3
                           0000E4   457 _C0L	=	0x00e4
                           0000E5   458 _C0H	=	0x00e5
                           0000E6   459 _C1L	=	0x00e6
                           0000E7   460 _C1H	=	0x00e7
                           0000E8   461 _ADCCON0	=	0x00e8
                           0000E9   462 _PICON	=	0x00e9
                           0000EA   463 _PINEN	=	0x00ea
                           0000EB   464 _PIPEN	=	0x00eb
                           0000EC   465 _PIF	=	0x00ec
                           0000ED   466 _C2L	=	0x00ed
                           0000EE   467 _C2H	=	0x00ee
                           0000EF   468 _EIP	=	0x00ef
                           0000F0   469 _B	=	0x00f0
                           0000F1   470 _CAPCON3	=	0x00f1
                           0000F2   471 _CAPCON4	=	0x00f2
                           0000F3   472 _SPCR	=	0x00f3
                           0000F4   473 _SPSR	=	0x00f4
                           0000F5   474 _SPDR	=	0x00f5
                           0000F6   475 _AINDIDS0	=	0x00f6
                           0000F7   476 _EIPH	=	0x00f7
                           0000F8   477 _SCON_1	=	0x00f8
                           0000F9   478 _PWM0DTEN	=	0x00f9
                           0000FA   479 _PWM0DTCNT	=	0x00fa
                           0000FB   480 _PWM0MEN	=	0x00fb
                           0000FC   481 _PWM0MD	=	0x00fc
                           0000FD   482 _PORDIS	=	0x00fd
                           0000FE   483 _EIP1	=	0x00fe
                           0000FF   484 _EIPH1	=	0x00ff
                           0000AC   485 _P3S	=	0x00ac
                           0000AD   486 _P3SR	=	0x00ad
                           0000B1   487 _P0S	=	0x00b1
                           0000B2   488 _P0SR	=	0x00b2
                           0000B3   489 _P1S	=	0x00b3
                           0000B4   490 _P1SR	=	0x00b4
                           0000B7   491 _PWM0INTC	=	0x00b7
                           0000C4   492 _PWM0C4H	=	0x00c4
                           0000C5   493 _PWM0C5H	=	0x00c5
                           0000C6   494 _PIOCON1	=	0x00c6
                           0000CC   495 _PWM0C4L	=	0x00cc
                           0000CD   496 _PWM0C5L	=	0x00cd
                           0000F3   497 _SPCR2	=	0x00f3
                           0000FF   498 _LVRDIS	=	0x00ff
                           000084   499 _ADCBAL	=	0x0084
                           000085   500 _ADCBAH	=	0x0085
                           000086   501 _ADCCON3	=	0x0086
                           000089   502 _P2M1	=	0x0089
                           00008A   503 _P2M2	=	0x008a
                           00008B   504 _P2SR	=	0x008b
                           00008C   505 _P2S	=	0x008c
                           00008D   506 _ADCSN	=	0x008d
                           00008E   507 _ADCCN	=	0x008e
                           00008F   508 _ADCSR	=	0x008f
                           000092   509 _P0UP	=	0x0092
                           000093   510 _P1UP	=	0x0093
                           000094   511 _P2UP	=	0x0094
                           000095   512 _P3UP	=	0x0095
                           000097   513 _RWKH	=	0x0097
                           000099   514 _AINDIDS1	=	0x0099
                           00009A   515 _P0DW	=	0x009a
                           00009B   516 _P1DW	=	0x009b
                           00009C   517 _P2DW	=	0x009c
                           00009D   518 _P3DW	=	0x009d
                           0000A1   519 _AUXR2	=	0x00a1
                           0000A2   520 _AUXR3	=	0x00a2
                           0000A3   521 _AUXR4	=	0x00a3
                           0000A4   522 _AUXR5	=	0x00a4
                           0000A5   523 _AUXR6	=	0x00a5
                           0000A6   524 _AUXR7	=	0x00a6
                           0000A7   525 _AUXR8	=	0x00a7
                           0000A9   526 _PWM1PH	=	0x00a9
                           0000AA   527 _PWM1C0H	=	0x00aa
                           0000AB   528 _PWM1C1H	=	0x00ab
                           0000AC   529 _PWM1MD	=	0x00ac
                           0000AD   530 _PWM1MEN	=	0x00ad
                           0000B1   531 _PWM1PL	=	0x00b1
                           0000B2   532 _PWM1C0L	=	0x00b2
                           0000B3   533 _PWM1C1L	=	0x00b3
                           0000B4   534 _PWM1CON0	=	0x00b4
                           0000B5   535 _PWM1CON1	=	0x00b5
                           0000B6   536 _PWM1INTC	=	0x00b6
                           0000B7   537 _PIOCON2	=	0x00b7
                           0000B9   538 _PWM2PH	=	0x00b9
                           0000BA   539 _PWM2C0H	=	0x00ba
                           0000BB   540 _PWM2C1H	=	0x00bb
                           0000BC   541 _PWM2MD	=	0x00bc
                           0000BD   542 _PWM2MEN	=	0x00bd
                           0000C1   543 _PWM2PL	=	0x00c1
                           0000C2   544 _PWM2C0L	=	0x00c2
                           0000C3   545 _PWM2C1L	=	0x00c3
                           0000C4   546 _PWM2CON0	=	0x00c4
                           0000C5   547 _PWM2CON1	=	0x00c5
                           0000C6   548 _PWM2INTC	=	0x00c6
                           0000C9   549 _PWM3PH	=	0x00c9
                           0000CA   550 _PWM3C0H	=	0x00ca
                           0000CB   551 _PWM3C1H	=	0x00cb
                           0000CC   552 _PWM3MD	=	0x00cc
                           0000CD   553 _PWM3MEN	=	0x00cd
                           0000CE   554 _EIP2	=	0x00ce
                           0000CF   555 _EIPH2	=	0x00cf
                           0000D1   556 _PWM3PL	=	0x00d1
                           0000D2   557 _PWM3C0L	=	0x00d2
                           0000D3   558 _PWM3C1L	=	0x00d3
                           0000D4   559 _PWM3CON0	=	0x00d4
                           0000D5   560 _PWM3CON1	=	0x00d5
                           0000D6   561 _PWM3INTC	=	0x00d6
                           0000D7   562 _XTLCON	=	0x00d7
                           0000D9   563 _SC0DR	=	0x00d9
                           0000DA   564 _SC0EGT	=	0x00da
                           0000DB   565 _SC0ETURD0	=	0x00db
                           0000DC   566 _SC0ETURD1	=	0x00dc
                           0000DD   567 _SC0IE	=	0x00dd
                           0000DE   568 _SC0IS	=	0x00de
                           0000DF   569 _SC0TSR	=	0x00df
                           0000E1   570 _SC1DR	=	0x00e1
                           0000E2   571 _SC1EGT	=	0x00e2
                           0000E3   572 _SC1ETURD0	=	0x00e3
                           0000E4   573 _SC1ETURD1	=	0x00e4
                           0000E5   574 _SC1IE	=	0x00e5
                           0000E6   575 _SC1IS	=	0x00e6
                           0000E7   576 _SC1TSR	=	0x00e7
                           0000E9   577 _SC2DR	=	0x00e9
                           0000EA   578 _SC2EGT	=	0x00ea
                           0000EB   579 _SC2ETURD0	=	0x00eb
                           0000EC   580 _SC2ETURD1	=	0x00ec
                           0000ED   581 _SC2IE	=	0x00ed
                           0000EE   582 _SC2IS	=	0x00ee
                           0000EF   583 _SC2TSR	=	0x00ef
                           0000F1   584 _SC0CR0	=	0x00f1
                           0000F2   585 _SC0CR1	=	0x00f2
                           0000F3   586 _SC1CR0	=	0x00f3
                           0000F4   587 _SC1CR1	=	0x00f4
                           0000F5   588 _SC2CR0	=	0x00f5
                           0000F6   589 _SC2CR1	=	0x00f6
                           0000F7   590 _PIPS7	=	0x00f7
                           0000F9   591 _PIPS0	=	0x00f9
                           0000FA   592 _PIPS1	=	0x00fa
                           0000FB   593 _PIPS2	=	0x00fb
                           0000FC   594 _PIPS3	=	0x00fc
                           0000FD   595 _PIPS4	=	0x00fd
                           0000FE   596 _PIPS5	=	0x00fe
                           0000FF   597 _PIPS6	=	0x00ff
                                    598 ;--------------------------------------------------------
                                    599 ; special function bits
                                    600 ;--------------------------------------------------------
                                    601 	.area RSEG    (ABS,DATA)
      000000                        602 	.org 0x0000
                           0000FF   603 _SM0_1	=	0x00ff
                           0000FF   604 _FE_1	=	0x00ff
                           0000FE   605 _SM1_1	=	0x00fe
                           0000FD   606 _SM2_1	=	0x00fd
                           0000FC   607 _REN_1	=	0x00fc
                           0000FB   608 _TB8_1	=	0x00fb
                           0000FA   609 _RB8_1	=	0x00fa
                           0000F9   610 _TI_1	=	0x00f9
                           0000F8   611 _RI_1	=	0x00f8
                           0000EF   612 _ADCF	=	0x00ef
                           0000EE   613 _ADCS	=	0x00ee
                           0000ED   614 _ETGSEL1	=	0x00ed
                           0000EC   615 _ETGSEL0	=	0x00ec
                           0000EB   616 _ADCHS3	=	0x00eb
                           0000EA   617 _ADCHS2	=	0x00ea
                           0000E9   618 _ADCHS1	=	0x00e9
                           0000E8   619 _ADCHS0	=	0x00e8
                           0000DF   620 _PWMRUN	=	0x00df
                           0000DE   621 _LOAD	=	0x00de
                           0000DD   622 _PWMF	=	0x00dd
                           0000DC   623 _CLRPWM	=	0x00dc
                           0000D7   624 _CY	=	0x00d7
                           0000D6   625 _AC	=	0x00d6
                           0000D5   626 _F0	=	0x00d5
                           0000D4   627 _RS1	=	0x00d4
                           0000D3   628 _RS0	=	0x00d3
                           0000D2   629 _OV	=	0x00d2
                           0000D0   630 _P	=	0x00d0
                           0000CF   631 _TF2	=	0x00cf
                           0000CA   632 _TR2	=	0x00ca
                           0000C8   633 _CM_RL2	=	0x00c8
                           0000C6   634 _I2CEN	=	0x00c6
                           0000C5   635 _STA	=	0x00c5
                           0000C4   636 _STO	=	0x00c4
                           0000C3   637 _SI	=	0x00c3
                           0000C2   638 _AA	=	0x00c2
                           0000C0   639 _I2CPX	=	0x00c0
                           0000BE   640 _PADC	=	0x00be
                           0000BD   641 _PBOD	=	0x00bd
                           0000BC   642 _PS	=	0x00bc
                           0000BB   643 _PT1	=	0x00bb
                           0000BA   644 _PX1	=	0x00ba
                           0000B9   645 _PT0	=	0x00b9
                           0000B8   646 _PX0	=	0x00b8
                           0000B7   647 _P37	=	0x00b7
                           0000B6   648 _P36	=	0x00b6
                           0000B5   649 _P35	=	0x00b5
                           0000B4   650 _P34	=	0x00b4
                           0000B3   651 _P33	=	0x00b3
                           0000B2   652 _P32	=	0x00b2
                           0000B1   653 _P31	=	0x00b1
                           0000B0   654 _P30	=	0x00b0
                           0000AF   655 _EA	=	0x00af
                           0000AE   656 _EADC	=	0x00ae
                           0000AD   657 _EBOD	=	0x00ad
                           0000AC   658 _ES	=	0x00ac
                           0000AB   659 _ET1	=	0x00ab
                           0000AA   660 _EX1	=	0x00aa
                           0000A9   661 _ET0	=	0x00a9
                           0000A8   662 _EX0	=	0x00a8
                           0000A0   663 _P20	=	0x00a0
                           00009F   664 _SM0	=	0x009f
                           00009F   665 _FE	=	0x009f
                           00009E   666 _SM1	=	0x009e
                           00009D   667 _SM2	=	0x009d
                           00009C   668 _REN	=	0x009c
                           00009B   669 _TB8	=	0x009b
                           00009A   670 _RB8	=	0x009a
                           000099   671 _TI	=	0x0099
                           000098   672 _RI	=	0x0098
                           000097   673 _P17	=	0x0097
                           000096   674 _P16	=	0x0096
                           000096   675 _TXD_1	=	0x0096
                           000095   676 _P15	=	0x0095
                           000094   677 _P14	=	0x0094
                           000094   678 _SDA	=	0x0094
                           000093   679 _P13	=	0x0093
                           000093   680 _SCL	=	0x0093
                           000092   681 _P12	=	0x0092
                           000091   682 _P11	=	0x0091
                           000090   683 _P10	=	0x0090
                           00008F   684 _TF1	=	0x008f
                           00008E   685 _TR1	=	0x008e
                           00008D   686 _TF0	=	0x008d
                           00008C   687 _TR0	=	0x008c
                           00008B   688 _IE1	=	0x008b
                           00008A   689 _IT1	=	0x008a
                           000089   690 _IE0	=	0x0089
                           000088   691 _IT0	=	0x0088
                           000087   692 _P07	=	0x0087
                           000087   693 _RXD	=	0x0087
                           000086   694 _P06	=	0x0086
                           000086   695 _TXD	=	0x0086
                           000085   696 _P05	=	0x0085
                           000084   697 _P04	=	0x0084
                           000084   698 _STADC	=	0x0084
                           000083   699 _P03	=	0x0083
                           000082   700 _P02	=	0x0082
                           000082   701 _RXD_1	=	0x0082
                           000081   702 _P01	=	0x0081
                           000081   703 _MISO	=	0x0081
                           000080   704 _P00	=	0x0080
                           000080   705 _MOSI	=	0x0080
                                    706 ;--------------------------------------------------------
                                    707 ; overlayable register banks
                                    708 ;--------------------------------------------------------
                                    709 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        710 	.ds 8
                                    711 ;--------------------------------------------------------
                                    712 ; internal ram data
                                    713 ;--------------------------------------------------------
                                    714 	.area DSEG    (DATA)
      000008                        715 _sevencodes::
      000008                        716 	.ds 14
      000016                        717 _disp_buff::
      000016                        718 	.ds 4
                                    719 ;--------------------------------------------------------
                                    720 ; overlayable items in internal ram 
                                    721 ;--------------------------------------------------------
                                    722 ;--------------------------------------------------------
                                    723 ; Stack segment in internal ram 
                                    724 ;--------------------------------------------------------
                                    725 	.area	SSEG
      00001E                        726 __start__stack:
      00001E                        727 	.ds	1
                                    728 
                                    729 ;--------------------------------------------------------
                                    730 ; indirectly addressable internal ram data
                                    731 ;--------------------------------------------------------
                                    732 	.area ISEG    (DATA)
                                    733 ;--------------------------------------------------------
                                    734 ; absolute internal ram data
                                    735 ;--------------------------------------------------------
                                    736 	.area IABS    (ABS,DATA)
                                    737 	.area IABS    (ABS,DATA)
                                    738 ;--------------------------------------------------------
                                    739 ; bit data
                                    740 ;--------------------------------------------------------
                                    741 	.area BSEG    (BIT)
                                    742 ;--------------------------------------------------------
                                    743 ; paged external ram data
                                    744 ;--------------------------------------------------------
                                    745 	.area PSEG    (PAG,XDATA)
                                    746 ;--------------------------------------------------------
                                    747 ; external ram data
                                    748 ;--------------------------------------------------------
                                    749 	.area XSEG    (XDATA)
                                    750 ;--------------------------------------------------------
                                    751 ; absolute external ram data
                                    752 ;--------------------------------------------------------
                                    753 	.area XABS    (ABS,XDATA)
                                    754 ;--------------------------------------------------------
                                    755 ; external initialized ram data
                                    756 ;--------------------------------------------------------
                                    757 	.area XISEG   (XDATA)
                                    758 	.area HOME    (CODE)
                                    759 	.area GSINIT0 (CODE)
                                    760 	.area GSINIT1 (CODE)
                                    761 	.area GSINIT2 (CODE)
                                    762 	.area GSINIT3 (CODE)
                                    763 	.area GSINIT4 (CODE)
                                    764 	.area GSINIT5 (CODE)
                                    765 	.area GSINIT  (CODE)
                                    766 	.area GSFINAL (CODE)
                                    767 	.area CSEG    (CODE)
                                    768 ;--------------------------------------------------------
                                    769 ; interrupt vector 
                                    770 ;--------------------------------------------------------
                                    771 	.area HOME    (CODE)
      000000                        772 __interrupt_vect:
      000000 02 00 06         [24]  773 	ljmp	__sdcc_gsinit_startup
                                    774 ;--------------------------------------------------------
                                    775 ; global & static initialisations
                                    776 ;--------------------------------------------------------
                                    777 	.area HOME    (CODE)
                                    778 	.area GSINIT  (CODE)
                                    779 	.area GSFINAL (CODE)
                                    780 	.area GSINIT  (CODE)
                                    781 	.globl __sdcc_gsinit_startup
                                    782 	.globl __sdcc_program_startup
                                    783 	.globl __start__stack
                                    784 	.globl __mcs51_genXINIT
                                    785 	.globl __mcs51_genXRAMCLEAR
                                    786 	.globl __mcs51_genRAMCLEAR
                                    787 ;	main.c:6: unsigned char sevencodes[14] =
      00005F 75 08 3F         [24]  788 	mov	_sevencodes,#0x3f
      000062 75 09 06         [24]  789 	mov	(_sevencodes + 0x0001),#0x06
      000065 75 0A 5B         [24]  790 	mov	(_sevencodes + 0x0002),#0x5b
      000068 75 0B 4F         [24]  791 	mov	(_sevencodes + 0x0003),#0x4f
      00006B 75 0C 66         [24]  792 	mov	(_sevencodes + 0x0004),#0x66
      00006E 75 0D 6D         [24]  793 	mov	(_sevencodes + 0x0005),#0x6d
      000071 75 0E 7D         [24]  794 	mov	(_sevencodes + 0x0006),#0x7d
      000074 75 0F 07         [24]  795 	mov	(_sevencodes + 0x0007),#0x07
      000077 75 10 7F         [24]  796 	mov	(_sevencodes + 0x0008),#0x7f
      00007A 75 11 6F         [24]  797 	mov	(_sevencodes + 0x0009),#0x6f
      00007D 75 12 00         [24]  798 	mov	(_sevencodes + 0x000a),#0x00
      000080 75 13 40         [24]  799 	mov	(_sevencodes + 0x000b),#0x40
      000083 75 14 7C         [24]  800 	mov	(_sevencodes + 0x000c),#0x7c
      000086 75 15 50         [24]  801 	mov	(_sevencodes + 0x000d),#0x50
                                    802 	.area GSFINAL (CODE)
      000089 02 00 03         [24]  803 	ljmp	__sdcc_program_startup
                                    804 ;--------------------------------------------------------
                                    805 ; Home
                                    806 ;--------------------------------------------------------
                                    807 	.area HOME    (CODE)
                                    808 	.area HOME    (CODE)
      000003                        809 __sdcc_program_startup:
      000003 02 00 D8         [24]  810 	ljmp	_main
                                    811 ;	return from main will return to caller
                                    812 ;--------------------------------------------------------
                                    813 ; code
                                    814 ;--------------------------------------------------------
                                    815 	.area CSEG    (CODE)
                                    816 ;------------------------------------------------------------
                                    817 ;Allocation info for local variables in function 'main'
                                    818 ;------------------------------------------------------------
                                    819 ;i                         Allocated with name '_main_i_65536_52'
                                    820 ;delay1                    Allocated to registers r6 r7 
                                    821 ;delay2                    Allocated to registers r4 r5 
                                    822 ;brightness                Allocated with name '_main_brightness_65536_52'
                                    823 ;------------------------------------------------------------
                                    824 ;	main.c:11: void main(void)
                                    825 ;	-----------------------------------------
                                    826 ;	 function main
                                    827 ;	-----------------------------------------
      0000D8                        828 _main:
                           000007   829 	ar7 = 0x07
                           000006   830 	ar6 = 0x06
                           000005   831 	ar5 = 0x05
                           000004   832 	ar4 = 0x04
                           000003   833 	ar3 = 0x03
                           000002   834 	ar2 = 0x02
                           000001   835 	ar1 = 0x01
                           000000   836 	ar0 = 0x00
                                    837 ;	main.c:17: TM1650_init(brightness_100_pc | display_on);
      0000D8 75 82 01         [24]  838 	mov	dpl,#0x01
      0000DB 12 02 D5         [24]  839 	lcall	_TM1650_init
                                    840 ;	main.c:18: while(1)
      0000DE                        841 00128$:
                                    842 ;	main.c:20: disp_buff[0]=0xFF;
      0000DE 75 16 FF         [24]  843 	mov	_disp_buff,#0xff
                                    844 ;	main.c:21: disp_buff[1]=0xFF;
      0000E1 75 17 FF         [24]  845 	mov	(_disp_buff + 0x0001),#0xff
                                    846 ;	main.c:22: disp_buff[2]=0xFF;
      0000E4 75 18 FF         [24]  847 	mov	(_disp_buff + 0x0002),#0xff
                                    848 ;	main.c:23: TM1650_Send_Buff(disp_buff);
      0000E7 90 00 16         [24]  849 	mov	dptr,#_disp_buff
      0000EA 75 F0 40         [24]  850 	mov	b,#0x40
      0000ED 12 02 FD         [24]  851 	lcall	_TM1650_Send_Buff
                                    852 ;	main.c:24: for(delay1=5000;delay1!=0;delay1--)
      0000F0 7E 88            [12]  853 	mov	r6,#0x88
      0000F2 7F 13            [12]  854 	mov	r7,#0x13
                                    855 ;	main.c:25: for(delay2=50;delay2!=0;delay2--);
      0000F4                        856 00184$:
      0000F4 7C 32            [12]  857 	mov	r4,#0x32
      0000F6 7D 00            [12]  858 	mov	r5,#0x00
      0000F8                        859 00131$:
      0000F8 1C               [12]  860 	dec	r4
      0000F9 BC FF 01         [24]  861 	cjne	r4,#0xff,00422$
      0000FC 1D               [12]  862 	dec	r5
      0000FD                        863 00422$:
      0000FD EC               [12]  864 	mov	a,r4
      0000FE 4D               [12]  865 	orl	a,r5
      0000FF 70 F7            [24]  866 	jnz	00131$
                                    867 ;	main.c:24: for(delay1=5000;delay1!=0;delay1--)
      000101 1E               [12]  868 	dec	r6
      000102 BE FF 01         [24]  869 	cjne	r6,#0xff,00424$
      000105 1F               [12]  870 	dec	r7
      000106                        871 00424$:
      000106 EE               [12]  872 	mov	a,r6
      000107 4F               [12]  873 	orl	a,r7
      000108 70 EA            [24]  874 	jnz	00184$
                                    875 ;	main.c:27: for(delay1=5000;delay1!=0;delay1--)
      00010A 7E 88            [12]  876 	mov	r6,#0x88
      00010C 7F 13            [12]  877 	mov	r7,#0x13
                                    878 ;	main.c:28: for(delay2=50;delay2!=0;delay2--);
      00010E                        879 00188$:
      00010E 7C 32            [12]  880 	mov	r4,#0x32
      000110 7D 00            [12]  881 	mov	r5,#0x00
      000112                        882 00135$:
      000112 1C               [12]  883 	dec	r4
      000113 BC FF 01         [24]  884 	cjne	r4,#0xff,00426$
      000116 1D               [12]  885 	dec	r5
      000117                        886 00426$:
      000117 EC               [12]  887 	mov	a,r4
      000118 4D               [12]  888 	orl	a,r5
      000119 70 F7            [24]  889 	jnz	00135$
                                    890 ;	main.c:27: for(delay1=5000;delay1!=0;delay1--)
      00011B 1E               [12]  891 	dec	r6
      00011C BE FF 01         [24]  892 	cjne	r6,#0xff,00428$
      00011F 1F               [12]  893 	dec	r7
      000120                        894 00428$:
      000120 EE               [12]  895 	mov	a,r6
      000121 4F               [12]  896 	orl	a,r7
      000122 70 EA            [24]  897 	jnz	00188$
                                    898 ;	main.c:29: for(delay1=5000;delay1!=0;delay1--)
      000124 7E 88            [12]  899 	mov	r6,#0x88
      000126 7F 13            [12]  900 	mov	r7,#0x13
                                    901 ;	main.c:30: for(delay2=50;delay2!=0;delay2--);
      000128                        902 00192$:
      000128 7C 32            [12]  903 	mov	r4,#0x32
      00012A 7D 00            [12]  904 	mov	r5,#0x00
      00012C                        905 00139$:
      00012C 1C               [12]  906 	dec	r4
      00012D BC FF 01         [24]  907 	cjne	r4,#0xff,00430$
      000130 1D               [12]  908 	dec	r5
      000131                        909 00430$:
      000131 EC               [12]  910 	mov	a,r4
      000132 4D               [12]  911 	orl	a,r5
      000133 70 F7            [24]  912 	jnz	00139$
                                    913 ;	main.c:29: for(delay1=5000;delay1!=0;delay1--)
      000135 1E               [12]  914 	dec	r6
      000136 BE FF 01         [24]  915 	cjne	r6,#0xff,00432$
      000139 1F               [12]  916 	dec	r7
      00013A                        917 00432$:
      00013A EE               [12]  918 	mov	a,r6
      00013B 4F               [12]  919 	orl	a,r7
      00013C 70 EA            [24]  920 	jnz	00192$
                                    921 ;	main.c:31: for(delay1=5000;delay1!=0;delay1--)
      00013E 7E 88            [12]  922 	mov	r6,#0x88
      000140 7F 13            [12]  923 	mov	r7,#0x13
                                    924 ;	main.c:32: for(delay2=50;delay2!=0;delay2--);
      000142                        925 00196$:
      000142 7C 32            [12]  926 	mov	r4,#0x32
      000144 7D 00            [12]  927 	mov	r5,#0x00
      000146                        928 00143$:
      000146 1C               [12]  929 	dec	r4
      000147 BC FF 01         [24]  930 	cjne	r4,#0xff,00434$
      00014A 1D               [12]  931 	dec	r5
      00014B                        932 00434$:
      00014B EC               [12]  933 	mov	a,r4
      00014C 4D               [12]  934 	orl	a,r5
      00014D 70 F7            [24]  935 	jnz	00143$
                                    936 ;	main.c:31: for(delay1=5000;delay1!=0;delay1--)
      00014F 1E               [12]  937 	dec	r6
      000150 BE FF 01         [24]  938 	cjne	r6,#0xff,00436$
      000153 1F               [12]  939 	dec	r7
      000154                        940 00436$:
      000154 EE               [12]  941 	mov	a,r6
      000155 4F               [12]  942 	orl	a,r7
                                    943 ;	main.c:33: disp_buff[0]=0x00;
                                    944 ;	main.c:34: disp_buff[1]=0x01;
                                    945 ;	main.c:35: disp_buff[2]=0x00;
      000156 70 EA            [24]  946 	jnz	00196$
      000158 F5 16            [12]  947 	mov	_disp_buff,a
      00015A 75 17 01         [24]  948 	mov	(_disp_buff + 0x0001),#0x01
      00015D F5 18            [12]  949 	mov	(_disp_buff + 0x0002),a
                                    950 ;	main.c:36: TM1650_Send_Buff(disp_buff);
      00015F 90 00 16         [24]  951 	mov	dptr,#_disp_buff
      000162 75 F0 40         [24]  952 	mov	b,#0x40
      000165 12 02 FD         [24]  953 	lcall	_TM1650_Send_Buff
                                    954 ;	main.c:37: for(delay1=5000;delay1!=0;delay1--)
      000168 7E 88            [12]  955 	mov	r6,#0x88
      00016A 7F 13            [12]  956 	mov	r7,#0x13
                                    957 ;	main.c:38: for(delay2=50;delay2!=0;delay2--);
      00016C                        958 00200$:
      00016C 7C 32            [12]  959 	mov	r4,#0x32
      00016E 7D 00            [12]  960 	mov	r5,#0x00
      000170                        961 00147$:
      000170 1C               [12]  962 	dec	r4
      000171 BC FF 01         [24]  963 	cjne	r4,#0xff,00438$
      000174 1D               [12]  964 	dec	r5
      000175                        965 00438$:
      000175 EC               [12]  966 	mov	a,r4
      000176 4D               [12]  967 	orl	a,r5
      000177 70 F7            [24]  968 	jnz	00147$
                                    969 ;	main.c:37: for(delay1=5000;delay1!=0;delay1--)
      000179 1E               [12]  970 	dec	r6
      00017A BE FF 01         [24]  971 	cjne	r6,#0xff,00440$
      00017D 1F               [12]  972 	dec	r7
      00017E                        973 00440$:
      00017E EE               [12]  974 	mov	a,r6
      00017F 4F               [12]  975 	orl	a,r7
                                    976 ;	main.c:40: disp_buff[0]=0x00;
                                    977 ;	main.c:41: disp_buff[1]=0x00;
      000180 70 EA            [24]  978 	jnz	00200$
      000182 F5 16            [12]  979 	mov	_disp_buff,a
      000184 F5 17            [12]  980 	mov	(_disp_buff + 0x0001),a
                                    981 ;	main.c:42: disp_buff[2]=0x01;
      000186 75 18 01         [24]  982 	mov	(_disp_buff + 0x0002),#0x01
                                    983 ;	main.c:43: TM1650_Send_Buff(disp_buff);
      000189 90 00 16         [24]  984 	mov	dptr,#_disp_buff
      00018C 75 F0 40         [24]  985 	mov	b,#0x40
      00018F 12 02 FD         [24]  986 	lcall	_TM1650_Send_Buff
                                    987 ;	main.c:44: for(delay1=5000;delay1!=0;delay1--)
      000192 7E 88            [12]  988 	mov	r6,#0x88
      000194 7F 13            [12]  989 	mov	r7,#0x13
                                    990 ;	main.c:45: for(delay2=50;delay2!=0;delay2--);
      000196                        991 00204$:
      000196 7C 32            [12]  992 	mov	r4,#0x32
      000198 7D 00            [12]  993 	mov	r5,#0x00
      00019A                        994 00151$:
      00019A 1C               [12]  995 	dec	r4
      00019B BC FF 01         [24]  996 	cjne	r4,#0xff,00442$
      00019E 1D               [12]  997 	dec	r5
      00019F                        998 00442$:
      00019F EC               [12]  999 	mov	a,r4
      0001A0 4D               [12] 1000 	orl	a,r5
      0001A1 70 F7            [24] 1001 	jnz	00151$
                                   1002 ;	main.c:44: for(delay1=5000;delay1!=0;delay1--)
      0001A3 1E               [12] 1003 	dec	r6
      0001A4 BE FF 01         [24] 1004 	cjne	r6,#0xff,00444$
      0001A7 1F               [12] 1005 	dec	r7
      0001A8                       1006 00444$:
      0001A8 EE               [12] 1007 	mov	a,r6
      0001A9 4F               [12] 1008 	orl	a,r7
                                   1009 ;	main.c:47: disp_buff[0]=0x00;
                                   1010 ;	main.c:48: disp_buff[1]=0x00;
      0001AA 70 EA            [24] 1011 	jnz	00204$
      0001AC F5 16            [12] 1012 	mov	_disp_buff,a
      0001AE F5 17            [12] 1013 	mov	(_disp_buff + 0x0001),a
                                   1014 ;	main.c:49: disp_buff[2]=0x02;
      0001B0 75 18 02         [24] 1015 	mov	(_disp_buff + 0x0002),#0x02
                                   1016 ;	main.c:50: TM1650_Send_Buff(disp_buff);
      0001B3 90 00 16         [24] 1017 	mov	dptr,#_disp_buff
      0001B6 75 F0 40         [24] 1018 	mov	b,#0x40
      0001B9 12 02 FD         [24] 1019 	lcall	_TM1650_Send_Buff
                                   1020 ;	main.c:51: for(delay1=5000;delay1!=0;delay1--)
      0001BC 7E 88            [12] 1021 	mov	r6,#0x88
      0001BE 7F 13            [12] 1022 	mov	r7,#0x13
                                   1023 ;	main.c:52: for(delay2=50;delay2!=0;delay2--);
      0001C0                       1024 00208$:
      0001C0 7C 32            [12] 1025 	mov	r4,#0x32
      0001C2 7D 00            [12] 1026 	mov	r5,#0x00
      0001C4                       1027 00155$:
      0001C4 1C               [12] 1028 	dec	r4
      0001C5 BC FF 01         [24] 1029 	cjne	r4,#0xff,00446$
      0001C8 1D               [12] 1030 	dec	r5
      0001C9                       1031 00446$:
      0001C9 EC               [12] 1032 	mov	a,r4
      0001CA 4D               [12] 1033 	orl	a,r5
      0001CB 70 F7            [24] 1034 	jnz	00155$
                                   1035 ;	main.c:51: for(delay1=5000;delay1!=0;delay1--)
      0001CD 1E               [12] 1036 	dec	r6
      0001CE BE FF 01         [24] 1037 	cjne	r6,#0xff,00448$
      0001D1 1F               [12] 1038 	dec	r7
      0001D2                       1039 00448$:
      0001D2 EE               [12] 1040 	mov	a,r6
      0001D3 4F               [12] 1041 	orl	a,r7
                                   1042 ;	main.c:54: disp_buff[0]=0x00;
                                   1043 ;	main.c:55: disp_buff[1]=0x00;
      0001D4 70 EA            [24] 1044 	jnz	00208$
      0001D6 F5 16            [12] 1045 	mov	_disp_buff,a
      0001D8 F5 17            [12] 1046 	mov	(_disp_buff + 0x0001),a
                                   1047 ;	main.c:56: disp_buff[2]=0x04;
      0001DA 75 18 04         [24] 1048 	mov	(_disp_buff + 0x0002),#0x04
                                   1049 ;	main.c:57: TM1650_Send_Buff(disp_buff);
      0001DD 90 00 16         [24] 1050 	mov	dptr,#_disp_buff
      0001E0 75 F0 40         [24] 1051 	mov	b,#0x40
      0001E3 12 02 FD         [24] 1052 	lcall	_TM1650_Send_Buff
                                   1053 ;	main.c:58: for(delay1=5000;delay1!=0;delay1--)
      0001E6 7E 88            [12] 1054 	mov	r6,#0x88
      0001E8 7F 13            [12] 1055 	mov	r7,#0x13
                                   1056 ;	main.c:59: for(delay2=50;delay2!=0;delay2--);
      0001EA                       1057 00212$:
      0001EA 7C 32            [12] 1058 	mov	r4,#0x32
      0001EC 7D 00            [12] 1059 	mov	r5,#0x00
      0001EE                       1060 00159$:
      0001EE 1C               [12] 1061 	dec	r4
      0001EF BC FF 01         [24] 1062 	cjne	r4,#0xff,00450$
      0001F2 1D               [12] 1063 	dec	r5
      0001F3                       1064 00450$:
      0001F3 EC               [12] 1065 	mov	a,r4
      0001F4 4D               [12] 1066 	orl	a,r5
      0001F5 70 F7            [24] 1067 	jnz	00159$
                                   1068 ;	main.c:58: for(delay1=5000;delay1!=0;delay1--)
      0001F7 1E               [12] 1069 	dec	r6
      0001F8 BE FF 01         [24] 1070 	cjne	r6,#0xff,00452$
      0001FB 1F               [12] 1071 	dec	r7
      0001FC                       1072 00452$:
      0001FC EE               [12] 1073 	mov	a,r6
      0001FD 4F               [12] 1074 	orl	a,r7
                                   1075 ;	main.c:61: disp_buff[0]=0x00;
                                   1076 ;	main.c:62: disp_buff[1]=0x00;
      0001FE 70 EA            [24] 1077 	jnz	00212$
      000200 F5 16            [12] 1078 	mov	_disp_buff,a
      000202 F5 17            [12] 1079 	mov	(_disp_buff + 0x0001),a
                                   1080 ;	main.c:63: disp_buff[2]=0x08;
      000204 75 18 08         [24] 1081 	mov	(_disp_buff + 0x0002),#0x08
                                   1082 ;	main.c:64: TM1650_Send_Buff(disp_buff);
      000207 90 00 16         [24] 1083 	mov	dptr,#_disp_buff
      00020A 75 F0 40         [24] 1084 	mov	b,#0x40
      00020D 12 02 FD         [24] 1085 	lcall	_TM1650_Send_Buff
                                   1086 ;	main.c:65: for(delay1=5000;delay1!=0;delay1--)
      000210 7E 88            [12] 1087 	mov	r6,#0x88
      000212 7F 13            [12] 1088 	mov	r7,#0x13
                                   1089 ;	main.c:66: for(delay2=50;delay2!=0;delay2--);
      000214                       1090 00216$:
      000214 7C 32            [12] 1091 	mov	r4,#0x32
      000216 7D 00            [12] 1092 	mov	r5,#0x00
      000218                       1093 00163$:
      000218 1C               [12] 1094 	dec	r4
      000219 BC FF 01         [24] 1095 	cjne	r4,#0xff,00454$
      00021C 1D               [12] 1096 	dec	r5
      00021D                       1097 00454$:
      00021D EC               [12] 1098 	mov	a,r4
      00021E 4D               [12] 1099 	orl	a,r5
      00021F 70 F7            [24] 1100 	jnz	00163$
                                   1101 ;	main.c:65: for(delay1=5000;delay1!=0;delay1--)
      000221 1E               [12] 1102 	dec	r6
      000222 BE FF 01         [24] 1103 	cjne	r6,#0xff,00456$
      000225 1F               [12] 1104 	dec	r7
      000226                       1105 00456$:
      000226 EE               [12] 1106 	mov	a,r6
      000227 4F               [12] 1107 	orl	a,r7
                                   1108 ;	main.c:68: disp_buff[0]=0x00;
                                   1109 ;	main.c:69: disp_buff[1]=0x08;
                                   1110 ;	main.c:70: disp_buff[2]=0x00;
      000228 70 EA            [24] 1111 	jnz	00216$
      00022A F5 16            [12] 1112 	mov	_disp_buff,a
      00022C 75 17 08         [24] 1113 	mov	(_disp_buff + 0x0001),#0x08
      00022F F5 18            [12] 1114 	mov	(_disp_buff + 0x0002),a
                                   1115 ;	main.c:71: TM1650_Send_Buff(disp_buff);
      000231 90 00 16         [24] 1116 	mov	dptr,#_disp_buff
      000234 75 F0 40         [24] 1117 	mov	b,#0x40
      000237 12 02 FD         [24] 1118 	lcall	_TM1650_Send_Buff
                                   1119 ;	main.c:72: for(delay1=5000;delay1!=0;delay1--)
      00023A 7E 88            [12] 1120 	mov	r6,#0x88
      00023C 7F 13            [12] 1121 	mov	r7,#0x13
                                   1122 ;	main.c:73: for(delay2=50;delay2!=0;delay2--);
      00023E                       1123 00220$:
      00023E 7C 32            [12] 1124 	mov	r4,#0x32
      000240 7D 00            [12] 1125 	mov	r5,#0x00
      000242                       1126 00167$:
      000242 1C               [12] 1127 	dec	r4
      000243 BC FF 01         [24] 1128 	cjne	r4,#0xff,00458$
      000246 1D               [12] 1129 	dec	r5
      000247                       1130 00458$:
      000247 EC               [12] 1131 	mov	a,r4
      000248 4D               [12] 1132 	orl	a,r5
      000249 70 F7            [24] 1133 	jnz	00167$
                                   1134 ;	main.c:72: for(delay1=5000;delay1!=0;delay1--)
      00024B 1E               [12] 1135 	dec	r6
      00024C BE FF 01         [24] 1136 	cjne	r6,#0xff,00460$
      00024F 1F               [12] 1137 	dec	r7
      000250                       1138 00460$:
      000250 EE               [12] 1139 	mov	a,r6
      000251 4F               [12] 1140 	orl	a,r7
                                   1141 ;	main.c:75: disp_buff[0]=0x08;
                                   1142 ;	main.c:76: disp_buff[1]=0x00;
                                   1143 ;	main.c:77: disp_buff[2]=0x00;
      000252 70 EA            [24] 1144 	jnz	00220$
      000254 75 16 08         [24] 1145 	mov	_disp_buff,#0x08
      000257 F5 17            [12] 1146 	mov	(_disp_buff + 0x0001),a
      000259 F5 18            [12] 1147 	mov	(_disp_buff + 0x0002),a
                                   1148 ;	main.c:78: TM1650_Send_Buff(disp_buff);
      00025B 90 00 16         [24] 1149 	mov	dptr,#_disp_buff
      00025E 75 F0 40         [24] 1150 	mov	b,#0x40
      000261 12 02 FD         [24] 1151 	lcall	_TM1650_Send_Buff
                                   1152 ;	main.c:79: for(delay1=5000;delay1!=0;delay1--)
      000264 7E 88            [12] 1153 	mov	r6,#0x88
      000266 7F 13            [12] 1154 	mov	r7,#0x13
                                   1155 ;	main.c:80: for(delay2=50;delay2!=0;delay2--);
      000268                       1156 00224$:
      000268 7C 32            [12] 1157 	mov	r4,#0x32
      00026A 7D 00            [12] 1158 	mov	r5,#0x00
      00026C                       1159 00171$:
      00026C 1C               [12] 1160 	dec	r4
      00026D BC FF 01         [24] 1161 	cjne	r4,#0xff,00462$
      000270 1D               [12] 1162 	dec	r5
      000271                       1163 00462$:
      000271 EC               [12] 1164 	mov	a,r4
      000272 4D               [12] 1165 	orl	a,r5
      000273 70 F7            [24] 1166 	jnz	00171$
                                   1167 ;	main.c:79: for(delay1=5000;delay1!=0;delay1--)
      000275 1E               [12] 1168 	dec	r6
      000276 BE FF 01         [24] 1169 	cjne	r6,#0xff,00464$
      000279 1F               [12] 1170 	dec	r7
      00027A                       1171 00464$:
      00027A EE               [12] 1172 	mov	a,r6
      00027B 4F               [12] 1173 	orl	a,r7
                                   1174 ;	main.c:82: disp_buff[0]=0x10;
                                   1175 ;	main.c:83: disp_buff[1]=0x00;
                                   1176 ;	main.c:84: disp_buff[2]=0x00;
      00027C 70 EA            [24] 1177 	jnz	00224$
      00027E 75 16 10         [24] 1178 	mov	_disp_buff,#0x10
      000281 F5 17            [12] 1179 	mov	(_disp_buff + 0x0001),a
      000283 F5 18            [12] 1180 	mov	(_disp_buff + 0x0002),a
                                   1181 ;	main.c:85: TM1650_Send_Buff(disp_buff);
      000285 90 00 16         [24] 1182 	mov	dptr,#_disp_buff
      000288 75 F0 40         [24] 1183 	mov	b,#0x40
      00028B 12 02 FD         [24] 1184 	lcall	_TM1650_Send_Buff
                                   1185 ;	main.c:86: for(delay1=5000;delay1!=0;delay1--)
      00028E 7E 88            [12] 1186 	mov	r6,#0x88
      000290 7F 13            [12] 1187 	mov	r7,#0x13
                                   1188 ;	main.c:87: for(delay2=50;delay2!=0;delay2--);
      000292                       1189 00228$:
      000292 7C 32            [12] 1190 	mov	r4,#0x32
      000294 7D 00            [12] 1191 	mov	r5,#0x00
      000296                       1192 00175$:
      000296 1C               [12] 1193 	dec	r4
      000297 BC FF 01         [24] 1194 	cjne	r4,#0xff,00466$
      00029A 1D               [12] 1195 	dec	r5
      00029B                       1196 00466$:
      00029B EC               [12] 1197 	mov	a,r4
      00029C 4D               [12] 1198 	orl	a,r5
      00029D 70 F7            [24] 1199 	jnz	00175$
                                   1200 ;	main.c:86: for(delay1=5000;delay1!=0;delay1--)
      00029F 1E               [12] 1201 	dec	r6
      0002A0 BE FF 01         [24] 1202 	cjne	r6,#0xff,00468$
      0002A3 1F               [12] 1203 	dec	r7
      0002A4                       1204 00468$:
      0002A4 EE               [12] 1205 	mov	a,r6
      0002A5 4F               [12] 1206 	orl	a,r7
                                   1207 ;	main.c:89: disp_buff[0]=0x20;
                                   1208 ;	main.c:90: disp_buff[1]=0x00;
                                   1209 ;	main.c:91: disp_buff[2]=0x00;
      0002A6 70 EA            [24] 1210 	jnz	00228$
      0002A8 75 16 20         [24] 1211 	mov	_disp_buff,#0x20
      0002AB F5 17            [12] 1212 	mov	(_disp_buff + 0x0001),a
      0002AD F5 18            [12] 1213 	mov	(_disp_buff + 0x0002),a
                                   1214 ;	main.c:92: TM1650_Send_Buff(disp_buff);
      0002AF 90 00 16         [24] 1215 	mov	dptr,#_disp_buff
      0002B2 75 F0 40         [24] 1216 	mov	b,#0x40
      0002B5 12 02 FD         [24] 1217 	lcall	_TM1650_Send_Buff
                                   1218 ;	main.c:93: for(delay1=5000;delay1!=0;delay1--)
      0002B8 7E 88            [12] 1219 	mov	r6,#0x88
      0002BA 7F 13            [12] 1220 	mov	r7,#0x13
                                   1221 ;	main.c:94: for(delay2=50;delay2!=0;delay2--);
      0002BC                       1222 00232$:
      0002BC 7C 32            [12] 1223 	mov	r4,#0x32
      0002BE 7D 00            [12] 1224 	mov	r5,#0x00
      0002C0                       1225 00179$:
      0002C0 1C               [12] 1226 	dec	r4
      0002C1 BC FF 01         [24] 1227 	cjne	r4,#0xff,00470$
      0002C4 1D               [12] 1228 	dec	r5
      0002C5                       1229 00470$:
      0002C5 EC               [12] 1230 	mov	a,r4
      0002C6 4D               [12] 1231 	orl	a,r5
      0002C7 70 F7            [24] 1232 	jnz	00179$
                                   1233 ;	main.c:93: for(delay1=5000;delay1!=0;delay1--)
      0002C9 1E               [12] 1234 	dec	r6
      0002CA BE FF 01         [24] 1235 	cjne	r6,#0xff,00472$
      0002CD 1F               [12] 1236 	dec	r7
      0002CE                       1237 00472$:
      0002CE EE               [12] 1238 	mov	a,r6
      0002CF 4F               [12] 1239 	orl	a,r7
      0002D0 70 EA            [24] 1240 	jnz	00232$
                                   1241 ;	main.c:117: }
      0002D2 02 00 DE         [24] 1242 	ljmp	00128$
                                   1243 	.area CSEG    (CODE)
                                   1244 	.area CONST   (CODE)
                                   1245 	.area XINIT   (CODE)
                                   1246 	.area CABS    (ABS,CODE)
