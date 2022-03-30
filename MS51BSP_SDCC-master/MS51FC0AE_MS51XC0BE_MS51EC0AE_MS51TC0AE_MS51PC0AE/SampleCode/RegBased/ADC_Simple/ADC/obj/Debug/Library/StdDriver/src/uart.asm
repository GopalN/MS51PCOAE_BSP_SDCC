;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART_Send_Data_PARM_2
	.globl _SerialPort1_ISR
	.globl _Serial_ISR
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
	.globl _uart1_receive_flag
	.globl _uart0_receive_flag
	.globl _PRINTFG
	.globl _UART_Open_PARM_3
	.globl _UART_Open_PARM_2
	.globl _uart1_receive_data
	.globl _uart0_receive_data
	.globl _UART_Open
	.globl _Receive_Data
	.globl _UART_Send_Data
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
G$uart0_receive_data$0_0$0==.
_uart0_receive_data::
	.ds 1
G$uart1_receive_data$0_0$0==.
_uart1_receive_data::
	.ds 1
Luart.UART_Open$u8UARTPort$1_0$61==.
_UART_Open_PARM_2:
	.ds 1
Luart.UART_Open$u32Baudrate$1_0$61==.
_UART_Open_PARM_3:
	.ds 4
Luart.UART_Open$sloc0$0_1$0==.
_UART_Open_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
Luart.UART_Send_Data$c$1_0$67==.
_UART_Send_Data_PARM_2:
	.ds 1
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
G$PRINTFG$0_0$0==.
_PRINTFG::
	.ds 1
G$uart0_receive_flag$0_0$0==.
_uart0_receive_flag::
	.ds 1
G$uart1_receive_flag$0_0$0==.
_uart1_receive_flag::
	.ds 1
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
	C$uart.c$14$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:14: __bit PRINTFG = 0;
;	assignBit
	clr	_PRINTFG
	C$uart.c$15$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:15: __bit uart0_receive_flag = 0;
;	assignBit
	clr	_uart0_receive_flag
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
;Allocation info for local variables in function 'Serial_ISR'
;------------------------------------------------------------
	G$Serial_ISR$0$0 ==.
	C$uart.c$20$0_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:20: void Serial_ISR(void) __interrupt 4
;	-----------------------------------------
;	 function Serial_ISR
;	-----------------------------------------
_Serial_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	psw
	C$uart.c$22$1_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:22: _push_(SFRS);
	push	_SFRS 
	C$uart.c$23$1_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:23: if (RI)
	jnb	_RI,00102$
	C$uart.c$25$2_0$54 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:25: uart0_receive_flag = 1;
;	assignBit
	setb	_uart0_receive_flag
	C$uart.c$26$2_0$54 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:26: uart0_receive_data = SBUF;
	mov	_uart0_receive_data,_SBUF
	C$uart.c$27$2_0$54 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:27: clr_SCON_RI;                                         // Clear RI (Receive Interrupt).
	anl	_SCON,#0xfe
00102$:
	C$uart.c$30$1_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:30: if (TI)
	mov	c,_TI
	C$uart.c$37$1_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:37: _pop_(SFRS);
	pop	_SFRS 
	C$uart.c$38$1_0$53 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:38: }
	pop	psw
	C$uart.c$38$1_0$53 ==.
	XG$Serial_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'SerialPort1_ISR'
;------------------------------------------------------------
	G$SerialPort1_ISR$0$0 ==.
	C$uart.c$42$1_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:42: void SerialPort1_ISR(void) __interrupt 15
;	-----------------------------------------
;	 function SerialPort1_ISR
;	-----------------------------------------
_SerialPort1_ISR:
	C$uart.c$44$1_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:44: _push_(SFRS);
	push	_SFRS 
	C$uart.c$46$1_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:46: if (RI_1 == 1)
	jnb	_RI_1,00102$
	C$uart.c$48$2_0$58 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:48: clr_SCON_1_RI_1;                             /* clear reception flag for next reception */
	anl	_SCON_1,#0xfe
	C$uart.c$49$2_0$58 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:49: uart1_receive_data = SBUF_1;
	mov	_uart1_receive_data,_SBUF_1
	C$uart.c$50$2_0$58 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:50: uart1_receive_flag = 1;
;	assignBit
	setb	_uart1_receive_flag
00102$:
	C$uart.c$53$1_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:53: if (TI_1 == 1)
	jnb	_TI_1,00106$
	C$uart.c$55$2_0$59 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:55: if (!PRINTFG)
	jb	_PRINTFG,00106$
	C$uart.c$57$3_0$60 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:57: clr_SCON_1_TI_1;                             /* if emission occur */
	anl	_SCON_1,#0xfd
00106$:
	C$uart.c$60$1_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:60: _pop_(SFRS);
	pop	_SFRS 
	C$uart.c$61$1_0$57 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:61: }
	C$uart.c$61$1_0$57 ==.
	XG$SerialPort1_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Open'
;------------------------------------------------------------
;u8UARTPort                Allocated with name '_UART_Open_PARM_2'
;u32Baudrate               Allocated with name '_UART_Open_PARM_3'
;u32SysClock               Allocated to registers r4 r5 r6 r7 
;sloc0                     Allocated with name '_UART_Open_sloc0_1_0'
;------------------------------------------------------------
	G$UART_Open$0$0 ==.
	C$uart.c$64$1_0$62 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:64: void UART_Open(unsigned long u32SysClock, unsigned char u8UARTPort, unsigned long u32Baudrate)
;	-----------------------------------------
;	 function UART_Open
;	-----------------------------------------
_UART_Open:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$uart.c$66$1_0$62 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:66: SFRS = 0;
	C$uart.c$67$1_0$62 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:67: switch (u8UARTPort)
	clr	a
	mov	_SFRS,a
	cjne	a,_UART_Open_PARM_2,00119$
	sjmp	00101$
00119$:
	mov	a,#0x01
	cjne	a,_UART_Open_PARM_2,00120$
	sjmp	00102$
00120$:
	mov	a,#0x02
	cjne	a,_UART_Open_PARM_2,00121$
	ljmp	00103$
00121$:
	ljmp	00105$
	C$uart.c$69$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:69: case UART0_Timer1:
00101$:
	C$uart.c$70$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:70: SCON = 0x50;            //UART0 Mode1,REN=1,TI=1
	mov	_SCON,#0x50
	C$uart.c$71$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:71: TMOD |= 0x20;           //Timer1 Mode1
	orl	_TMOD,#0x20
	C$uart.c$72$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:72: set_PCON_SMOD;          //UART0 Double Rate Enable
	orl	_PCON,#0x80
	C$uart.c$73$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:73: set_CKCON_T1M;
	mov	_SFRS,#0x00
	orl	_CKCON,#0x10
	C$uart.c$74$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:74: clr_T3CON_BRCK;          //Serial port 0 baud rate clock source = Timer1
	mov	_SFRS,#0x00
	anl	_T3CON,#0xdf
	C$uart.c$75$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:75: TH1 = 256 - (u32SysClock / 16 / u32Baudrate);
	mov	ar0,r4
	mov	a,r5
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r1
	mov	r1,a
	mov	ar2,r6
	mov	a,r7
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	__divulong_PARM_2,_UART_Open_PARM_3
	mov	(__divulong_PARM_2 + 1),(_UART_Open_PARM_3 + 1)
	mov	(__divulong_PARM_2 + 2),(_UART_Open_PARM_3 + 2)
	mov	(__divulong_PARM_2 + 3),(_UART_Open_PARM_3 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__divulong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	clr	c
	clr	a
	subb	a,r0
	mov	_TH1,a
	C$uart.c$76$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:76: set_TCON_TR1;
	orl	_TCON,#0x40
	C$uart.c$77$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:77: set_IE_ES;
	orl	_IE,#0x10
	C$uart.c$78$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:78: break;
	ljmp	00105$
	C$uart.c$80$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:80: case UART0_Timer3:
00102$:
	C$uart.c$81$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:81: SCON = 0x50;          //UART0 Mode1,REN=1,TI=1
	mov	_SCON,#0x50
	C$uart.c$82$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:82: set_PCON_SMOD;        //UART0 Double Rate Enable
	orl	_PCON,#0x80
	C$uart.c$83$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:83: T3CON &= 0xF8;        //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)
	anl	_T3CON,#0xf8
	C$uart.c$84$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:84: set_T3CON_BRCK;        //UART0 baud rate clock source = Timer3
	mov	_SFRS,#0x00
	orl	_T3CON,#0x20
	C$uart.c$85$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:85: RH3    = HIBYTE(65536 - (u32SysClock / 16 / u32Baudrate));
	mov	ar0,r4
	mov	a,r5
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0f
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0f
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r1
	mov	r1,a
	mov	ar2,r6
	mov	a,r7
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	__divulong_PARM_2,_UART_Open_PARM_3
	mov	(__divulong_PARM_2 + 1),(_UART_Open_PARM_3 + 1)
	mov	(__divulong_PARM_2 + 2),(_UART_Open_PARM_3 + 2)
	mov	(__divulong_PARM_2 + 3),(_UART_Open_PARM_3 + 3)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__divulong
	mov	_UART_Open_sloc0_1_0,dpl
	mov	(_UART_Open_sloc0_1_0 + 1),dph
	mov	(_UART_Open_sloc0_1_0 + 2),b
	mov	(_UART_Open_sloc0_1_0 + 3),a
	clr	a
	clr	c
	subb	a,_UART_Open_sloc0_1_0
	clr	a
	subb	a,(_UART_Open_sloc0_1_0 + 1)
	mov	r1,a
	mov	a,#0x01
	subb	a,(_UART_Open_sloc0_1_0 + 2)
	mov	r2,a
	clr	a
	subb	a,(_UART_Open_sloc0_1_0 + 3)
	mov	r3,a
	mov	_RH3,r1
	C$uart.c$86$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:86: RL3    = LOBYTE(65536 - (u32SysClock / 16 / u32Baudrate));
	mov	r0,_UART_Open_sloc0_1_0
	clr	c
	clr	a
	subb	a,r0
	mov	r0,a
	mov	_RL3,r0
	C$uart.c$87$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:87: set_T3CON_TR3;         //Trigger Timer3
	mov	_SFRS,#0x00
	orl	_T3CON,#0x08
	C$uart.c$88$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:88: set_IE_ES;
	orl	_IE,#0x10
	C$uart.c$89$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:89: break;
	C$uart.c$91$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:91: case UART1_Timer3:
	sjmp	00105$
00103$:
	C$uart.c$92$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:92: SCON_1 = 0x50;          //UART1 Mode1,REN_1=1,TI_1=1
	mov	_SCON_1,#0x50
	C$uart.c$93$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:93: T3CON = 0x80;           //T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1), UART1 in MODE 1
	mov	_T3CON,#0x80
	C$uart.c$94$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:94: RH3    = HIBYTE(65536 - (u32SysClock/16/u32Baudrate));
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	__divulong_PARM_2,_UART_Open_PARM_3
	mov	(__divulong_PARM_2 + 1),(_UART_Open_PARM_3 + 1)
	mov	(__divulong_PARM_2 + 2),(_UART_Open_PARM_3 + 2)
	mov	(__divulong_PARM_2 + 3),(_UART_Open_PARM_3 + 3)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	clr	a
	clr	c
	subb	a,r4
	mov	r0,a
	clr	a
	subb	a,r5
	mov	r1,a
	mov	a,#0x01
	subb	a,r6
	mov	r2,a
	clr	a
	subb	a,r7
	mov	r3,a
	mov	_RH3,r1
	C$uart.c$95$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:95: RL3    = LOBYTE(65536 - (u32SysClock/16/u32Baudrate));
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	mov	_RL3,r4
	C$uart.c$96$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:96: set_T3CON_TR3;             //Trigger Timer3
	mov	_SFRS,#0x00
	orl	_T3CON,#0x08
	C$uart.c$97$2_0$63 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:97: set_EIE1_ES_1;
	mov	_SFRS,#0x00
	orl	_EIE1,#0x01
	C$uart.c$99$1_0$62 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:99: }
00105$:
	C$uart.c$100$1_0$62 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:100: }
	C$uart.c$100$1_0$62 ==.
	XG$UART_Open$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Receive_Data'
;------------------------------------------------------------
;UARTPort                  Allocated to registers r7 
;c                         Allocated to registers r6 
;------------------------------------------------------------
	G$Receive_Data$0$0 ==.
	C$uart.c$102$1_0$65 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:102: unsigned char Receive_Data(unsigned char UARTPort)
;	-----------------------------------------
;	 function Receive_Data
;	-----------------------------------------
_Receive_Data:
	mov	r7,dpl
	C$uart.c$104$2_0$65 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:104: UINT8 c=0;
	mov	r6,#0x00
	C$uart.c$105$1_0$65 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:105: SFRS = 0;
;	1-genFromRTrack replaced	mov	_SFRS,#0x00
	mov	_SFRS,r6
	C$uart.c$106$1_0$65 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:106: switch (UARTPort)
	cjne	r7,#0x00,00136$
	sjmp	00102$
00136$:
	C$uart.c$109$2_0$66 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:109: while (!RI);
	cjne	r7,#0x01,00109$
	sjmp	00106$
00102$:
	jnb	_RI,00102$
	C$uart.c$110$2_0$66 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:110: c = SBUF;
	mov	r6,_SBUF
	C$uart.c$111$2_0$66 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:111: RI = 0;
;	assignBit
	clr	_RI
	C$uart.c$112$2_0$66 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:112: break;
	C$uart.c$115$2_0$66 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:115: while (!RI_1);
	sjmp	00109$
00106$:
	jnb	_RI_1,00106$
	C$uart.c$116$2_0$66 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:116: c = SBUF_1;
	mov	r6,_SBUF_1
	C$uart.c$117$2_0$66 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:117: RI_1 = 0;
;	assignBit
	clr	_RI_1
	C$uart.c$119$1_0$65 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:119: }
00109$:
	C$uart.c$121$1_0$65 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:121: return (c);
	mov	dpl,r6
	C$uart.c$122$1_0$65 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:122: }
	C$uart.c$122$1_0$65 ==.
	XG$Receive_Data$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Send_Data'
;------------------------------------------------------------
;c                         Allocated with name '_UART_Send_Data_PARM_2'
;UARTPort                  Allocated to registers r7 
;------------------------------------------------------------
	G$UART_Send_Data$0$0 ==.
	C$uart.c$124$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:124: void UART_Send_Data(unsigned char UARTPort, unsigned char c)
;	-----------------------------------------
;	 function UART_Send_Data
;	-----------------------------------------
_UART_Send_Data:
	mov	r7,dpl
	C$uart.c$126$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:126: _push_(SFRS);
	push	_SFRS 
	C$uart.c$127$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:127: SFRS = 0;
	mov	_SFRS,#0x00
	C$uart.c$128$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:128: switch (UARTPort)
	cjne	r7,#0x00,00132$
	sjmp	00101$
00132$:
	C$uart.c$130$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:130: case UART0:
	cjne	r7,#0x01,00109$
	sjmp	00105$
00101$:
	C$uart.c$131$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:131: TI=0;
;	assignBit
	clr	_TI
	C$uart.c$132$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:132: SBUF = c;
	mov	_SBUF,_UART_Send_Data_PARM_2
	C$uart.c$133$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:133: while(!TI);
00102$:
	jb	_TI,00109$
	C$uart.c$135$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:135: case UART1:
	sjmp	00102$
00105$:
	C$uart.c$136$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:136: TI_1=0;
;	assignBit
	clr	_TI_1
	C$uart.c$137$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:137: SBUF_1 = c;
	mov	_SBUF_1,_UART_Send_Data_PARM_2
	C$uart.c$138$2_0$69 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:138: while(TI_1);
00106$:
	jb	_TI_1,00106$
	C$uart.c$140$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:140: }
00109$:
	C$uart.c$141$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:141: _pop_(SFRS);
	pop	_SFRS 
	C$uart.c$142$1_0$68 ==.
;	..\..\..\..\Library\StdDriver\src\uart.c:142: }
	C$uart.c$142$1_0$68 ==.
	XG$UART_Send_Data$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
