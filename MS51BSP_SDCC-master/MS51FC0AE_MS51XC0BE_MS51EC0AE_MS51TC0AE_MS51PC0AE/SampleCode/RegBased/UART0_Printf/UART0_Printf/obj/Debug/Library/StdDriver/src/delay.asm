;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module delay
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _Timer3_Delay_PARM_4
	.globl _Timer3_Delay_PARM_3
	.globl _Timer3_Delay_PARM_2
	.globl _Timer2_Delay_PARM_4
	.globl _Timer2_Delay_PARM_3
	.globl _Timer2_Delay_PARM_2
	.globl _Timer1_Delay_PARM_3
	.globl _Timer1_Delay_PARM_2
	.globl _Timer0_Delay_PARM_3
	.globl _Timer0_Delay_PARM_2
	.globl _Timer0_Delay
	.globl _Timer1_Delay
	.globl _Timer2_Delay
	.globl _Timer3_Delay
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
Ldelay.Timer0_Delay$u16CNT$1_0$48==.
_Timer0_Delay_PARM_2:
	.ds 2
Ldelay.Timer0_Delay$u16DLYUnit$1_0$48==.
_Timer0_Delay_PARM_3:
	.ds 2
Ldelay.Timer1_Delay$u16CNT$1_0$51==.
_Timer1_Delay_PARM_2:
	.ds 2
Ldelay.Timer1_Delay$u16DLYUnit$1_0$51==.
_Timer1_Delay_PARM_3:
	.ds 2
Ldelay.Timer2_Delay$u16TMDIV$1_0$54==.
_Timer2_Delay_PARM_2:
	.ds 2
Ldelay.Timer2_Delay$u16CNT$1_0$54==.
_Timer2_Delay_PARM_3:
	.ds 2
Ldelay.Timer2_Delay$u32DLYUnit$1_0$54==.
_Timer2_Delay_PARM_4:
	.ds 4
Ldelay.Timer3_Delay$u8TMDIV$1_0$58==.
_Timer3_Delay_PARM_2:
	.ds 1
Ldelay.Timer3_Delay$u16CNT$1_0$58==.
_Timer3_Delay_PARM_3:
	.ds 2
Ldelay.Timer3_Delay$u32DLYUnit$1_0$58==.
_Timer3_Delay_PARM_4:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_Delay'
;------------------------------------------------------------
;u16CNT                    Allocated with name '_Timer0_Delay_PARM_2'
;u16DLYUnit                Allocated with name '_Timer0_Delay_PARM_3'
;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
;TL0TMP                    Allocated to registers r3 
;TH0TMP                    Allocated to registers r7 
;------------------------------------------------------------
	G$Timer0_Delay$0$0 ==.
	C$delay.c$27$0_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:27: void Timer0_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
;	-----------------------------------------
;	 function Timer0_Delay
;	-----------------------------------------
_Timer0_Delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$delay.c$31$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:31: SFRS = 0;
	mov	_SFRS,#0x00
	C$delay.c$32$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:32: TIMER0_FSYS_DIV12;                                  //T0M=0, Timer0 Clock = Fsys/12
	mov	_SFRS,#0x00
	anl	_CKCON,#0xf7
	C$delay.c$33$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:33: ENABLE_TIMER0_MODE1;                                   //Timer0 is 16-bit mode
	mov	_SFRS,#0x00
	anl	_TMOD,#0xf0
	orl	_TMOD,#0x01
	C$delay.c$34$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:34: TL0TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
	mov	__divulong_PARM_2,#0x40
	mov	(__divulong_PARM_2 + 1),#0x42
	mov	(__divulong_PARM_2 + 2),#0x0f
	mov	(__divulong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	__mullong_PARM_2,_Timer0_Delay_PARM_3
	mov	(__mullong_PARM_2 + 1),(_Timer0_Delay_PARM_3 + 1)
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	__divulong_PARM_2,#0x0c
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	ar3,r4
	mov	a,#0xff
	clr	c
	subb	a,r3
	mov	r3,a
	C$delay.c$35$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:35: TH0TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit/12));
	mov	a,#0xff
	clr	c
	subb	a,r4
	mov	a,#0xff
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	mov	ar7,r5
	C$delay.c$37$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:37: while (u16CNT != 0)
	mov	r5,_Timer0_Delay_PARM_2
	mov	r6,(_Timer0_Delay_PARM_2 + 1)
00104$:
	mov	a,r5
	orl	a,r6
	jz	00106$
	C$delay.c$39$2_0$50 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:39: TL0=TL0TMP;
	mov	_TL0,r3
	C$delay.c$40$2_0$50 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:40: TH0=TH0TMP;
	mov	_TH0,r7
	C$delay.c$41$2_0$50 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:41: set_TCON_TR0;                                    //Start Timer0
	orl	_TCON,#0x10
	C$delay.c$42$2_0$50 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:42: while (!TF0);                       //Check Timer0 Time-Out Flag
00101$:
	jnb	_TF0,00101$
	C$delay.c$43$2_0$50 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:43: clr_TCON_TF0;
	anl	_TCON,#0xdf
	C$delay.c$44$2_0$50 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:44: clr_TCON_TR0;                       //Stop Timer0
	anl	_TCON,#0xef
	C$delay.c$45$2_0$50 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:45: u16CNT --;
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
00128$:
	sjmp	00104$
00106$:
	C$delay.c$48$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:48: TL0  = 0; 
	mov	_TL0,#0x00
	C$delay.c$49$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:49: TH0 = 0;
	mov	_TH0,#0x00
	C$delay.c$50$1_0$49 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:50: }
	C$delay.c$50$1_0$49 ==.
	XG$Timer0_Delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer1_Delay'
;------------------------------------------------------------
;u16CNT                    Allocated with name '_Timer1_Delay_PARM_2'
;u16DLYUnit                Allocated with name '_Timer1_Delay_PARM_3'
;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
;TL1TMP                    Allocated to registers r3 
;TH1TMP                    Allocated to registers r7 
;------------------------------------------------------------
	G$Timer1_Delay$0$0 ==.
	C$delay.c$65$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:65: void Timer1_Delay(unsigned long u32SYSCLK, unsigned int u16CNT, unsigned int u16DLYUnit)
;	-----------------------------------------
;	 function Timer1_Delay
;	-----------------------------------------
_Timer1_Delay:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$delay.c$69$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:69: SFRS = 0;
	mov	_SFRS,#0x00
	C$delay.c$70$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:70: TIMER1_FSYS_DIV12;                                 //T1M=0, Timer1 Clock = Fsys/12
	mov	_SFRS,#0x00
	anl	_CKCON,#0xef
	C$delay.c$71$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:71: ENABLE_TIMER1_MODE1;                                //Timer1 is 16-bit mode
	mov	_SFRS,#0x00
	anl	_TMOD,#0x0f
	orl	_TMOD,#0x10
	C$delay.c$72$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:72: TL1TMP = LOBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit)/12);
	mov	__divulong_PARM_2,#0x40
	mov	(__divulong_PARM_2 + 1),#0x42
	mov	(__divulong_PARM_2 + 2),#0x0f
	mov	(__divulong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	__mullong_PARM_2,_Timer1_Delay_PARM_3
	mov	(__mullong_PARM_2 + 1),(_Timer1_Delay_PARM_3 + 1)
	mov	(__mullong_PARM_2 + 2),#0x00
	mov	(__mullong_PARM_2 + 3),#0x00
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	__divulong_PARM_2,#0x0c
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	ar3,r4
	mov	a,#0xff
	clr	c
	subb	a,r3
	mov	r3,a
	C$delay.c$73$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:73: TH1TMP = HIBYTE(65535-((u32SYSCLK/1000000)*u16DLYUnit)/12);
	mov	a,#0xff
	clr	c
	subb	a,r4
	mov	a,#0xff
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	mov	ar7,r5
	C$delay.c$75$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:75: while (u16CNT != 0)
	mov	r5,_Timer1_Delay_PARM_2
	mov	r6,(_Timer1_Delay_PARM_2 + 1)
00104$:
	mov	a,r5
	orl	a,r6
	jz	00107$
	C$delay.c$77$2_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:77: TL1 = TL1TMP;
	mov	_TL1,r3
	C$delay.c$78$2_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:78: TH1 = TH1TMP;
	mov	_TH1,r7
	C$delay.c$79$2_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:79: set_TCON_TR1;                                //Start Timer1
	orl	_TCON,#0x40
	C$delay.c$80$2_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:80: while (!TF1);                                //Check Timer1 Time-Out Flag
00101$:
	jnb	_TF1,00101$
	C$delay.c$81$2_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:81: clr_TCON_TF1;
	anl	_TCON,#0x7f
	C$delay.c$82$2_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:82: clr_TCON_TR1;
	anl	_TCON,#0xbf
	C$delay.c$83$2_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:83: u16CNT --;
	dec	r5
	cjne	r5,#0xff,00128$
	dec	r6
00128$:
	sjmp	00104$
00107$:
	C$delay.c$85$1_0$52 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:85: }
	C$delay.c$85$1_0$52 ==.
	XG$Timer1_Delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer2_Delay'
;------------------------------------------------------------
;u16TMDIV                  Allocated with name '_Timer2_Delay_PARM_2'
;u16CNT                    Allocated with name '_Timer2_Delay_PARM_3'
;u32DLYUnit                Allocated with name '_Timer2_Delay_PARM_4'
;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
;TL2TMP                    Allocated to registers r3 
;TH2TMP                    Allocated to registers r7 
;------------------------------------------------------------
	G$Timer2_Delay$0$0 ==.
	C$delay.c$102$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:102: void Timer2_Delay(unsigned long u32SYSCLK,unsigned int u16TMDIV, unsigned int u16CNT, unsigned long u32DLYUnit)
;	-----------------------------------------
;	 function Timer2_Delay
;	-----------------------------------------
_Timer2_Delay:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$delay.c$106$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:106: SFRS = 0;
	mov	_SFRS,#0x00
	C$delay.c$107$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:107: switch (u16TMDIV)
	mov	a,#0x01
	cjne	a,_Timer2_Delay_PARM_2,00167$
	dec	a
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00167$
	sjmp	00101$
00167$:
	mov	a,#0x04
	cjne	a,_Timer2_Delay_PARM_2,00168$
	clr	a
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00168$
	sjmp	00102$
00168$:
	mov	a,#0x10
	cjne	a,_Timer2_Delay_PARM_2,00169$
	clr	a
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00169$
	sjmp	00103$
00169$:
	mov	a,#0x20
	cjne	a,_Timer2_Delay_PARM_2,00170$
	clr	a
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00170$
	sjmp	00104$
00170$:
	mov	a,#0x40
	cjne	a,_Timer2_Delay_PARM_2,00171$
	clr	a
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00171$
	sjmp	00105$
00171$:
	mov	a,#0x80
	cjne	a,_Timer2_Delay_PARM_2,00172$
	clr	a
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00172$
	sjmp	00106$
00172$:
	clr	a
	cjne	a,_Timer2_Delay_PARM_2,00173$
	inc	a
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00173$
	sjmp	00107$
00173$:
	clr	a
	C$delay.c$109$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:109: case 1:T2MOD&=0x8F; break;
	cjne	a,_Timer2_Delay_PARM_2,00109$
	mov	a,#0x02
	cjne	a,(_Timer2_Delay_PARM_2 + 1),00109$
	sjmp	00108$
00101$:
	anl	_T2MOD,#0x8f
	C$delay.c$110$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:110: case 4:T2MOD&=0x8F;T2MOD|=0x10; break;
	sjmp	00109$
00102$:
	anl	_T2MOD,#0x8f
	orl	_T2MOD,#0x10
	C$delay.c$111$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:111: case 16:T2MOD&=0x8F;T2MOD|=0x20; break;
	sjmp	00109$
00103$:
	anl	_T2MOD,#0x8f
	orl	_T2MOD,#0x20
	C$delay.c$112$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:112: case 32:T2MOD&=0x8F;T2MOD|=0x30; break;
	sjmp	00109$
00104$:
	anl	_T2MOD,#0x8f
	orl	_T2MOD,#0x30
	C$delay.c$113$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:113: case 64:T2MOD&=0x8F;T2MOD|=0x40; break;
	sjmp	00109$
00105$:
	anl	_T2MOD,#0x8f
	orl	_T2MOD,#0x40
	C$delay.c$114$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:114: case 128:T2MOD&=0x8F;T2MOD|=0x50; break;
	sjmp	00109$
00106$:
	anl	_T2MOD,#0x8f
	orl	_T2MOD,#0x50
	C$delay.c$115$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:115: case 256:T2MOD&=0x8F;T2MOD|=0x60; break;
	sjmp	00109$
00107$:
	anl	_T2MOD,#0x8f
	orl	_T2MOD,#0x60
	C$delay.c$116$2_0$56 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:116: case 512:T2MOD&=0x8F;T2MOD|=0x70; break;
	sjmp	00109$
00108$:
	anl	_T2MOD,#0x8f
	orl	_T2MOD,#0x70
	C$delay.c$117$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:117: }
00109$:
	C$delay.c$118$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:118: clr_T2CON_CMRL2;                                  //Timer 2 as auto-reload mode
	anl	_T2CON,#0xfe
	C$delay.c$119$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:119: set_T2MOD_LDEN;
	mov	_SFRS,#0x00
	orl	_T2MOD,#0x80
	C$delay.c$120$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:120: set_T2MOD_CMPCR;                                  //Timer 2 value is auto-cleared as 0000H when a compare match occurs.
	mov	_SFRS,#0x00
	orl	_T2MOD,#0x04
	C$delay.c$121$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:121: TL2TMP = LOBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u16TMDIV));
	mov	__divulong_PARM_2,#0x40
	mov	(__divulong_PARM_2 + 1),#0x42
	mov	(__divulong_PARM_2 + 2),#0x0f
	mov	(__divulong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	__mullong_PARM_2,_Timer2_Delay_PARM_4
	mov	(__mullong_PARM_2 + 1),(_Timer2_Delay_PARM_4 + 1)
	mov	(__mullong_PARM_2 + 2),(_Timer2_Delay_PARM_4 + 2)
	mov	(__mullong_PARM_2 + 3),(_Timer2_Delay_PARM_4 + 3)
	lcall	__mullong
	mov	__divulong_PARM_2,_Timer2_Delay_PARM_2
	mov	(__divulong_PARM_2 + 1),(_Timer2_Delay_PARM_2 + 1)
	mov	(__divulong_PARM_2 + 2),#0x00
	mov	(__divulong_PARM_2 + 3),#0x00
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	ar3,r4
	clr	c
	clr	a
	subb	a,r3
	mov	r3,a
	C$delay.c$122$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:122: TH2TMP = HIBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u16TMDIV));
	clr	a
	clr	c
	subb	a,r4
	clr	a
	subb	a,r5
	mov	r5,a
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	mov	ar7,r5
	C$delay.c$123$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:123: while (u16CNT != 0)
	mov	r5,_Timer2_Delay_PARM_3
	mov	r6,(_Timer2_Delay_PARM_3 + 1)
00113$:
	mov	a,r5
	orl	a,r6
	jz	00116$
	C$delay.c$125$2_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:125: TL2 = TL2TMP;
	mov	_TL2,r3
	C$delay.c$126$2_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:126: TH2 = TH2TMP;
	mov	_TH2,r7
	C$delay.c$127$2_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:127: set_T2CON_TR2;                                    //Start Timer2
	orl	_T2CON,#0x04
	C$delay.c$128$2_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:128: while (TF2!=1);            //Check Timer2 Time-Out Flag
00110$:
	jnb	_TF2,00110$
	C$delay.c$129$2_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:129: clr_T2CON_TF2;
	anl	_T2CON,#0x7f
	C$delay.c$130$2_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:130: clr_T2CON_TR2;                                    //Stop Timer2
	anl	_T2CON,#0xfb
	C$delay.c$131$2_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:131: u16CNT --;
	dec	r5
	cjne	r5,#0xff,00177$
	dec	r6
00177$:
	sjmp	00113$
00116$:
	C$delay.c$133$1_0$55 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:133: }
	C$delay.c$133$1_0$55 ==.
	XG$Timer2_Delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer3_Delay'
;------------------------------------------------------------
;u8TMDIV                   Allocated with name '_Timer3_Delay_PARM_2'
;u16CNT                    Allocated with name '_Timer3_Delay_PARM_3'
;u32DLYUnit                Allocated with name '_Timer3_Delay_PARM_4'
;u32SYSCLK                 Allocated to registers r4 r5 r6 r7 
;TL3TMP                    Allocated to registers r3 
;TH3TMP                    Allocated to registers r7 
;------------------------------------------------------------
	G$Timer3_Delay$0$0 ==.
	C$delay.c$149$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:149: void Timer3_Delay(unsigned long u32SYSCLK,unsigned char u8TMDIV, unsigned int u16CNT, unsigned long u32DLYUnit)
;	-----------------------------------------
;	 function Timer3_Delay
;	-----------------------------------------
_Timer3_Delay:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$delay.c$153$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:153: SFRS = 0;
	mov	_SFRS,#0x00
	C$delay.c$154$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:154: switch (u8TMDIV)
	mov	a,#0x01
	cjne	a,_Timer3_Delay_PARM_2,00167$
	sjmp	00101$
00167$:
	mov	a,#0x02
	cjne	a,_Timer3_Delay_PARM_2,00168$
	sjmp	00102$
00168$:
	mov	a,#0x04
	cjne	a,_Timer3_Delay_PARM_2,00169$
	sjmp	00103$
00169$:
	mov	a,#0x08
	cjne	a,_Timer3_Delay_PARM_2,00170$
	sjmp	00104$
00170$:
	mov	a,#0x10
	cjne	a,_Timer3_Delay_PARM_2,00171$
	sjmp	00105$
00171$:
	mov	a,#0x20
	cjne	a,_Timer3_Delay_PARM_2,00172$
	sjmp	00106$
00172$:
	mov	a,#0x40
	cjne	a,_Timer3_Delay_PARM_2,00173$
	sjmp	00107$
00173$:
	mov	a,#0x80
	C$delay.c$156$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:156: case 1:T3CON&=0xF8; break;
	cjne	a,_Timer3_Delay_PARM_2,00109$
	sjmp	00108$
00101$:
	anl	_T3CON,#0xf8
	C$delay.c$157$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:157: case 2:T3CON&=0xF8;T3CON|=0x01; break;
	sjmp	00109$
00102$:
	anl	_T3CON,#0xf8
	orl	_T3CON,#0x01
	C$delay.c$158$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:158: case 4:T3CON&=0xF8;T3CON|=0x02; break;
	sjmp	00109$
00103$:
	anl	_T3CON,#0xf8
	orl	_T3CON,#0x02
	C$delay.c$159$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:159: case 8:T3CON&=0xF8;T3CON|=0x03; break;
	sjmp	00109$
00104$:
	anl	_T3CON,#0xf8
	orl	_T3CON,#0x03
	C$delay.c$160$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:160: case 16:T3CON&=0xF8;T3CON|=0x04; break;
	sjmp	00109$
00105$:
	anl	_T3CON,#0xf8
	orl	_T3CON,#0x04
	C$delay.c$161$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:161: case 32:T3CON&=0xF8;T3CON|=0x05; break;
	sjmp	00109$
00106$:
	anl	_T3CON,#0xf8
	orl	_T3CON,#0x05
	C$delay.c$162$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:162: case 64:T3CON&=0xF8;T3CON|=0x06; break;
	sjmp	00109$
00107$:
	anl	_T3CON,#0xf8
	orl	_T3CON,#0x06
	C$delay.c$163$2_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:163: case 128:T3CON&=0xF8;T3CON|=0x07; break;
	sjmp	00109$
00108$:
	anl	_T3CON,#0xf8
	orl	_T3CON,#0x07
	C$delay.c$164$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:164: }
00109$:
	C$delay.c$165$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:165: TL3TMP = LOBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u8TMDIV));
	mov	__divulong_PARM_2,#0x40
	mov	(__divulong_PARM_2 + 1),#0x42
	mov	(__divulong_PARM_2 + 2),#0x0f
	mov	(__divulong_PARM_2 + 3),#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	__mullong_PARM_2,_Timer3_Delay_PARM_4
	mov	(__mullong_PARM_2 + 1),(_Timer3_Delay_PARM_4 + 1)
	mov	(__mullong_PARM_2 + 2),(_Timer3_Delay_PARM_4 + 2)
	mov	(__mullong_PARM_2 + 3),(_Timer3_Delay_PARM_4 + 3)
	lcall	__mullong
	mov	__divulong_PARM_2,_Timer3_Delay_PARM_2
	mov	(__divulong_PARM_2 + 1),#0x00
	mov	(__divulong_PARM_2 + 2),#0x00
	mov	(__divulong_PARM_2 + 3),#0x00
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	ar3,r4
	clr	c
	clr	a
	subb	a,r3
	mov	r3,a
	C$delay.c$166$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:166: TH3TMP = HIBYTE(65536-((u32SYSCLK/1000000)*u32DLYUnit/u8TMDIV));
	clr	a
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	mov	ar7,r5
	C$delay.c$167$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:167: while (u16CNT != 0)
	mov	r5,_Timer3_Delay_PARM_3
	mov	r6,(_Timer3_Delay_PARM_3 + 1)
00113$:
	mov	a,r5
	orl	a,r6
	jz	00116$
	C$delay.c$169$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:169: clr_T3CON_TF3;
	mov	_SFRS,#0x00
	anl	_T3CON,#0xef
	C$delay.c$170$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:170: RL3 = TL3TMP;
	mov	_RL3,r3
	C$delay.c$171$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:171: RH3 = TH3TMP;
	mov	_RH3,r7
	C$delay.c$172$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:172: set_T3CON_TR3;                                    //Trigger Timer3
	mov	_SFRS,#0x00
	orl	_T3CON,#0x08
	C$delay.c$173$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:173: while ((T3CON|CLR_BIT4)==CLR_BIT4);    //Check Timer3 Time-Out Flag
00110$:
	mov	r2,_T3CON
	mov	r4,#0x00
	orl	ar2,#0xef
	cjne	r2,#0xef,00176$
	cjne	r4,#0x00,00176$
	sjmp	00110$
00176$:
	C$delay.c$174$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:174: clr_T3CON_TF3;
	mov	_SFRS,#0x00
	anl	_T3CON,#0xef
	C$delay.c$175$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:175: clr_T3CON_TR3;                                    //Stop Timer3
	mov	_SFRS,#0x00
	anl	_T3CON,#0xf7
	C$delay.c$176$2_0$61 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:176: u16CNT --;
	dec	r5
	cjne	r5,#0xff,00177$
	dec	r6
00177$:
	sjmp	00113$
00116$:
	C$delay.c$178$1_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\delay.c:178: }
	C$delay.c$178$1_0$59 ==.
	XG$Timer3_Delay$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
