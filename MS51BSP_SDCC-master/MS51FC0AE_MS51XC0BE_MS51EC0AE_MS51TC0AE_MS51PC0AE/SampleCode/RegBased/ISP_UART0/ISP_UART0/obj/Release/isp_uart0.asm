;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module isp_uart0
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Timer0_ISR
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
	.globl _uart_txbuf
	.globl _uart_rcvbuf
	.globl _BIT_TMP
	.globl _g_progarmflag
	.globl _g_timer1Over
	.globl _g_timer0Over
	.globl _bUartDataReady
	.globl _recv_CONF4
	.globl _recv_CONF2
	.globl _recv_CONF1
	.globl _recv_CONF0
	.globl _CONF4
	.globl _CONF2
	.globl _CONF1
	.globl _CONF0
	.globl _DID_lowB
	.globl _DID_highB
	.globl _PID_lowB
	.globl _PID_highB
	.globl _g_totalchecksum
	.globl _g_checksum
	.globl _g_timer0Counter
	.globl _count
	.globl _g_timer1Counter
	.globl _AP_size
	.globl _flash_address
	.globl _bufhead
	.globl _MODIFY_HIRC_24
	.globl _MODIFY_HIRC_16
	.globl _READ_ID
	.globl _READ_CONFIG
	.globl _TM0_ini
	.globl _UART0_ini_115200_24MHz
	.globl _Package_checksum
	.globl _Send_64byte_To_UART0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_RCTRIM0	=	0x0084
_RCTRIM1	=	0x0085
_RWKL	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_WKCON	=	0x008f
_P1	=	0x0090
_SFRS	=	0x0091
_CAPCON0	=	0x0092
_CAPCON1	=	0x0093
_CAPCON2	=	0x0094
_CKDIV	=	0x0095
_CKSWT	=	0x0096
_CKEN	=	0x0097
_SCON	=	0x0098
_SBUF	=	0x0099
_SBUF_1	=	0x009a
_EIE	=	0x009b
_EIE1	=	0x009c
_CHPCON	=	0x009f
_P2	=	0x00a0
_AUXR1	=	0x00a2
_BODCON0	=	0x00a3
_IAPTRG	=	0x00a4
_IAPUEN	=	0x00a5
_IAPAL	=	0x00a6
_IAPAH	=	0x00a7
_IE	=	0x00a8
_SADDR	=	0x00a9
_WDCON	=	0x00aa
_BODCON1	=	0x00ab
_P3M1	=	0x00ac
_P3M2	=	0x00ad
_IAPFD	=	0x00ae
_IAPCN	=	0x00af
_P3	=	0x00b0
_P0M1	=	0x00b1
_P0M2	=	0x00b2
_P1M1	=	0x00b3
_P1M2	=	0x00b4
_TOE	=	0x00b5
_IPH	=	0x00b7
_IP	=	0x00b8
_SADEN	=	0x00b9
_SADEN_1	=	0x00ba
_SADDR_1	=	0x00bb
_I2DAT	=	0x00bc
_I2STAT	=	0x00bd
_I2CLK	=	0x00be
_I2TOC	=	0x00bf
_I2CON	=	0x00c0
_I2ADDR	=	0x00c1
_ADCRL	=	0x00c2
_ADCRH	=	0x00c3
_T3CON	=	0x00c4
_RL3	=	0x00c5
_RH3	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCMP2L	=	0x00ca
_RCMP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_ADCMPL	=	0x00ce
_ADCMPH	=	0x00cf
_PSW	=	0x00d0
_PWM0PH	=	0x00d1
_PWM0C0H	=	0x00d2
_PWM0C1H	=	0x00d3
_PWM0C2H	=	0x00d4
_PWM0C3H	=	0x00d5
_PNP	=	0x00d6
_PWM0FBD	=	0x00d7
_PWM0CON0	=	0x00d8
_PWM0PL	=	0x00d9
_PWM0C0L	=	0x00da
_PWM0C1L	=	0x00db
_PWM0C2L	=	0x00dc
_PWM0C3L	=	0x00dd
_PIOCON0	=	0x00de
_PWM0CON1	=	0x00df
_ACC	=	0x00e0
_ADCCON1	=	0x00e1
_ADCCON2	=	0x00e2
_ADCDLY	=	0x00e3
_C0L	=	0x00e4
_C0H	=	0x00e5
_C1L	=	0x00e6
_C1H	=	0x00e7
_ADCCON0	=	0x00e8
_PICON	=	0x00e9
_PINEN	=	0x00ea
_PIPEN	=	0x00eb
_PIF	=	0x00ec
_C2L	=	0x00ed
_C2H	=	0x00ee
_EIP	=	0x00ef
_B	=	0x00f0
_CAPCON3	=	0x00f1
_CAPCON4	=	0x00f2
_SPCR	=	0x00f3
_SPSR	=	0x00f4
_SPDR	=	0x00f5
_AINDIDS0	=	0x00f6
_EIPH	=	0x00f7
_SCON_1	=	0x00f8
_PWM0DTEN	=	0x00f9
_PWM0DTCNT	=	0x00fa
_PWM0MEN	=	0x00fb
_PWM0MD	=	0x00fc
_PORDIS	=	0x00fd
_EIP1	=	0x00fe
_EIPH1	=	0x00ff
_P3S	=	0x00ac
_P3SR	=	0x00ad
_P0S	=	0x00b1
_P0SR	=	0x00b2
_P1S	=	0x00b3
_P1SR	=	0x00b4
_PWM0INTC	=	0x00b7
_PWM0C4H	=	0x00c4
_PWM0C5H	=	0x00c5
_PIOCON1	=	0x00c6
_PWM0C4L	=	0x00cc
_PWM0C5L	=	0x00cd
_SPCR2	=	0x00f3
_LVRDIS	=	0x00ff
_ADCBAL	=	0x0084
_ADCBAH	=	0x0085
_ADCCON3	=	0x0086
_P2M1	=	0x0089
_P2M2	=	0x008a
_P2SR	=	0x008b
_P2S	=	0x008c
_ADCSN	=	0x008d
_ADCCN	=	0x008e
_ADCSR	=	0x008f
_P0UP	=	0x0092
_P1UP	=	0x0093
_P2UP	=	0x0094
_P3UP	=	0x0095
_RWKH	=	0x0097
_AINDIDS1	=	0x0099
_P0DW	=	0x009a
_P1DW	=	0x009b
_P2DW	=	0x009c
_P3DW	=	0x009d
_AUXR2	=	0x00a1
_AUXR3	=	0x00a2
_AUXR4	=	0x00a3
_AUXR5	=	0x00a4
_AUXR6	=	0x00a5
_AUXR7	=	0x00a6
_AUXR8	=	0x00a7
_PWM1PH	=	0x00a9
_PWM1C0H	=	0x00aa
_PWM1C1H	=	0x00ab
_PWM1MD	=	0x00ac
_PWM1MEN	=	0x00ad
_PWM1PL	=	0x00b1
_PWM1C0L	=	0x00b2
_PWM1C1L	=	0x00b3
_PWM1CON0	=	0x00b4
_PWM1CON1	=	0x00b5
_PWM1INTC	=	0x00b6
_PIOCON2	=	0x00b7
_PWM2PH	=	0x00b9
_PWM2C0H	=	0x00ba
_PWM2C1H	=	0x00bb
_PWM2MD	=	0x00bc
_PWM2MEN	=	0x00bd
_PWM2PL	=	0x00c1
_PWM2C0L	=	0x00c2
_PWM2C1L	=	0x00c3
_PWM2CON0	=	0x00c4
_PWM2CON1	=	0x00c5
_PWM2INTC	=	0x00c6
_PWM3PH	=	0x00c9
_PWM3C0H	=	0x00ca
_PWM3C1H	=	0x00cb
_PWM3MD	=	0x00cc
_PWM3MEN	=	0x00cd
_EIP2	=	0x00ce
_EIPH2	=	0x00cf
_PWM3PL	=	0x00d1
_PWM3C0L	=	0x00d2
_PWM3C1L	=	0x00d3
_PWM3CON0	=	0x00d4
_PWM3CON1	=	0x00d5
_PWM3INTC	=	0x00d6
_XTLCON	=	0x00d7
_SC0DR	=	0x00d9
_SC0EGT	=	0x00da
_SC0ETURD0	=	0x00db
_SC0ETURD1	=	0x00dc
_SC0IE	=	0x00dd
_SC0IS	=	0x00de
_SC0TSR	=	0x00df
_SC1DR	=	0x00e1
_SC1EGT	=	0x00e2
_SC1ETURD0	=	0x00e3
_SC1ETURD1	=	0x00e4
_SC1IE	=	0x00e5
_SC1IS	=	0x00e6
_SC1TSR	=	0x00e7
_SC2DR	=	0x00e9
_SC2EGT	=	0x00ea
_SC2ETURD0	=	0x00eb
_SC2ETURD1	=	0x00ec
_SC2IE	=	0x00ed
_SC2IS	=	0x00ee
_SC2TSR	=	0x00ef
_SC0CR0	=	0x00f1
_SC0CR1	=	0x00f2
_SC1CR0	=	0x00f3
_SC1CR1	=	0x00f4
_SC2CR0	=	0x00f5
_SC2CR1	=	0x00f6
_PIPS7	=	0x00f7
_PIPS0	=	0x00f9
_PIPS1	=	0x00fa
_PIPS2	=	0x00fb
_PIPS3	=	0x00fc
_PIPS4	=	0x00fd
_PIPS5	=	0x00fe
_PIPS6	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SM0_1	=	0x00ff
_FE_1	=	0x00ff
_SM1_1	=	0x00fe
_SM2_1	=	0x00fd
_REN_1	=	0x00fc
_TB8_1	=	0x00fb
_RB8_1	=	0x00fa
_TI_1	=	0x00f9
_RI_1	=	0x00f8
_ADCF	=	0x00ef
_ADCS	=	0x00ee
_ETGSEL1	=	0x00ed
_ETGSEL0	=	0x00ec
_ADCHS3	=	0x00eb
_ADCHS2	=	0x00ea
_ADCHS1	=	0x00e9
_ADCHS0	=	0x00e8
_PWMRUN	=	0x00df
_LOAD	=	0x00de
_PWMF	=	0x00dd
_CLRPWM	=	0x00dc
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF2	=	0x00cf
_TR2	=	0x00ca
_CM_RL2	=	0x00c8
_I2CEN	=	0x00c6
_STA	=	0x00c5
_STO	=	0x00c4
_SI	=	0x00c3
_AA	=	0x00c2
_I2CPX	=	0x00c0
_PADC	=	0x00be
_PBOD	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_P37	=	0x00b7
_P36	=	0x00b6
_P35	=	0x00b5
_P34	=	0x00b4
_P33	=	0x00b3
_P32	=	0x00b2
_P31	=	0x00b1
_P30	=	0x00b0
_EA	=	0x00af
_EADC	=	0x00ae
_EBOD	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P20	=	0x00a0
_SM0	=	0x009f
_FE	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_P17	=	0x0097
_P16	=	0x0096
_TXD_1	=	0x0096
_P15	=	0x0095
_P14	=	0x0094
_SDA	=	0x0094
_P13	=	0x0093
_SCL	=	0x0093
_P12	=	0x0092
_P11	=	0x0091
_P10	=	0x0090
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_P07	=	0x0087
_RXD	=	0x0087
_P06	=	0x0086
_TXD	=	0x0086
_P05	=	0x0085
_P04	=	0x0084
_STADC	=	0x0084
_P03	=	0x0083
_P02	=	0x0082
_RXD_1	=	0x0082
_P01	=	0x0081
_MISO	=	0x0081
_P00	=	0x0080
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
_bufhead::
	.ds 1
_flash_address::
	.ds 2
_AP_size::
	.ds 2
_g_timer1Counter::
	.ds 1
_count::
	.ds 1
_g_timer0Counter::
	.ds 2
_g_checksum::
	.ds 4
_g_totalchecksum::
	.ds 4
_PID_highB::
	.ds 1
_PID_lowB::
	.ds 1
_DID_highB::
	.ds 1
_DID_lowB::
	.ds 1
_CONF0::
	.ds 1
_CONF1::
	.ds 1
_CONF2::
	.ds 1
_CONF4::
	.ds 1
_recv_CONF0::
	.ds 1
_recv_CONF1::
	.ds 1
_recv_CONF2::
	.ds 1
_recv_CONF4::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_bUartDataReady::
	.ds 1
_g_timer0Over::
	.ds 1
_g_timer1Over::
	.ds 1
_g_progarmflag::
	.ds 1
_BIT_TMP::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_uart_rcvbuf::
	.ds 64
_uart_txbuf::
	.ds 64
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
;Allocation info for local variables in function 'MODIFY_HIRC_24'
;------------------------------------------------------------
;hircmap0                  Allocated to registers r7 
;hircmap1                  Allocated to registers r6 
;------------------------------------------------------------
;	..\isp_uart0.c:31: void MODIFY_HIRC_24(void)
;	-----------------------------------------
;	 function MODIFY_HIRC_24
;	-----------------------------------------
_MODIFY_HIRC_24:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	..\isp_uart0.c:36: IAPAL = 0x38;
	mov	_IAPAL,#0x38
;	..\isp_uart0.c:37: IAPAH = 0x00;
	mov	_IAPAH,#0x00
;	..\isp_uart0.c:38: IAPCN = READ_UID;
	mov	_IAPCN,#0x04
;	..\isp_uart0.c:39: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:40: hircmap0 = IAPFD;
	mov	r7,_IAPFD
;	..\isp_uart0.c:41: IAPAL = 0x39;
	mov	_IAPAL,#0x39
;	..\isp_uart0.c:42: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:43: hircmap1 = IAPFD;
	mov	r6,_IAPFD
;	..\isp_uart0.c:45: TA = 0XAA;
	mov	_TA,#0xaa
;	..\isp_uart0.c:46: TA = 0X55;
	mov	_TA,#0x55
;	..\isp_uart0.c:47: RCTRIM0 = hircmap0;
	mov	_RCTRIM0,r7
;	..\isp_uart0.c:48: TA = 0XAA;
	mov	_TA,#0xaa
;	..\isp_uart0.c:49: TA = 0X55;
	mov	_TA,#0x55
;	..\isp_uart0.c:50: RCTRIM1 = hircmap1;
	mov	_RCTRIM1,r6
;	..\isp_uart0.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'MODIFY_HIRC_16'
;------------------------------------------------------------
;hircmap0                  Allocated to registers r7 
;hircmap1                  Allocated to registers r6 
;------------------------------------------------------------
;	..\isp_uart0.c:54: void MODIFY_HIRC_16(void)
;	-----------------------------------------
;	 function MODIFY_HIRC_16
;	-----------------------------------------
_MODIFY_HIRC_16:
;	..\isp_uart0.c:58: IAPAL = 0x30;
	mov	_IAPAL,#0x30
;	..\isp_uart0.c:59: IAPAH = 0x00;
	mov	_IAPAH,#0x00
;	..\isp_uart0.c:60: IAPCN = READ_UID;
	mov	_IAPCN,#0x04
;	..\isp_uart0.c:61: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:62: hircmap0 = IAPFD;
	mov	r7,_IAPFD
;	..\isp_uart0.c:63: IAPAL = 0x31;
	mov	_IAPAL,#0x31
;	..\isp_uart0.c:64: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:65: hircmap1 = IAPFD;
	mov	r6,_IAPFD
;	..\isp_uart0.c:67: TA = 0xAA;
	mov	_TA,#0xaa
;	..\isp_uart0.c:68: TA = 0x55;
	mov	_TA,#0x55
;	..\isp_uart0.c:69: RCTRIM0 = hircmap0;
	mov	_RCTRIM0,r7
;	..\isp_uart0.c:70: TA = 0xAA;
	mov	_TA,#0xaa
;	..\isp_uart0.c:71: TA = 0x55;
	mov	_TA,#0x55
;	..\isp_uart0.c:72: RCTRIM1 = hircmap1;
	mov	_RCTRIM1,r6
;	..\isp_uart0.c:73: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'READ_ID'
;------------------------------------------------------------
;	..\isp_uart0.c:75: void READ_ID(void)
;	-----------------------------------------
;	 function READ_ID
;	-----------------------------------------
_READ_ID:
;	..\isp_uart0.c:78: IAPCN = READ_DID;
	mov	_IAPCN,#0x0c
;	..\isp_uart0.c:79: IAPAH = 0x00;
	mov	_IAPAH,#0x00
;	..\isp_uart0.c:80: IAPAL = 0x00;
	mov	_IAPAL,#0x00
;	..\isp_uart0.c:81: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:82: DID_lowB = IAPFD;
	mov	_DID_lowB,_IAPFD
;	..\isp_uart0.c:83: IAPAL = 0x01;
	mov	_IAPAL,#0x01
;	..\isp_uart0.c:84: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:85: DID_highB = IAPFD;
	mov	_DID_highB,_IAPFD
;	..\isp_uart0.c:86: IAPAL = 0x02;
	mov	_IAPAL,#0x02
;	..\isp_uart0.c:87: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:88: PID_lowB = IAPFD;
	mov	_PID_lowB,_IAPFD
;	..\isp_uart0.c:89: IAPAL = 0x03;
	mov	_IAPAL,#0x03
;	..\isp_uart0.c:90: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:91: PID_highB = IAPFD;
	mov	_PID_highB,_IAPFD
;	..\isp_uart0.c:92: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'READ_CONFIG'
;------------------------------------------------------------
;	..\isp_uart0.c:93: void READ_CONFIG(void)
;	-----------------------------------------
;	 function READ_CONFIG
;	-----------------------------------------
_READ_CONFIG:
;	..\isp_uart0.c:95: IAPCN = BYTE_READ_CONFIG;
	mov	_IAPCN,#0xc0
;	..\isp_uart0.c:96: IAPAL = 0x00;
	mov	_IAPAL,#0x00
;	..\isp_uart0.c:97: IAPAH = 0x00;
	mov	_IAPAH,#0x00
;	..\isp_uart0.c:98: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:99: CONF0 = IAPFD;
	mov	_CONF0,_IAPFD
;	..\isp_uart0.c:100: IAPAL = 0x01;
	mov	_IAPAL,#0x01
;	..\isp_uart0.c:101: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:102: CONF1 = IAPFD;
	mov	_CONF1,_IAPFD
;	..\isp_uart0.c:103: IAPAL = 0x02;
	mov	_IAPAL,#0x02
;	..\isp_uart0.c:104: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:105: CONF2 = IAPFD;
	mov	_CONF2,_IAPFD
;	..\isp_uart0.c:106: IAPAL = 0x04;
	mov	_IAPAL,#0x04
;	..\isp_uart0.c:107: set_IAPTRG_IAPGO;
	mov	_SFRS,#0x00
;	assignBit
	mov	c,_EA
	mov	_BIT_TMP,c
;	assignBit
	clr	_EA
	mov	_TA,#0xaa
	mov	_TA,#0x55
	orl	_IAPTRG,#0x01
;	assignBit
	mov	c,_BIT_TMP
	mov	_EA,c
;	..\isp_uart0.c:108: CONF4 = IAPFD;
	mov	_CONF4,_IAPFD
;	..\isp_uart0.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TM0_ini'
;------------------------------------------------------------
;	..\isp_uart0.c:112: void TM0_ini(void)
;	-----------------------------------------
;	 function TM0_ini
;	-----------------------------------------
_TM0_ini:
;	..\isp_uart0.c:114: TH0 = TL0 = 0; //interrupt timer 140us
	mov	_TL0,#0x00
	mov	_TH0,#0x00
;	..\isp_uart0.c:115: set_TCON_TR0;      //Start timer0
	orl	_TCON,#0x10
;	..\isp_uart0.c:116: set_IPH_PSH;       // Serial port 0 interrupt level2
	mov	_SFRS,#0x00
	orl	_IPH,#0x10
;	..\isp_uart0.c:117: set_IE_ET0;
	orl	_IE,#0x02
;	..\isp_uart0.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_ini_115200_24MHz'
;------------------------------------------------------------
;	..\isp_uart0.c:121: void UART0_ini_115200_24MHz(void)
;	-----------------------------------------
;	 function UART0_ini_115200_24MHz
;	-----------------------------------------
_UART0_ini_115200_24MHz:
;	..\isp_uart0.c:123: P06_QUASI_MODE;
	mov	_SFRS,#0x00
	anl	_P0M1,#0xbf
	anl	_P0M2,#0xbf
;	..\isp_uart0.c:124: P07_INPUT_MODE;
	mov	_SFRS,#0x00
	orl	_P0M1,#0x80
	anl	_P0M2,#0x7f
;	..\isp_uart0.c:126: SCON = 0x50;            /*UART0 Mode1,REN=1,TI=1*/
	mov	_SCON,#0x50
;	..\isp_uart0.c:127: set_PCON_SMOD;          /*UART0 Double Rate Enable*/
	orl	_PCON,#0x80
;	..\isp_uart0.c:128: T3CON &= 0xF8;           /*T3PS2=0,T3PS1=0,T3PS0=0(Prescale=1)*/
	anl	_T3CON,#0xf8
;	..\isp_uart0.c:129: set_T3CON_BRCK;          /*UART0 baud rate clock source = Timer3*/
	mov	_SFRS,#0x00
	orl	_T3CON,#0x20
;	..\isp_uart0.c:130: RH3    = HIBYTE(65536 - 13);
	mov	_RH3,#0xff
;	..\isp_uart0.c:131: RL3    = LOBYTE(65536 - 13);
	mov	_RL3,#0xf3
;	..\isp_uart0.c:132: set_T3CON_TR3;          /*Trigger Timer3*/
	mov	_SFRS,#0x00
	orl	_T3CON,#0x08
;	..\isp_uart0.c:134: ES = 1;
;	assignBit
	setb	_ES
;	..\isp_uart0.c:135: EA = 1;
;	assignBit
	setb	_EA
;	..\isp_uart0.c:136: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Package_checksum'
;------------------------------------------------------------
;	..\isp_uart0.c:139: void Package_checksum(void)
;	-----------------------------------------
;	 function Package_checksum
;	-----------------------------------------
_Package_checksum:
;	..\isp_uart0.c:141: g_checksum = 0;
	clr	a
	mov	_g_checksum,a
	mov	(_g_checksum + 1),a
	mov	(_g_checksum + 2),a
	mov	(_g_checksum + 3),a
;	..\isp_uart0.c:143: for (count = 0; count < 64; count++)
;	1-genFromRTrack replaced	mov	_count,#0x00
	mov	_count,a
00105$:
	mov	a,#0x100 - 0x40
	add	a,_count
	jc	00101$
;	..\isp_uart0.c:145: g_checksum = g_checksum + uart_rcvbuf[count];
	mov	a,_count
	add	a,#_uart_rcvbuf
	mov	dpl,a
	clr	a
	addc	a,#(_uart_rcvbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r6,a
	mov	r5,a
	mov	r4,a
	mov	a,r7
	add	a,_g_checksum
	mov	_g_checksum,a
	mov	a,r6
	addc	a,(_g_checksum + 1)
	mov	(_g_checksum + 1),a
	mov	a,r5
	addc	a,(_g_checksum + 2)
	mov	(_g_checksum + 2),a
	mov	a,r4
	addc	a,(_g_checksum + 3)
	mov	(_g_checksum + 3),a
;	..\isp_uart0.c:143: for (count = 0; count < 64; count++)
	mov	a,_count
	inc	a
	mov	_count,a
	sjmp	00105$
00101$:
;	..\isp_uart0.c:148: uart_txbuf[0] = g_checksum & 0xff;
	mov	r7,_g_checksum
	mov	dptr,#_uart_txbuf
	mov	a,r7
	movx	@dptr,a
;	..\isp_uart0.c:149: uart_txbuf[1] = (g_checksum >> 8) & 0xff;
	mov	r7,(_g_checksum + 1)
	mov	dptr,#(_uart_txbuf + 0x0001)
	mov	a,r7
	movx	@dptr,a
;	..\isp_uart0.c:150: uart_txbuf[4] = uart_rcvbuf[4] + 1;
	mov	dptr,#(_uart_rcvbuf + 0x0004)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uart_txbuf + 0x0004)
	mov	a,r7
	movx	@dptr,a
;	..\isp_uart0.c:151: uart_txbuf[5] = uart_rcvbuf[5];
	mov	dptr,#(_uart_rcvbuf + 0x0005)
	movx	a,@dptr
	mov	dptr,#(_uart_txbuf + 0x0005)
	movx	@dptr,a
;	..\isp_uart0.c:153: if (uart_txbuf[4] == 0x00)
	mov	dptr,#(_uart_txbuf + 0x0004)
	movx	a,@dptr
	jnz	00107$
;	..\isp_uart0.c:154: uart_txbuf[5]++;
	mov	dptr,#(_uart_txbuf + 0x0005)
	movx	a,@dptr
	mov	r7,a
	inc	r7
	mov	dptr,#(_uart_txbuf + 0x0005)
	mov	a,r7
	movx	@dptr,a
00107$:
;	..\isp_uart0.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Send_64byte_To_UART0'
;------------------------------------------------------------
;	..\isp_uart0.c:159: void Send_64byte_To_UART0(void)
;	-----------------------------------------
;	 function Send_64byte_To_UART0
;	-----------------------------------------
_Send_64byte_To_UART0:
;	..\isp_uart0.c:161: SFRS = 0;
	mov	_SFRS,#0x00
;	..\isp_uart0.c:162: for (count = 0; count < 64; count++)
	mov	_count,#0x00
00106$:
	mov	a,#0x100 - 0x40
	add	a,_count
	jc	00108$
;	..\isp_uart0.c:164: TI = 0;
;	assignBit
	clr	_TI
;	..\isp_uart0.c:165: SBUF = uart_txbuf[count];
	mov	a,_count
	add	a,#_uart_txbuf
	mov	dpl,a
	clr	a
	addc	a,#(_uart_txbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_SBUF,a
;	..\isp_uart0.c:166: while (TI == 0);
00101$:
	jnb	_TI,00101$
;	..\isp_uart0.c:162: for (count = 0; count < 64; count++)
	mov	a,_count
	inc	a
	mov	_count,a
	sjmp	00106$
00108$:
;	..\isp_uart0.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Serial_ISR'
;------------------------------------------------------------
;	..\isp_uart0.c:170: void Serial_ISR(void) __interrupt(4)
;	-----------------------------------------
;	 function Serial_ISR
;	-----------------------------------------
_Serial_ISR:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	psw
	mov	psw,#0x00
;	..\isp_uart0.c:172: _push_(SFRS);
	push	_SFRS 
;	..\isp_uart0.c:174: if (RI == 1)
	jnb	_RI,00102$
;	..\isp_uart0.c:176: uart_rcvbuf[bufhead++] =  SBUF;
	mov	a,_bufhead
	mov	r7,a
	inc	a
	mov	_bufhead,a
	mov	a,r7
	add	a,#_uart_rcvbuf
	mov	dpl,a
	clr	a
	addc	a,#(_uart_rcvbuf >> 8)
	mov	dph,a
	mov	a,_SBUF
	movx	@dptr,a
;	..\isp_uart0.c:177: clr_SCON_RI;                                         // Clear RI (Receive Interrupt).
	anl	_SCON,#0xfe
00102$:
;	..\isp_uart0.c:179: if (TI == 1)
	jnb	_TI,00104$
;	..\isp_uart0.c:181: clr_SCON_TI;                                         // Clear TI (Transmit Interrupt).
	anl	_SCON,#0xfd
00104$:
;	..\isp_uart0.c:183: if (bufhead == 1)
	mov	a,#0x01
	cjne	a,_bufhead,00106$
;	..\isp_uart0.c:185: g_timer1Over = 0;
;	assignBit
	clr	_g_timer1Over
;	..\isp_uart0.c:186: g_timer1Counter = 90; //for check uart timeout using
	mov	_g_timer1Counter,#0x5a
00106$:
;	..\isp_uart0.c:188: if (bufhead == 64)
	mov	a,#0x40
	cjne	a,_bufhead,00108$
;	..\isp_uart0.c:190: bUartDataReady = TRUE;
;	assignBit
	setb	_bUartDataReady
;	..\isp_uart0.c:191: g_timer1Counter = 0;
	mov	_g_timer1Counter,#0x00
;	..\isp_uart0.c:192: g_timer1Over = 0;
;	assignBit
	clr	_g_timer1Over
;	..\isp_uart0.c:193: bufhead = 0;
	mov	_bufhead,#0x00
00108$:
;	..\isp_uart0.c:195: _pop_(SFRS);
	pop	_SFRS 
;	..\isp_uart0.c:196: }
	pop	psw
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	..\isp_uart0.c:198: void Timer0_ISR(void) __interrupt(1)
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	..\isp_uart0.c:200: _push_(SFRS);
	push	_SFRS 
;	..\isp_uart0.c:201: if (g_timer0Counter)
	mov	a,_g_timer0Counter
	orl	a,(_g_timer0Counter + 1)
	jz	00104$
;	..\isp_uart0.c:203: g_timer0Counter--;
	mov	r6,_g_timer0Counter
	mov	r7,(_g_timer0Counter + 1)
	mov	a,r6
	add	a,#0xff
	mov	_g_timer0Counter,a
	mov	a,r7
	addc	a,#0xff
	mov	(_g_timer0Counter + 1),a
;	..\isp_uart0.c:204: if (!g_timer0Counter)
	mov	a,_g_timer0Counter
	orl	a,(_g_timer0Counter + 1)
	jnz	00104$
;	..\isp_uart0.c:206: g_timer0Over = 1;
;	assignBit
	setb	_g_timer0Over
00104$:
;	..\isp_uart0.c:209: if (g_timer1Counter)
	mov	a,_g_timer1Counter
	jz	00108$
;	..\isp_uart0.c:211: g_timer1Counter--;
	mov	a,_g_timer1Counter
	dec	a
	mov	_g_timer1Counter,a
;	..\isp_uart0.c:212: if (!g_timer1Counter)
	mov	a,_g_timer1Counter
	jnz	00108$
;	..\isp_uart0.c:214: g_timer1Over = 1;
;	assignBit
	setb	_g_timer1Over
00108$:
;	..\isp_uart0.c:217: _pop_(SFRS);
	pop	_SFRS 
;	..\isp_uart0.c:218: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
