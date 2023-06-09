
; PicBasic Pro Compiler 2.44, (c) 1998, 2003 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PROGRA~1\PBP\16F84A.INC"


; Define statements.
#define		OSC		 20

RAM_START       		EQU	0000Ch
RAM_END         		EQU	0004Fh
RAM_BANKS       		EQU	00001h
BANK0_START     		EQU	0000Ch
BANK0_END       		EQU	0004Fh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	0213Fh

R0              		EQU	RAM_START + 000h
R1              		EQU	RAM_START + 002h
R2              		EQU	RAM_START + 004h
R3              		EQU	RAM_START + 006h
R4              		EQU	RAM_START + 008h
R5              		EQU	RAM_START + 00Ah
R6              		EQU	RAM_START + 00Ch
R7              		EQU	RAM_START + 00Eh
R8              		EQU	RAM_START + 010h
FLAGS           		EQU	RAM_START + 012h
GOP             		EQU	RAM_START + 013h
RM1             		EQU	RAM_START + 014h
RM2             		EQU	RAM_START + 015h
RR1             		EQU	RAM_START + 016h
RR2             		EQU	RAM_START + 017h
_CONTA           		EQU	RAM_START + 018h
_TEMP            		EQU	RAM_START + 019h
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTA
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISA
#define _PORTA_0         	 PORTA, 000h
#define _PORTA_1         	 PORTA, 001h
#define _PORTA_2         	 PORTA, 002h
#define _PORTA_3         	 PORTA, 003h
#define _PORTB_0         	 PORTB, 000h
#define _PORTB_1         	 PORTB, 001h
#define _PORTB_2         	 PORTB, 002h
#define _PORTB_3         	 PORTB, 003h
#define _PORTB_4         	 PORTB, 004h
#define _PORTB_5         	 PORTB, 005h
#define _PORTB_6         	 PORTB, 006h
#define _PORTB_7         	 PORTB, 007h
	INCLUDE	"T16F84.MAC"
	INCLUDE	"C:\PROGRA~1\PBP\PBPPIC14.LIB"

	MOVE?CB	000h, TRISA
	MOVE?CB	000h, TRISB
	MOVE?CT	000h, _PORTA_0
	MOVE?CT	000h, _PORTA_1
	MOVE?CT	000h, _PORTA_2
	MOVE?CT	000h, _PORTA_3
	MOVE?CT	000h, _PORTB_0
	MOVE?CT	000h, _PORTB_1
	MOVE?CT	000h, _PORTB_2
	MOVE?CT	000h, _PORTB_3
	MOVE?CT	000h, _PORTB_4
	MOVE?CT	000h, _PORTB_5
	MOVE?CT	000h, _PORTB_6
	MOVE?CT	000h, _PORTB_7

	LABEL?L	_LOOP	
	MOVE?CB	001h, _TEMP
	MOVE?CB	000h, _CONTA
	LABEL?L	L00001	
	CMPGT?BCL	_CONTA, 003h, L00002
	MOVE?BB	_TEMP, PORTA
	PAUSE?C	007D0h
	SHIFTL?BCB	_TEMP, 001h, _TEMP
	NEXT?BCL	_CONTA, 001h, L00001
	LABEL?L	L00002	
	MOVE?CT	000h, _PORTA_3
	PAUSE?C	007D0h
	MOVE?CB	001h, _TEMP
	MOVE?CB	000h, _CONTA
	LABEL?L	L00003	
	CMPGT?BCL	_CONTA, 007h, L00004
	MOVE?BB	_TEMP, PORTB
	PAUSE?C	007D0h
	SHIFTL?BCB	_TEMP, 001h, _TEMP
	NEXT?BCL	_CONTA, 001h, L00003
	LABEL?L	L00004	
	MOVE?CT	000h, _PORTB_7
	PAUSE?C	007D0h
	GOTO?L	_LOOP

	END
