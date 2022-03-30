;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module GPIO
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Timer0_Delay
	.globl _MOSI
	.globl _P00
	.globl _MISO
	.globl _P01
	.globl _RXD_1
	.globl _P02
	.globl _P03
	.globl _STADC
	.globl _P04
	.globl _P05
	.globl _TXD
	.globl _P06
	.globl _RXD
	.globl _P07
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P10
	.globl _P11
	.globl _P12
	.globl _SCL
	.globl _P13
	.globl _SDA
	.globl _P14
	.globl _P15
	.globl _TXD_1
	.globl _P16
	.globl _P17
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _FE
	.globl _SM0
	.globl _P20
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EBOD
	.globl _EADC
	.globl _EA
	.globl _P30
	.globl _P31
	.globl _P32
	.globl _P33
	.globl _P34
	.globl _P35
	.globl _P36
	.globl _P37
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PBOD
	.globl _PADC
	.globl _I2CPX
	.globl _AA
	.globl _SI
	.globl _STO
	.globl _STA
	.globl _I2CEN
	.globl _CM_RL2
	.globl _TR2
	.globl _TF2
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CLRPWM
	.globl _PWMF
	.globl _LOAD
	.globl _PWMRUN
	.globl _ADCHS0
	.globl _ADCHS1
	.globl _ADCHS2
	.globl _ADCHS3
	.globl _ETGSEL0
	.globl _ETGSEL1
	.globl _ADCS
	.globl _ADCF
	.globl _RI_1
	.globl _TI_1
	.globl _RB8_1
	.globl _TB8_1
	.globl _REN_1
	.globl _SM2_1
	.globl _SM1_1
	.globl _FE_1
	.globl _SM0_1
	.globl _PIPS6
	.globl _PIPS5
	.globl _PIPS4
	.globl _PIPS3
	.globl _PIPS2
	.globl _PIPS1
	.globl _PIPS0
	.globl _PIPS7
	.globl _SC2CR1
	.globl _SC2CR0
	.globl _SC1CR1
	.globl _SC1CR0
	.globl _SC0CR1
	.globl _SC0CR0
	.globl _SC2TSR
	.globl _SC2IS
	.globl _SC2IE
	.globl _SC2ETURD1
	.globl _SC2ETURD0
	.globl _SC2EGT
	.globl _SC2DR
	.globl _SC1TSR
	.globl _SC1IS
	.globl _SC1IE
	.globl _SC1ETURD1
	.globl _SC1ETURD0
	.globl _SC1EGT
	.globl _SC1DR
	.globl _SC0TSR
	.globl _SC0IS
	.globl _SC0IE
	.globl _SC0ETURD1
	.globl _SC0ETURD0
	.globl _SC0EGT
	.globl _SC0DR
	.globl _XTLCON
	.globl _PWM3INTC
	.globl _PWM3CON1
	.globl _PWM3CON0
	.globl _PWM3C1L
	.globl _PWM3C0L
	.globl _PWM3PL
	.globl _EIPH2
	.globl _EIP2
	.globl _PWM3MEN
	.globl _PWM3MD
	.globl _PWM3C1H
	.globl _PWM3C0H
	.globl _PWM3PH
	.globl _PWM2INTC
	.globl _PWM2CON1
	.globl _PWM2CON0
	.globl _PWM2C1L
	.globl _PWM2C0L
	.globl _PWM2PL
	.globl _PWM2MEN
	.globl _PWM2MD
	.globl _PWM2C1H
	.globl _PWM2C0H
	.globl _PWM2PH
	.globl _PIOCON2
	.globl _PWM1INTC
	.globl _PWM1CON1
	.globl _PWM1CON0
	.globl _PWM1C1L
	.globl _PWM1C0L
	.globl _PWM1PL
	.globl _PWM1MEN
	.globl _PWM1MD
	.globl _PWM1C1H
	.globl _PWM1C0H
	.globl _PWM1PH
	.globl _AUXR8
	.globl _AUXR7
	.globl _AUXR6
	.globl _AUXR5
	.globl _AUXR4
	.globl _AUXR3
	.globl _AUXR2
	.globl _P3DW
	.globl _P2DW
	.globl _P1DW
	.globl _P0DW
	.globl _AINDIDS1
	.globl _RWKH
	.globl _P3UP
	.globl _P2UP
	.globl _P1UP
	.globl _P0UP
	.globl _ADCSR
	.globl _ADCCN
	.globl _ADCSN
	.globl _P2S
	.globl _P2SR
	.globl _P2M2
	.globl _P2M1
	.globl _ADCCON3
	.globl _ADCBAH
	.globl _ADCBAL
	.globl _LVRDIS
	.globl _SPCR2
	.globl _PWM0C5L
	.globl _PWM0C4L
	.globl _PIOCON1
	.globl _PWM0C5H
	.globl _PWM0C4H
	.globl _PWM0INTC
	.globl _P1SR
	.globl _P1S
	.globl _P0SR
	.globl _P0S
	.globl _P3SR
	.globl _P3S
	.globl _EIPH1
	.globl _EIP1
	.globl _PORDIS
	.globl _PWM0MD
	.globl _PWM0MEN
	.globl _PWM0DTCNT
	.globl _PWM0DTEN
	.globl _SCON_1
	.globl _EIPH
	.globl _AINDIDS0
	.globl _SPDR
	.globl _SPSR
	.globl _SPCR
	.globl _CAPCON4
	.globl _CAPCON3
	.globl _B
	.globl _EIP
	.globl _C2H
	.globl _C2L
	.globl _PIF
	.globl _PIPEN
	.globl _PINEN
	.globl _PICON
	.globl _ADCCON0
	.globl _C1H
	.globl _C1L
	.globl _C0H
	.globl _C0L
	.globl _ADCDLY
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ACC
	.globl _PWM0CON1
	.globl _PIOCON0
	.globl _PWM0C3L
	.globl _PWM0C2L
	.globl _PWM0C1L
	.globl _PWM0C0L
	.globl _PWM0PL
	.globl _PWM0CON0
	.globl _PWM0FBD
	.globl _PNP
	.globl _PWM0C3H
	.globl _PWM0C2H
	.globl _PWM0C1H
	.globl _PWM0C0H
	.globl _PWM0PH
	.globl _PSW
	.globl _ADCMPH
	.globl _ADCMPL
	.globl _TH2
	.globl _TL2
	.globl _RCMP2H
	.globl _RCMP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _TA
	.globl _RH3
	.globl _RL3
	.globl _T3CON
	.globl _ADCRH
	.globl _ADCRL
	.globl _I2ADDR
	.globl _I2CON
	.globl _I2TOC
	.globl _I2CLK
	.globl _I2STAT
	.globl _I2DAT
	.globl _SADDR_1
	.globl _SADEN_1
	.globl _SADEN
	.globl _IP
	.globl _IPH
	.globl _TOE
	.globl _P1M2
	.globl _P1M1
	.globl _P0M2
	.globl _P0M1
	.globl _P3
	.globl _IAPCN
	.globl _IAPFD
	.globl _P3M2
	.globl _P3M1
	.globl _BODCON1
	.globl _WDCON
	.globl _SADDR
	.globl _IE
	.globl _IAPAH
	.globl _IAPAL
	.globl _IAPUEN
	.globl _IAPTRG
	.globl _BODCON0
	.globl _AUXR1
	.globl _P2
	.globl _CHPCON
	.globl _EIE1
	.globl _EIE
	.globl _SBUF_1
	.globl _SBUF
	.globl _SCON
	.globl _CKEN
	.globl _CKSWT
	.globl _CKDIV
	.globl _CAPCON2
	.globl _CAPCON1
	.globl _CAPCON0
	.globl _SFRS
	.globl _P1
	.globl _WKCON
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _RWKL
	.globl _RCTRIM1
	.globl _RCTRIM0
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0_0$0 == 0x0080
_P0	=	0x0080
G$SP$0_0$0 == 0x0081
_SP	=	0x0081
G$DPL$0_0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0_0$0 == 0x0083
_DPH	=	0x0083
G$RCTRIM0$0_0$0 == 0x0084
_RCTRIM0	=	0x0084
G$RCTRIM1$0_0$0 == 0x0085
_RCTRIM1	=	0x0085
G$RWKL$0_0$0 == 0x0086
_RWKL	=	0x0086
G$PCON$0_0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0_0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0_0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0_0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0_0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0_0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0_0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0_0$0 == 0x008e
_CKCON	=	0x008e
G$WKCON$0_0$0 == 0x008f
_WKCON	=	0x008f
G$P1$0_0$0 == 0x0090
_P1	=	0x0090
G$SFRS$0_0$0 == 0x0091
_SFRS	=	0x0091
G$CAPCON0$0_0$0 == 0x0092
_CAPCON0	=	0x0092
G$CAPCON1$0_0$0 == 0x0093
_CAPCON1	=	0x0093
G$CAPCON2$0_0$0 == 0x0094
_CAPCON2	=	0x0094
G$CKDIV$0_0$0 == 0x0095
_CKDIV	=	0x0095
G$CKSWT$0_0$0 == 0x0096
_CKSWT	=	0x0096
G$CKEN$0_0$0 == 0x0097
_CKEN	=	0x0097
G$SCON$0_0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0_0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF_1$0_0$0 == 0x009a
_SBUF_1	=	0x009a
G$EIE$0_0$0 == 0x009b
_EIE	=	0x009b
G$EIE1$0_0$0 == 0x009c
_EIE1	=	0x009c
G$CHPCON$0_0$0 == 0x009f
_CHPCON	=	0x009f
G$P2$0_0$0 == 0x00a0
_P2	=	0x00a0
G$AUXR1$0_0$0 == 0x00a2
_AUXR1	=	0x00a2
G$BODCON0$0_0$0 == 0x00a3
_BODCON0	=	0x00a3
G$IAPTRG$0_0$0 == 0x00a4
_IAPTRG	=	0x00a4
G$IAPUEN$0_0$0 == 0x00a5
_IAPUEN	=	0x00a5
G$IAPAL$0_0$0 == 0x00a6
_IAPAL	=	0x00a6
G$IAPAH$0_0$0 == 0x00a7
_IAPAH	=	0x00a7
G$IE$0_0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR$0_0$0 == 0x00a9
_SADDR	=	0x00a9
G$WDCON$0_0$0 == 0x00aa
_WDCON	=	0x00aa
G$BODCON1$0_0$0 == 0x00ab
_BODCON1	=	0x00ab
G$P3M1$0_0$0 == 0x00ac
_P3M1	=	0x00ac
G$P3M2$0_0$0 == 0x00ad
_P3M2	=	0x00ad
G$IAPFD$0_0$0 == 0x00ae
_IAPFD	=	0x00ae
G$IAPCN$0_0$0 == 0x00af
_IAPCN	=	0x00af
G$P3$0_0$0 == 0x00b0
_P3	=	0x00b0
G$P0M1$0_0$0 == 0x00b1
_P0M1	=	0x00b1
G$P0M2$0_0$0 == 0x00b2
_P0M2	=	0x00b2
G$P1M1$0_0$0 == 0x00b3
_P1M1	=	0x00b3
G$P1M2$0_0$0 == 0x00b4
_P1M2	=	0x00b4
G$TOE$0_0$0 == 0x00b5
_TOE	=	0x00b5
G$IPH$0_0$0 == 0x00b7
_IPH	=	0x00b7
G$IP$0_0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN$0_0$0 == 0x00b9
_SADEN	=	0x00b9
G$SADEN_1$0_0$0 == 0x00ba
_SADEN_1	=	0x00ba
G$SADDR_1$0_0$0 == 0x00bb
_SADDR_1	=	0x00bb
G$I2DAT$0_0$0 == 0x00bc
_I2DAT	=	0x00bc
G$I2STAT$0_0$0 == 0x00bd
_I2STAT	=	0x00bd
G$I2CLK$0_0$0 == 0x00be
_I2CLK	=	0x00be
G$I2TOC$0_0$0 == 0x00bf
_I2TOC	=	0x00bf
G$I2CON$0_0$0 == 0x00c0
_I2CON	=	0x00c0
G$I2ADDR$0_0$0 == 0x00c1
_I2ADDR	=	0x00c1
G$ADCRL$0_0$0 == 0x00c2
_ADCRL	=	0x00c2
G$ADCRH$0_0$0 == 0x00c3
_ADCRH	=	0x00c3
G$T3CON$0_0$0 == 0x00c4
_T3CON	=	0x00c4
G$RL3$0_0$0 == 0x00c5
_RL3	=	0x00c5
G$RH3$0_0$0 == 0x00c6
_RH3	=	0x00c6
G$TA$0_0$0 == 0x00c7
_TA	=	0x00c7
G$T2CON$0_0$0 == 0x00c8
_T2CON	=	0x00c8
G$T2MOD$0_0$0 == 0x00c9
_T2MOD	=	0x00c9
G$RCMP2L$0_0$0 == 0x00ca
_RCMP2L	=	0x00ca
G$RCMP2H$0_0$0 == 0x00cb
_RCMP2H	=	0x00cb
G$TL2$0_0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0_0$0 == 0x00cd
_TH2	=	0x00cd
G$ADCMPL$0_0$0 == 0x00ce
_ADCMPL	=	0x00ce
G$ADCMPH$0_0$0 == 0x00cf
_ADCMPH	=	0x00cf
G$PSW$0_0$0 == 0x00d0
_PSW	=	0x00d0
G$PWM0PH$0_0$0 == 0x00d1
_PWM0PH	=	0x00d1
G$PWM0C0H$0_0$0 == 0x00d2
_PWM0C0H	=	0x00d2
G$PWM0C1H$0_0$0 == 0x00d3
_PWM0C1H	=	0x00d3
G$PWM0C2H$0_0$0 == 0x00d4
_PWM0C2H	=	0x00d4
G$PWM0C3H$0_0$0 == 0x00d5
_PWM0C3H	=	0x00d5
G$PNP$0_0$0 == 0x00d6
_PNP	=	0x00d6
G$PWM0FBD$0_0$0 == 0x00d7
_PWM0FBD	=	0x00d7
G$PWM0CON0$0_0$0 == 0x00d8
_PWM0CON0	=	0x00d8
G$PWM0PL$0_0$0 == 0x00d9
_PWM0PL	=	0x00d9
G$PWM0C0L$0_0$0 == 0x00da
_PWM0C0L	=	0x00da
G$PWM0C1L$0_0$0 == 0x00db
_PWM0C1L	=	0x00db
G$PWM0C2L$0_0$0 == 0x00dc
_PWM0C2L	=	0x00dc
G$PWM0C3L$0_0$0 == 0x00dd
_PWM0C3L	=	0x00dd
G$PIOCON0$0_0$0 == 0x00de
_PIOCON0	=	0x00de
G$PWM0CON1$0_0$0 == 0x00df
_PWM0CON1	=	0x00df
G$ACC$0_0$0 == 0x00e0
_ACC	=	0x00e0
G$ADCCON1$0_0$0 == 0x00e1
_ADCCON1	=	0x00e1
G$ADCCON2$0_0$0 == 0x00e2
_ADCCON2	=	0x00e2
G$ADCDLY$0_0$0 == 0x00e3
_ADCDLY	=	0x00e3
G$C0L$0_0$0 == 0x00e4
_C0L	=	0x00e4
G$C0H$0_0$0 == 0x00e5
_C0H	=	0x00e5
G$C1L$0_0$0 == 0x00e6
_C1L	=	0x00e6
G$C1H$0_0$0 == 0x00e7
_C1H	=	0x00e7
G$ADCCON0$0_0$0 == 0x00e8
_ADCCON0	=	0x00e8
G$PICON$0_0$0 == 0x00e9
_PICON	=	0x00e9
G$PINEN$0_0$0 == 0x00ea
_PINEN	=	0x00ea
G$PIPEN$0_0$0 == 0x00eb
_PIPEN	=	0x00eb
G$PIF$0_0$0 == 0x00ec
_PIF	=	0x00ec
G$C2L$0_0$0 == 0x00ed
_C2L	=	0x00ed
G$C2H$0_0$0 == 0x00ee
_C2H	=	0x00ee
G$EIP$0_0$0 == 0x00ef
_EIP	=	0x00ef
G$B$0_0$0 == 0x00f0
_B	=	0x00f0
G$CAPCON3$0_0$0 == 0x00f1
_CAPCON3	=	0x00f1
G$CAPCON4$0_0$0 == 0x00f2
_CAPCON4	=	0x00f2
G$SPCR$0_0$0 == 0x00f3
_SPCR	=	0x00f3
G$SPSR$0_0$0 == 0x00f4
_SPSR	=	0x00f4
G$SPDR$0_0$0 == 0x00f5
_SPDR	=	0x00f5
G$AINDIDS0$0_0$0 == 0x00f6
_AINDIDS0	=	0x00f6
G$EIPH$0_0$0 == 0x00f7
_EIPH	=	0x00f7
G$SCON_1$0_0$0 == 0x00f8
_SCON_1	=	0x00f8
G$PWM0DTEN$0_0$0 == 0x00f9
_PWM0DTEN	=	0x00f9
G$PWM0DTCNT$0_0$0 == 0x00fa
_PWM0DTCNT	=	0x00fa
G$PWM0MEN$0_0$0 == 0x00fb
_PWM0MEN	=	0x00fb
G$PWM0MD$0_0$0 == 0x00fc
_PWM0MD	=	0x00fc
G$PORDIS$0_0$0 == 0x00fd
_PORDIS	=	0x00fd
G$EIP1$0_0$0 == 0x00fe
_EIP1	=	0x00fe
G$EIPH1$0_0$0 == 0x00ff
_EIPH1	=	0x00ff
G$P3S$0_0$0 == 0x00ac
_P3S	=	0x00ac
G$P3SR$0_0$0 == 0x00ad
_P3SR	=	0x00ad
G$P0S$0_0$0 == 0x00b1
_P0S	=	0x00b1
G$P0SR$0_0$0 == 0x00b2
_P0SR	=	0x00b2
G$P1S$0_0$0 == 0x00b3
_P1S	=	0x00b3
G$P1SR$0_0$0 == 0x00b4
_P1SR	=	0x00b4
G$PWM0INTC$0_0$0 == 0x00b7
_PWM0INTC	=	0x00b7
G$PWM0C4H$0_0$0 == 0x00c4
_PWM0C4H	=	0x00c4
G$PWM0C5H$0_0$0 == 0x00c5
_PWM0C5H	=	0x00c5
G$PIOCON1$0_0$0 == 0x00c6
_PIOCON1	=	0x00c6
G$PWM0C4L$0_0$0 == 0x00cc
_PWM0C4L	=	0x00cc
G$PWM0C5L$0_0$0 == 0x00cd
_PWM0C5L	=	0x00cd
G$SPCR2$0_0$0 == 0x00f3
_SPCR2	=	0x00f3
G$LVRDIS$0_0$0 == 0x00ff
_LVRDIS	=	0x00ff
G$ADCBAL$0_0$0 == 0x0084
_ADCBAL	=	0x0084
G$ADCBAH$0_0$0 == 0x0085
_ADCBAH	=	0x0085
G$ADCCON3$0_0$0 == 0x0086
_ADCCON3	=	0x0086
G$P2M1$0_0$0 == 0x0089
_P2M1	=	0x0089
G$P2M2$0_0$0 == 0x008a
_P2M2	=	0x008a
G$P2SR$0_0$0 == 0x008b
_P2SR	=	0x008b
G$P2S$0_0$0 == 0x008c
_P2S	=	0x008c
G$ADCSN$0_0$0 == 0x008d
_ADCSN	=	0x008d
G$ADCCN$0_0$0 == 0x008e
_ADCCN	=	0x008e
G$ADCSR$0_0$0 == 0x008f
_ADCSR	=	0x008f
G$P0UP$0_0$0 == 0x0092
_P0UP	=	0x0092
G$P1UP$0_0$0 == 0x0093
_P1UP	=	0x0093
G$P2UP$0_0$0 == 0x0094
_P2UP	=	0x0094
G$P3UP$0_0$0 == 0x0095
_P3UP	=	0x0095
G$RWKH$0_0$0 == 0x0097
_RWKH	=	0x0097
G$AINDIDS1$0_0$0 == 0x0099
_AINDIDS1	=	0x0099
G$P0DW$0_0$0 == 0x009a
_P0DW	=	0x009a
G$P1DW$0_0$0 == 0x009b
_P1DW	=	0x009b
G$P2DW$0_0$0 == 0x009c
_P2DW	=	0x009c
G$P3DW$0_0$0 == 0x009d
_P3DW	=	0x009d
G$AUXR2$0_0$0 == 0x00a1
_AUXR2	=	0x00a1
G$AUXR3$0_0$0 == 0x00a2
_AUXR3	=	0x00a2
G$AUXR4$0_0$0 == 0x00a3
_AUXR4	=	0x00a3
G$AUXR5$0_0$0 == 0x00a4
_AUXR5	=	0x00a4
G$AUXR6$0_0$0 == 0x00a5
_AUXR6	=	0x00a5
G$AUXR7$0_0$0 == 0x00a6
_AUXR7	=	0x00a6
G$AUXR8$0_0$0 == 0x00a7
_AUXR8	=	0x00a7
G$PWM1PH$0_0$0 == 0x00a9
_PWM1PH	=	0x00a9
G$PWM1C0H$0_0$0 == 0x00aa
_PWM1C0H	=	0x00aa
G$PWM1C1H$0_0$0 == 0x00ab
_PWM1C1H	=	0x00ab
G$PWM1MD$0_0$0 == 0x00ac
_PWM1MD	=	0x00ac
G$PWM1MEN$0_0$0 == 0x00ad
_PWM1MEN	=	0x00ad
G$PWM1PL$0_0$0 == 0x00b1
_PWM1PL	=	0x00b1
G$PWM1C0L$0_0$0 == 0x00b2
_PWM1C0L	=	0x00b2
G$PWM1C1L$0_0$0 == 0x00b3
_PWM1C1L	=	0x00b3
G$PWM1CON0$0_0$0 == 0x00b4
_PWM1CON0	=	0x00b4
G$PWM1CON1$0_0$0 == 0x00b5
_PWM1CON1	=	0x00b5
G$PWM1INTC$0_0$0 == 0x00b6
_PWM1INTC	=	0x00b6
G$PIOCON2$0_0$0 == 0x00b7
_PIOCON2	=	0x00b7
G$PWM2PH$0_0$0 == 0x00b9
_PWM2PH	=	0x00b9
G$PWM2C0H$0_0$0 == 0x00ba
_PWM2C0H	=	0x00ba
G$PWM2C1H$0_0$0 == 0x00bb
_PWM2C1H	=	0x00bb
G$PWM2MD$0_0$0 == 0x00bc
_PWM2MD	=	0x00bc
G$PWM2MEN$0_0$0 == 0x00bd
_PWM2MEN	=	0x00bd
G$PWM2PL$0_0$0 == 0x00c1
_PWM2PL	=	0x00c1
G$PWM2C0L$0_0$0 == 0x00c2
_PWM2C0L	=	0x00c2
G$PWM2C1L$0_0$0 == 0x00c3
_PWM2C1L	=	0x00c3
G$PWM2CON0$0_0$0 == 0x00c4
_PWM2CON0	=	0x00c4
G$PWM2CON1$0_0$0 == 0x00c5
_PWM2CON1	=	0x00c5
G$PWM2INTC$0_0$0 == 0x00c6
_PWM2INTC	=	0x00c6
G$PWM3PH$0_0$0 == 0x00c9
_PWM3PH	=	0x00c9
G$PWM3C0H$0_0$0 == 0x00ca
_PWM3C0H	=	0x00ca
G$PWM3C1H$0_0$0 == 0x00cb
_PWM3C1H	=	0x00cb
G$PWM3MD$0_0$0 == 0x00cc
_PWM3MD	=	0x00cc
G$PWM3MEN$0_0$0 == 0x00cd
_PWM3MEN	=	0x00cd
G$EIP2$0_0$0 == 0x00ce
_EIP2	=	0x00ce
G$EIPH2$0_0$0 == 0x00cf
_EIPH2	=	0x00cf
G$PWM3PL$0_0$0 == 0x00d1
_PWM3PL	=	0x00d1
G$PWM3C0L$0_0$0 == 0x00d2
_PWM3C0L	=	0x00d2
G$PWM3C1L$0_0$0 == 0x00d3
_PWM3C1L	=	0x00d3
G$PWM3CON0$0_0$0 == 0x00d4
_PWM3CON0	=	0x00d4
G$PWM3CON1$0_0$0 == 0x00d5
_PWM3CON1	=	0x00d5
G$PWM3INTC$0_0$0 == 0x00d6
_PWM3INTC	=	0x00d6
G$XTLCON$0_0$0 == 0x00d7
_XTLCON	=	0x00d7
G$SC0DR$0_0$0 == 0x00d9
_SC0DR	=	0x00d9
G$SC0EGT$0_0$0 == 0x00da
_SC0EGT	=	0x00da
G$SC0ETURD0$0_0$0 == 0x00db
_SC0ETURD0	=	0x00db
G$SC0ETURD1$0_0$0 == 0x00dc
_SC0ETURD1	=	0x00dc
G$SC0IE$0_0$0 == 0x00dd
_SC0IE	=	0x00dd
G$SC0IS$0_0$0 == 0x00de
_SC0IS	=	0x00de
G$SC0TSR$0_0$0 == 0x00df
_SC0TSR	=	0x00df
G$SC1DR$0_0$0 == 0x00e1
_SC1DR	=	0x00e1
G$SC1EGT$0_0$0 == 0x00e2
_SC1EGT	=	0x00e2
G$SC1ETURD0$0_0$0 == 0x00e3
_SC1ETURD0	=	0x00e3
G$SC1ETURD1$0_0$0 == 0x00e4
_SC1ETURD1	=	0x00e4
G$SC1IE$0_0$0 == 0x00e5
_SC1IE	=	0x00e5
G$SC1IS$0_0$0 == 0x00e6
_SC1IS	=	0x00e6
G$SC1TSR$0_0$0 == 0x00e7
_SC1TSR	=	0x00e7
G$SC2DR$0_0$0 == 0x00e9
_SC2DR	=	0x00e9
G$SC2EGT$0_0$0 == 0x00ea
_SC2EGT	=	0x00ea
G$SC2ETURD0$0_0$0 == 0x00eb
_SC2ETURD0	=	0x00eb
G$SC2ETURD1$0_0$0 == 0x00ec
_SC2ETURD1	=	0x00ec
G$SC2IE$0_0$0 == 0x00ed
_SC2IE	=	0x00ed
G$SC2IS$0_0$0 == 0x00ee
_SC2IS	=	0x00ee
G$SC2TSR$0_0$0 == 0x00ef
_SC2TSR	=	0x00ef
G$SC0CR0$0_0$0 == 0x00f1
_SC0CR0	=	0x00f1
G$SC0CR1$0_0$0 == 0x00f2
_SC0CR1	=	0x00f2
G$SC1CR0$0_0$0 == 0x00f3
_SC1CR0	=	0x00f3
G$SC1CR1$0_0$0 == 0x00f4
_SC1CR1	=	0x00f4
G$SC2CR0$0_0$0 == 0x00f5
_SC2CR0	=	0x00f5
G$SC2CR1$0_0$0 == 0x00f6
_SC2CR1	=	0x00f6
G$PIPS7$0_0$0 == 0x00f7
_PIPS7	=	0x00f7
G$PIPS0$0_0$0 == 0x00f9
_PIPS0	=	0x00f9
G$PIPS1$0_0$0 == 0x00fa
_PIPS1	=	0x00fa
G$PIPS2$0_0$0 == 0x00fb
_PIPS2	=	0x00fb
G$PIPS3$0_0$0 == 0x00fc
_PIPS3	=	0x00fc
G$PIPS4$0_0$0 == 0x00fd
_PIPS4	=	0x00fd
G$PIPS5$0_0$0 == 0x00fe
_PIPS5	=	0x00fe
G$PIPS6$0_0$0 == 0x00ff
_PIPS6	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$SM0_1$0_0$0 == 0x00ff
_SM0_1	=	0x00ff
G$FE_1$0_0$0 == 0x00ff
_FE_1	=	0x00ff
G$SM1_1$0_0$0 == 0x00fe
_SM1_1	=	0x00fe
G$SM2_1$0_0$0 == 0x00fd
_SM2_1	=	0x00fd
G$REN_1$0_0$0 == 0x00fc
_REN_1	=	0x00fc
G$TB8_1$0_0$0 == 0x00fb
_TB8_1	=	0x00fb
G$RB8_1$0_0$0 == 0x00fa
_RB8_1	=	0x00fa
G$TI_1$0_0$0 == 0x00f9
_TI_1	=	0x00f9
G$RI_1$0_0$0 == 0x00f8
_RI_1	=	0x00f8
G$ADCF$0_0$0 == 0x00ef
_ADCF	=	0x00ef
G$ADCS$0_0$0 == 0x00ee
_ADCS	=	0x00ee
G$ETGSEL1$0_0$0 == 0x00ed
_ETGSEL1	=	0x00ed
G$ETGSEL0$0_0$0 == 0x00ec
_ETGSEL0	=	0x00ec
G$ADCHS3$0_0$0 == 0x00eb
_ADCHS3	=	0x00eb
G$ADCHS2$0_0$0 == 0x00ea
_ADCHS2	=	0x00ea
G$ADCHS1$0_0$0 == 0x00e9
_ADCHS1	=	0x00e9
G$ADCHS0$0_0$0 == 0x00e8
_ADCHS0	=	0x00e8
G$PWMRUN$0_0$0 == 0x00df
_PWMRUN	=	0x00df
G$LOAD$0_0$0 == 0x00de
_LOAD	=	0x00de
G$PWMF$0_0$0 == 0x00dd
_PWMF	=	0x00dd
G$CLRPWM$0_0$0 == 0x00dc
_CLRPWM	=	0x00dc
G$CY$0_0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0_0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0_0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0_0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0_0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0_0$0 == 0x00d2
_OV	=	0x00d2
G$P$0_0$0 == 0x00d0
_P	=	0x00d0
G$TF2$0_0$0 == 0x00cf
_TF2	=	0x00cf
G$TR2$0_0$0 == 0x00ca
_TR2	=	0x00ca
G$CM_RL2$0_0$0 == 0x00c8
_CM_RL2	=	0x00c8
G$I2CEN$0_0$0 == 0x00c6
_I2CEN	=	0x00c6
G$STA$0_0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0_0$0 == 0x00c4
_STO	=	0x00c4
G$SI$0_0$0 == 0x00c3
_SI	=	0x00c3
G$AA$0_0$0 == 0x00c2
_AA	=	0x00c2
G$I2CPX$0_0$0 == 0x00c0
_I2CPX	=	0x00c0
G$PADC$0_0$0 == 0x00be
_PADC	=	0x00be
G$PBOD$0_0$0 == 0x00bd
_PBOD	=	0x00bd
G$PS$0_0$0 == 0x00bc
_PS	=	0x00bc
G$PT1$0_0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0_0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0_0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0_0$0 == 0x00b8
_PX0	=	0x00b8
G$P37$0_0$0 == 0x00b7
_P37	=	0x00b7
G$P36$0_0$0 == 0x00b6
_P36	=	0x00b6
G$P35$0_0$0 == 0x00b5
_P35	=	0x00b5
G$P34$0_0$0 == 0x00b4
_P34	=	0x00b4
G$P33$0_0$0 == 0x00b3
_P33	=	0x00b3
G$P32$0_0$0 == 0x00b2
_P32	=	0x00b2
G$P31$0_0$0 == 0x00b1
_P31	=	0x00b1
G$P30$0_0$0 == 0x00b0
_P30	=	0x00b0
G$EA$0_0$0 == 0x00af
_EA	=	0x00af
G$EADC$0_0$0 == 0x00ae
_EADC	=	0x00ae
G$EBOD$0_0$0 == 0x00ad
_EBOD	=	0x00ad
G$ES$0_0$0 == 0x00ac
_ES	=	0x00ac
G$ET1$0_0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0_0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0_0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0_0$0 == 0x00a8
_EX0	=	0x00a8
G$P20$0_0$0 == 0x00a0
_P20	=	0x00a0
G$SM0$0_0$0 == 0x009f
_SM0	=	0x009f
G$FE$0_0$0 == 0x009f
_FE	=	0x009f
G$SM1$0_0$0 == 0x009e
_SM1	=	0x009e
G$SM2$0_0$0 == 0x009d
_SM2	=	0x009d
G$REN$0_0$0 == 0x009c
_REN	=	0x009c
G$TB8$0_0$0 == 0x009b
_TB8	=	0x009b
G$RB8$0_0$0 == 0x009a
_RB8	=	0x009a
G$TI$0_0$0 == 0x0099
_TI	=	0x0099
G$RI$0_0$0 == 0x0098
_RI	=	0x0098
G$P17$0_0$0 == 0x0097
_P17	=	0x0097
G$P16$0_0$0 == 0x0096
_P16	=	0x0096
G$TXD_1$0_0$0 == 0x0096
_TXD_1	=	0x0096
G$P15$0_0$0 == 0x0095
_P15	=	0x0095
G$P14$0_0$0 == 0x0094
_P14	=	0x0094
G$SDA$0_0$0 == 0x0094
_SDA	=	0x0094
G$P13$0_0$0 == 0x0093
_P13	=	0x0093
G$SCL$0_0$0 == 0x0093
_SCL	=	0x0093
G$P12$0_0$0 == 0x0092
_P12	=	0x0092
G$P11$0_0$0 == 0x0091
_P11	=	0x0091
G$P10$0_0$0 == 0x0090
_P10	=	0x0090
G$TF1$0_0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0_0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0_0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0_0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0_0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0_0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0_0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0_0$0 == 0x0088
_IT0	=	0x0088
G$P07$0_0$0 == 0x0087
_P07	=	0x0087
G$RXD$0_0$0 == 0x0087
_RXD	=	0x0087
G$P06$0_0$0 == 0x0086
_P06	=	0x0086
G$TXD$0_0$0 == 0x0086
_TXD	=	0x0086
G$P05$0_0$0 == 0x0085
_P05	=	0x0085
G$P04$0_0$0 == 0x0084
_P04	=	0x0084
G$STADC$0_0$0 == 0x0084
_STADC	=	0x0084
G$P03$0_0$0 == 0x0083
_P03	=	0x0083
G$P02$0_0$0 == 0x0082
_P02	=	0x0082
G$RXD_1$0_0$0 == 0x0082
_RXD_1	=	0x0082
G$P01$0_0$0 == 0x0081
_P01	=	0x0081
G$MISO$0_0$0 == 0x0081
_MISO	=	0x0081
G$P00$0_0$0 == 0x0080
_P00	=	0x0080
G$MOSI$0_0$0 == 0x0080
_MOSI	=	0x0080
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$GPIO.C$20$0_0$49 ==.
;	..\GPIO.C:20: void main (void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$GPIO.C$22$1_0$49 ==.
;	..\GPIO.C:22: ALL_GPIO_QUASI_MODE;
	mov	_SFRS,#0x00
	mov	_P0M1,#0x00
	mov	_P0M2,#0x00
	mov	_P1M1,#0x00
	mov	_P1M2,#0x00
	mov	_SFRS,#0x02
	mov	_P2M1,#0x00
	mov	_P2M2,#0x00
	mov	_SFRS,#0x00
	mov	_P3M1,#0x00
	mov	_P3M2,#0x00
	C$GPIO.C$23$1_0$49 ==.
;	..\GPIO.C:23: while(1)
00102$:
	C$GPIO.C$25$2_0$50 ==.
;	..\GPIO.C:25: P1 = 0xff;
	mov	_P1,#0xff
	C$GPIO.C$26$2_0$50 ==.
;	..\GPIO.C:26: P2 = 0xFF;
	mov	_P2,#0xff
	C$GPIO.C$27$2_0$50 ==.
;	..\GPIO.C:27: P3 =0xFF;
	mov	_P3,#0xff
	C$GPIO.C$28$2_0$50 ==.
;	..\GPIO.C:28: P0 =0xFF;
	mov	_P0,#0xff
	C$GPIO.C$29$2_0$50 ==.
;	..\GPIO.C:29: Timer0_Delay(16000000,100,1000);;
	mov	_Timer0_Delay_PARM_2,#0x64
	mov	(_Timer0_Delay_PARM_2 + 1),#0x00
	mov	_Timer0_Delay_PARM_3,#0xe8
	mov	(_Timer0_Delay_PARM_3 + 1),#0x03
	mov	dptr,#0x2400
	mov	b,#0xf4
	clr	a
	lcall	_Timer0_Delay
	C$GPIO.C$30$2_0$50 ==.
;	..\GPIO.C:30: P1 = 0x00;
	mov	_P1,#0x00
	C$GPIO.C$31$2_0$50 ==.
;	..\GPIO.C:31: P2 = 0x00;
	mov	_P2,#0x00
	C$GPIO.C$32$2_0$50 ==.
;	..\GPIO.C:32: P3 =0x00;
	mov	_P3,#0x00
	C$GPIO.C$33$2_0$50 ==.
;	..\GPIO.C:33: P0 =0x00;
	mov	_P0,#0x00
	C$GPIO.C$34$2_0$50 ==.
;	..\GPIO.C:34: Timer0_Delay(16000000,100,1000);;
	mov	_Timer0_Delay_PARM_2,#0x64
	mov	(_Timer0_Delay_PARM_2 + 1),#0x00
	mov	_Timer0_Delay_PARM_3,#0xe8
	mov	(_Timer0_Delay_PARM_3 + 1),#0x03
	mov	dptr,#0x2400
	mov	b,#0xf4
	clr	a
	lcall	_Timer0_Delay
	sjmp	00102$
	C$GPIO.C$36$1_0$49 ==.
;	..\GPIO.C:36: }
	C$GPIO.C$36$1_0$49 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
