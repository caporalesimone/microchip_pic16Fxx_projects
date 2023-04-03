;  ASM code generated by mikroVirtualMachine for PIC - V. 6.0.0.0
;  Date/Time: 18/11/2006 20.42.04
;  Info: http://www.mikroelektronika.co.yu


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2928			GOTO	_main
$0004	$	_Delay_1us:
;delays.c,2 :: 		void Delay_1us() {
;delays.c,3 :: 		Delay_us(1);
$0004	$3001			MOVLW	1
$0005	$1303			BCF	STATUS, RP1
$0006	$1283			BCF	STATUS, RP0
$0007	$00FA			MOVWF	STACK_10
$0008	$0BFA			DECFSZ	STACK_10, F
$0009	$2808			GOTO	$-1
$000A	$0000			NOP
;delays.c,4 :: 		}
$000B	$0008			RETURN
$000C	$	_Delay_5500us:
;delays.c,26 :: 		void Delay_5500us() {
;delays.c,27 :: 		Delay_us(5500);
$000C	$3024			MOVLW	36
$000D	$1303			BCF	STATUS, RP1
$000E	$1283			BCF	STATUS, RP0
$000F	$00FB			MOVWF	STACK_11
$0010	$30FF			MOVLW	255
$0011	$00FA			MOVWF	STACK_10
$0012	$0BFB			DECFSZ	STACK_11, F
$0013	$2815			GOTO	$+2
$0014	$2818			GOTO	$+4
$0015	$0BFA			DECFSZ	STACK_10, F
$0016	$2815			GOTO	$-1
$0017	$2812			GOTO	$-5
$0018	$309E			MOVLW	158
$0019	$00FA			MOVWF	STACK_10
$001A	$0BFA			DECFSZ	STACK_10, F
$001B	$281A			GOTO	$-1
;delays.c,28 :: 		}
$001C	$0008			RETURN
$001D	$	_Delay_50us:
;delays.c,14 :: 		void Delay_50us() {
;delays.c,15 :: 		Delay_us(50);
$001D	$3053			MOVLW	83
$001E	$1303			BCF	STATUS, RP1
$001F	$1283			BCF	STATUS, RP0
$0020	$00FA			MOVWF	STACK_10
$0021	$0BFA			DECFSZ	STACK_10, F
$0022	$2821			GOTO	$-1
;delays.c,16 :: 		}
$0023	$0008			RETURN
$0024	$	_Lcd_Cmd:
$0024	$1303			BCF	STATUS, RP1
$0025	$1283			BCF	STATUS, RP0
$0026	$0820			MOVF	LCD_port_address, 0
$0027	$0084			MOVWF	FSR
$0028	$0843			MOVF	FARG_Lcd_Cmd+0, 0
$0029	$1903			BTFSC	STATUS, Z
$002A	$282B			GOTO	L_Lcd_Cmd_0
$002B	$	L_Lcd_Cmd_0:
$002B	$1180			BCF	INDF, ___ENABLE
$002C	$1380			BCF	INDF, ___DB7
$002D	$1300			BCF	INDF, ___DB6
$002E	$1280			BCF	INDF, ___DB5
$002F	$1200			BCF	INDF, ___DB4
$0030	$1100			BCF	INDF, ___RS
$0031	$1BC3			BTFSC	FARG_Lcd_Cmd+0, 7
$0032	$1780			BSF	INDF, ___DB7
$0033	$1B43			BTFSC	FARG_Lcd_Cmd+0, 6
$0034	$1700			BSF	INDF, ___DB6
$0035	$1AC3			BTFSC	FARG_Lcd_Cmd+0, 5
$0036	$1680			BSF	INDF, ___DB5
$0037	$1A43			BTFSC	FARG_Lcd_Cmd+0, 4
$0038	$1600			BSF	INDF, ___DB4
$0039	$0821			MOVF	LCD_cmd_status, 0
$003A	$1903			BTFSC	STATUS, Z
$003B	$283E			GOTO	L_Lcd_Cmd_1
$003C	$1100			BCF	INDF, ___RS
$003D	$283F			GOTO	L_Lcd_Cmd_2
$003E	$	L_Lcd_Cmd_1:
$003E	$1500			BSF	INDF, ___RS
$003F	$	L_Lcd_Cmd_2:
$003F	$1580			BSF	INDF, ___ENABLE
$0040	$2004			CALL	_Delay_1us
$0041	$0843			MOVF	FARG_Lcd_Cmd+0, 0
$0042	$1903			BTFSC	STATUS, Z
$0043	$2844			GOTO	L_Lcd_Cmd_3
$0044	$	L_Lcd_Cmd_3:
$0044	$1180			BCF	INDF, ___ENABLE
$0045	$1380			BCF	INDF, ___DB7
$0046	$1300			BCF	INDF, ___DB6
$0047	$1280			BCF	INDF, ___DB5
$0048	$1200			BCF	INDF, ___DB4
$0049	$1100			BCF	INDF, ___RS
$004A	$19C3			BTFSC	FARG_Lcd_Cmd+0, 3
$004B	$1780			BSF	INDF, ___DB7
$004C	$1943			BTFSC	FARG_Lcd_Cmd+0, 2
$004D	$1700			BSF	INDF, ___DB6
$004E	$18C3			BTFSC	FARG_Lcd_Cmd+0, 1
$004F	$1680			BSF	INDF, ___DB5
$0050	$1843			BTFSC	FARG_Lcd_Cmd+0, 0
$0051	$1600			BSF	INDF, ___DB4
$0052	$0821			MOVF	LCD_cmd_status, 0
$0053	$1903			BTFSC	STATUS, Z
$0054	$2857			GOTO	L_Lcd_Cmd_4
$0055	$1100			BCF	INDF, ___RS
$0056	$2858			GOTO	L_Lcd_Cmd_5
$0057	$	L_Lcd_Cmd_4:
$0057	$1500			BSF	INDF, ___RS
$0058	$	L_Lcd_Cmd_5:
$0058	$1580			BSF	INDF, ___ENABLE
$0059	$2004			CALL	_Delay_1us
$005A	$1180			BCF	INDF, ___ENABLE
$005B	$0821			MOVF	LCD_cmd_status, 0
$005C	$1903			BTFSC	STATUS, Z
$005D	$2860			GOTO	L_Lcd_Cmd_6
$005E	$200C			CALL	_Delay_5500us
$005F	$2861			GOTO	L_Lcd_Cmd_7
$0060	$	L_Lcd_Cmd_6:
$0060	$201D			CALL	_Delay_50us
$0061	$	L_Lcd_Cmd_7:
$0061	$0008			RETURN
$0062	$	_Lcd_Chr_CP:
$0062	$1303			BCF	STATUS, RP1
$0063	$1283			BCF	STATUS, RP0
$0064	$01A1			CLRF	LCD_cmd_status, 1
$0065	$0842			MOVF	FARG_Lcd_Chr_CP+0, 0
$0066	$00C3			MOVWF	FARG_Lcd_Cmd+0
$0067	$2024			CALL	_Lcd_Cmd
$0068	$3001			MOVLW	1
$0069	$00A1			MOVWF	LCD_cmd_status
$006A	$0008			RETURN
$006B	$	_Lcd_Init:
$006B	$200C			CALL	_Delay_5500us
$006C	$200C			CALL	_Delay_5500us
$006D	$200C			CALL	_Delay_5500us
$006E	$083E			MOVF	FARG_Lcd_Init+0, 0
$006F	$00A0			MOVWF	LCD_port_address
$0070	$083E			MOVF	FARG_Lcd_Init+0, 0
$0071	$0084			MOVWF	FSR
$0072	$0180			CLRF	INDF, 1
$0073	$1784			BSF	FSR, 7
$0074	$0180			CLRF	INDF
$0075	$1384			BCF	FSR, 7
$0076	$1680			BSF	INDF, ___DB5
$0077	$1600			BSF	INDF, ___DB4
$0078	$1580			BSF	INDF, ___ENABLE
$0079	$1180			BCF	INDF, ___ENABLE
$007A	$200C			CALL	_Delay_5500us
$007B	$1580			BSF	INDF, ___ENABLE
$007C	$1180			BCF	INDF, ___ENABLE
$007D	$200C			CALL	_Delay_5500us
$007E	$1580			BSF	INDF, ___ENABLE
$007F	$1180			BCF	INDF, ___ENABLE
$0080	$200C			CALL	_Delay_5500us
$0081	$1680			BSF	INDF, ___DB5
$0082	$1200			BCF	INDF, ___DB4
$0083	$1580			BSF	INDF, ___ENABLE
$0084	$1180			BCF	INDF, ___ENABLE
$0085	$200C			CALL	_Delay_5500us
$0086	$0180			CLRF	INDF
$0087	$1680			BSF	INDF, ___DB5
$0088	$1580			BSF	INDF, ___ENABLE
$0089	$1180			BCF	INDF, ___ENABLE
$008A	$0180			CLRF	INDF
$008B	$1780			BSF	INDF, ___DB7
$008C	$1580			BSF	INDF, ___ENABLE
$008D	$1180			BCF	INDF, ___ENABLE
$008E	$200C			CALL	_Delay_5500us
$008F	$0180			CLRF	INDF
$0090	$1600			BSF	INDF, ___DB4
$0091	$1580			BSF	INDF, ___ENABLE
$0092	$1180			BCF	INDF, ___ENABLE
$0093	$0180			CLRF	INDF
$0094	$1580			BSF	INDF, ___ENABLE
$0095	$1180			BCF	INDF, ___ENABLE
$0096	$200C			CALL	_Delay_5500us
$0097	$0180			CLRF	INDF
$0098	$1580			BSF	INDF, ___ENABLE
$0099	$1180			BCF	INDF, ___ENABLE
$009A	$1600			BSF	INDF, ___DB4
$009B	$1580			BSF	INDF, ___ENABLE
$009C	$1180			BCF	INDF, ___ENABLE
$009D	$200C			CALL	_Delay_5500us
$009E	$0180			CLRF	INDF
$009F	$1580			BSF	INDF, ___ENABLE
$00A0	$1180			BCF	INDF, ___ENABLE
$00A1	$1600			BSF	INDF, ___DB4
$00A2	$1680			BSF	INDF, ___DB5
$00A3	$1700			BSF	INDF, ___DB6
$00A4	$1780			BSF	INDF, ___DB7
$00A5	$1580			BSF	INDF, ___ENABLE
$00A6	$1180			BCF	INDF, ___ENABLE
$00A7	$200C			CALL	_Delay_5500us
$00A8	$3001			MOVLW	1
$00A9	$00A1			MOVWF	LCD_cmd_status
$00AA	$0008			RETURN
$00AB	$	_LCD_Out:
$00AB	$1303			BCF	STATUS, RP1
$00AC	$1283			BCF	STATUS, RP0
$00AD	$083E			MOVF	FARG_LCD_Out+0, 0
$00AE	$1903			BTFSC	STATUS, Z
$00AF	$28B0			GOTO	L_LCD_Out_18
$00B0	$	L_LCD_Out_18:
$00B0	$28C0			GOTO	L_LCD_Out_19
$00B1	$	L_LCD_Out_21:
$00B1	$3080			MOVLW	128
$00B2	$00BE			MOVWF	FARG_LCD_Out+0
$00B3	$28D1			GOTO	L_LCD_Out_20
$00B4	$	L_LCD_Out_22:
$00B4	$30C0			MOVLW	192
$00B5	$00BE			MOVWF	FARG_LCD_Out+0
$00B6	$28D1			GOTO	L_LCD_Out_20
$00B7	$	L_LCD_Out_23:
$00B7	$3094			MOVLW	148
$00B8	$00BE			MOVWF	FARG_LCD_Out+0
$00B9	$28D1			GOTO	L_LCD_Out_20
$00BA	$	L_LCD_Out_24:
$00BA	$30D4			MOVLW	212
$00BB	$00BE			MOVWF	FARG_LCD_Out+0
$00BC	$28D1			GOTO	L_LCD_Out_20
$00BD	$	L_LCD_Out_25:
$00BD	$3080			MOVLW	128
$00BE	$00BE			MOVWF	FARG_LCD_Out+0
$00BF	$28D1			GOTO	L_LCD_Out_20
$00C0	$	L_LCD_Out_19:
$00C0	$083E			MOVF	FARG_LCD_Out+0, 0
$00C1	$3A01			XORLW	1
$00C2	$1903			BTFSC	STATUS, Z
$00C3	$28B1			GOTO	L_LCD_Out_21
$00C4	$083E			MOVF	FARG_LCD_Out+0, 0
$00C5	$3A02			XORLW	2
$00C6	$1903			BTFSC	STATUS, Z
$00C7	$28B4			GOTO	L_LCD_Out_22
$00C8	$083E			MOVF	FARG_LCD_Out+0, 0
$00C9	$3A03			XORLW	3
$00CA	$1903			BTFSC	STATUS, Z
$00CB	$28B7			GOTO	L_LCD_Out_23
$00CC	$083E			MOVF	FARG_LCD_Out+0, 0
$00CD	$3A04			XORLW	4
$00CE	$1903			BTFSC	STATUS, Z
$00CF	$28BA			GOTO	L_LCD_Out_24
$00D0	$28BD			GOTO	L_LCD_Out_25
$00D1	$	L_LCD_Out_20:
$00D1	$033F			DECF	FARG_LCD_Out+1, 0
$00D2	$00F0			MOVWF	STACK_0
$00D3	$083E			MOVF	FARG_LCD_Out+0, 0
$00D4	$07F0			ADDWF	STACK_0, 1
$00D5	$0870			MOVF	STACK_0, 0
$00D6	$00BE			MOVWF	FARG_LCD_Out+0
$00D7	$0870			MOVF	STACK_0, 0
$00D8	$00C3			MOVWF	FARG_Lcd_Cmd+0
$00D9	$2024			CALL	_Lcd_Cmd
$00DA	$01A1			CLRF	LCD_cmd_status, 1
$00DB	$01C1			CLRF	LCD_Out_i_L0, 1
$00DC	$	L_LCD_Out_26:
$00DC	$0841			MOVF	LCD_Out_i_L0, 0
$00DD	$0740			ADDWF	FARG_LCD_Out+2, 0
$00DE	$0084			MOVWF	FSR
$00DF	$0800			MOVF	INDF, 0
$00E0	$00F0			MOVWF	STACK_0
$00E1	$0870			MOVF	STACK_0, 0
$00E2	$1903			BTFSC	STATUS, Z
$00E3	$28EC			GOTO	L_LCD_Out_27
$00E4	$0841			MOVF	LCD_Out_i_L0, 0
$00E5	$0740			ADDWF	FARG_LCD_Out+2, 0
$00E6	$0084			MOVWF	FSR
$00E7	$0800			MOVF	INDF, 0
$00E8	$00C2			MOVWF	FARG_Lcd_Chr_CP+0
$00E9	$2062			CALL	_Lcd_Chr_CP
$00EA	$0AC1			INCF	LCD_Out_i_L0, 1
$00EB	$28DC			GOTO	L_LCD_Out_26
$00EC	$	L_LCD_Out_27:
$00EC	$3001			MOVLW	1
$00ED	$00A1			MOVWF	LCD_cmd_status
$00EE	$0008			RETURN
$00EF	$	GlobalIniDisplayLCD:
$00EF	$3041			MOVLW	65
$00F0	$1303			BCF	STATUS, RP1
$00F1	$1283			BCF	STATUS, RP0
$00F2	$00A2			MOVWF	lstr1_DisplayLCD+0
$00F3	$3042			MOVLW	66
$00F4	$00A3			MOVWF	lstr1_DisplayLCD+1
$00F5	$3043			MOVLW	67
$00F6	$00A4			MOVWF	lstr1_DisplayLCD+2
$00F7	$3044			MOVLW	68
$00F8	$00A5			MOVWF	lstr1_DisplayLCD+3
$00F9	$3045			MOVLW	69
$00FA	$00A6			MOVWF	lstr1_DisplayLCD+4
$00FB	$3046			MOVLW	70
$00FC	$00A7			MOVWF	lstr1_DisplayLCD+5
$00FD	$3047			MOVLW	71
$00FE	$00A8			MOVWF	lstr1_DisplayLCD+6
$00FF	$3048			MOVLW	72
$0100	$00A9			MOVWF	lstr1_DisplayLCD+7
$0101	$3049			MOVLW	73
$0102	$00AA			MOVWF	lstr1_DisplayLCD+8
$0103	$304C			MOVLW	76
$0104	$00AB			MOVWF	lstr1_DisplayLCD+9
$0105	$304D			MOVLW	77
$0106	$00AC			MOVWF	lstr1_DisplayLCD+10
$0107	$304E			MOVLW	78
$0108	$00AD			MOVWF	lstr1_DisplayLCD+11
$0109	$01AE			CLRF	lstr1_DisplayLCD+12
$010A	$3022			MOVLW	lstr1_DisplayLCD
$010B	$00BC			MOVWF	_text0+0
$010C	$304F			MOVLW	79
$010D	$00AF			MOVWF	lstr2_DisplayLCD+0
$010E	$3050			MOVLW	80
$010F	$00B0			MOVWF	lstr2_DisplayLCD+1
$0110	$3051			MOVLW	81
$0111	$00B1			MOVWF	lstr2_DisplayLCD+2
$0112	$3052			MOVLW	82
$0113	$00B2			MOVWF	lstr2_DisplayLCD+3
$0114	$3053			MOVLW	83
$0115	$00B3			MOVWF	lstr2_DisplayLCD+4
$0116	$3054			MOVLW	84
$0117	$00B4			MOVWF	lstr2_DisplayLCD+5
$0118	$3055			MOVLW	85
$0119	$00B5			MOVWF	lstr2_DisplayLCD+6
$011A	$3056			MOVLW	86
$011B	$00B6			MOVWF	lstr2_DisplayLCD+7
$011C	$3057			MOVLW	87
$011D	$00B7			MOVWF	lstr2_DisplayLCD+8
$011E	$3058			MOVLW	88
$011F	$00B8			MOVWF	lstr2_DisplayLCD+9
$0120	$3059			MOVLW	89
$0121	$00B9			MOVWF	lstr2_DisplayLCD+10
$0122	$305A			MOVLW	90
$0123	$00BA			MOVWF	lstr2_DisplayLCD+11
$0124	$01BB			CLRF	lstr2_DisplayLCD+12
$0125	$302F			MOVLW	lstr2_DisplayLCD
$0126	$00BD			MOVWF	_text1+0
$0127	$0008			RETURN
$0128	$	_main:
$0128	$20EF			CALL	GlobalIniDisplayLCD
;DisplayLCD.c,6 :: 		void main() {
;DisplayLCD.c,7 :: 		LCD_Init(&PORTB);         // Initialize LCD connected to PORTB
$0129	$3006			MOVLW	PORTB
$012A	$00BE			MOVWF	FARG_Lcd_Init+0
$012B	$206B			CALL	_Lcd_Init
;DisplayLCD.c,8 :: 		LCD_Cmd(LCD_CLEAR);       // Clear display
$012C	$3001			MOVLW	1
$012D	$00C3			MOVWF	FARG_Lcd_Cmd+0
$012E	$2024			CALL	_Lcd_Cmd
;DisplayLCD.c,9 :: 		LCD_Cmd(LCD_CURSOR_OFF);  // Turn cursor off
$012F	$300C			MOVLW	12
$0130	$00C3			MOVWF	FARG_Lcd_Cmd+0
$0131	$2024			CALL	_Lcd_Cmd
;DisplayLCD.c,11 :: 		LCD_Out(1,1, text0);
$0132	$3001			MOVLW	1
$0133	$00BE			MOVWF	FARG_LCD_Out+0
$0134	$3001			MOVLW	1
$0135	$00BF			MOVWF	FARG_LCD_Out+1
$0136	$083C			MOVF	_text0, 0
$0137	$00C0			MOVWF	FARG_LCD_Out+2
$0138	$20AB			CALL	_LCD_Out
;DisplayLCD.c,12 :: 		LCD_Out(2,1, text1);
$0139	$3002			MOVLW	2
$013A	$00BE			MOVWF	FARG_LCD_Out+0
$013B	$3001			MOVLW	1
$013C	$00BF			MOVWF	FARG_LCD_Out+1
$013D	$083D			MOVF	_text1, 0
$013E	$00C0			MOVWF	FARG_LCD_Out+2
$013F	$20AB			CALL	_LCD_Out
;DisplayLCD.c,14 :: 		while(1)
$0140	$	L_main_0:
$0140	$2940			GOTO	L_main_0
;DisplayLCD.c,21 :: 		}//~!
$0141	$2941			GOTO	$
