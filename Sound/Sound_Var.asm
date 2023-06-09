;  ASM code generated by mikroVirtualMachine for PIC - V. 6.0.0.0
;  Date/Time: 11/11/2006 23.07.28
;  Info: http://www.mikroelektronika.co.yu


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$28C9			GOTO	_main
$0004	$	_Delay_Cyc:
;delays.c,48 :: 		void Delay_Cyc(char cycles_div_by_10)  { // Cycles_div_by_10: min 3, max 255
;delays.c,50 :: 		--cycles_div_by_10;
$0004	$1303			BCF	STATUS, RP1
$0005	$1283			BCF	STATUS, RP0
$0006	$03A9			DECF	FARG_Delay_Cyc+0, 1
;delays.c,51 :: 		--cycles_div_by_10;
$0007	$03A9			DECF	FARG_Delay_Cyc+0, 1
;delays.c,52 :: 		while (cycles_div_by_10 > 0) {
$0008	$	L_Delay_Cyc_0:
$0008	$0829			MOVF	FARG_Delay_Cyc+0, 0
$0009	$3C00			SUBLW	0
$000A	$1803			BTFSC	STATUS, C
$000B	$2811			GOTO	L_Delay_Cyc_1
;delays.c,53 :: 		--cycles_div_by_10;
$000C	$03A9			DECF	FARG_Delay_Cyc+0, 1
;delays.c,54 :: 		asm nop;
$000D	$0000			NOP
;delays.c,55 :: 		asm nop;
$000E	$0000			NOP
;delays.c,56 :: 		asm nop;
$000F	$0000			NOP
;delays.c,57 :: 		}
$0010	$2808			GOTO	L_Delay_Cyc_0
$0011	$	L_Delay_Cyc_1:
;delays.c,58 :: 		asm nop;
$0011	$0000			NOP
;delays.c,59 :: 		asm nop;
$0012	$0000			NOP
;delays.c,60 :: 		asm nop;
$0013	$0000			NOP
;delays.c,61 :: 		asm nop;
$0014	$0000			NOP
;delays.c,62 :: 		asm nop;
$0015	$0000			NOP
;delays.c,63 :: 		}
$0016	$0008			RETURN
$0017	$	_Sound_Play:
$0017	$1303			BCF	STATUS, RP1
$0018	$1283			BCF	STATUS, RP0
$0019	$0CA4			RRF	FARG_Sound_Play+0, 1
$001A	$13A4			BCF	FARG_Sound_Play+0, 7
$001B	$0820			MOVF	_SoundPortAddress, 0
$001C	$0084			MOVWF	FSR
$001D	$3001			MOVLW	1
$001E	$00A7			MOVWF	Sound_Play_i_L0
$001F	$3000			MOVLW	0
$0020	$00A8			MOVWF	Sound_Play_i_L0+1
$0021	$	L_Sound_Play_1:
$0021	$0828			MOVF	Sound_Play_i_L0+1, 0
$0022	$0226			SUBWF	FARG_Sound_Play+2, 0
$0023	$1D03			BTFSS	STATUS, Z
$0024	$2827			GOTO	L_Sound_Play_6
$0025	$0827			MOVF	Sound_Play_i_L0, 0
$0026	$0225			SUBWF	FARG_Sound_Play+1, 0
$0027	$	L_Sound_Play_6:
$0027	$1C03			BTFSS	STATUS, C
$0028	$284E			GOTO	L_Sound_Play_2
$0029	$0821			MOVF	_SoundPin, 0
$002A	$00F1			MOVWF	STACK_1
$002B	$3001			MOVLW	1
$002C	$00F0			MOVWF	STACK_0
$002D	$0871			MOVF	STACK_1, 0
$002E	$	L_Sound_Play_7:
$002E	$1903			BTFSC	STATUS, Z
$002F	$2834			GOTO	L_Sound_Play_8
$0030	$0DF0			RLF	STACK_0, 1
$0031	$1070			BCF	STACK_0, 0
$0032	$3FFF			ADDLW	255
$0033	$282E			GOTO	L_Sound_Play_7
$0034	$	L_Sound_Play_8:
$0034	$0870			MOVF	STACK_0, 0
$0035	$0480			IORWF	INDF, 1
$0036	$0824			MOVF	FARG_Sound_Play+0, 0
$0037	$00A9			MOVWF	FARG_Delay_Cyc+0
$0038	$2004			CALL	_Delay_Cyc
$0039	$0821			MOVF	_SoundPin, 0
$003A	$00F1			MOVWF	STACK_1
$003B	$3001			MOVLW	1
$003C	$00F0			MOVWF	STACK_0
$003D	$0871			MOVF	STACK_1, 0
$003E	$	L_Sound_Play_9:
$003E	$1903			BTFSC	STATUS, Z
$003F	$2844			GOTO	L_Sound_Play_10
$0040	$0DF0			RLF	STACK_0, 1
$0041	$1070			BCF	STACK_0, 0
$0042	$3FFF			ADDLW	255
$0043	$283E			GOTO	L_Sound_Play_9
$0044	$	L_Sound_Play_10:
$0044	$09F0			COMF	STACK_0, F
$0045	$0870			MOVF	STACK_0, 0
$0046	$0580			ANDWF	INDF, 1
$0047	$0824			MOVF	FARG_Sound_Play+0, 0
$0048	$00A9			MOVWF	FARG_Delay_Cyc+0
$0049	$2004			CALL	_Delay_Cyc
$004A	$	L_Sound_Play_3:
$004A	$0AA7			INCF	Sound_Play_i_L0, 1
$004B	$1903			BTFSC	STATUS, Z
$004C	$0AA8			INCF	Sound_Play_i_L0+1, 1
$004D	$2821			GOTO	L_Sound_Play_1
$004E	$	L_Sound_Play_2:
$004E	$0008			RETURN
$004F	$	_Tone1:
;Sound_Var.c,19 :: 		void Tone1() {
;Sound_Var.c,20 :: 		Sound_Play(200, 200);   // Period = 2ms <=> 500Hz, Duration = 200 periods
$004F	$30C8			MOVLW	200
$0050	$1303			BCF	STATUS, RP1
$0051	$1283			BCF	STATUS, RP0
$0052	$00A4			MOVWF	FARG_Sound_Play+0
$0053	$30C8			MOVLW	200
$0054	$00A5			MOVWF	FARG_Sound_Play+1
$0055	$01A6			CLRF	FARG_Sound_Play+2
$0056	$2017			CALL	_Sound_Play
;Sound_Var.c,21 :: 		}//~
$0057	$0008			RETURN
$0058	$	_Tone2:
;Sound_Var.c,23 :: 		void Tone2() {
;Sound_Var.c,24 :: 		Sound_Play(180, 200);   // Period = 1.8ms <=> 555Hz
$0058	$30B4			MOVLW	180
$0059	$1303			BCF	STATUS, RP1
$005A	$1283			BCF	STATUS, RP0
$005B	$00A4			MOVWF	FARG_Sound_Play+0
$005C	$30C8			MOVLW	200
$005D	$00A5			MOVWF	FARG_Sound_Play+1
$005E	$01A6			CLRF	FARG_Sound_Play+2
$005F	$2017			CALL	_Sound_Play
;Sound_Var.c,25 :: 		}//~
$0060	$0008			RETURN
$0061	$	_Tone3:
;Sound_Var.c,27 :: 		void Tone3() {
;Sound_Var.c,28 :: 		Sound_Play(160, 200);   // Period = 1.6ms <=> 625Hz
$0061	$30A0			MOVLW	160
$0062	$1303			BCF	STATUS, RP1
$0063	$1283			BCF	STATUS, RP0
$0064	$00A4			MOVWF	FARG_Sound_Play+0
$0065	$30C8			MOVLW	200
$0066	$00A5			MOVWF	FARG_Sound_Play+1
$0067	$01A6			CLRF	FARG_Sound_Play+2
$0068	$2017			CALL	_Sound_Play
;Sound_Var.c,29 :: 		}//~
$0069	$0008			RETURN
$006A	$	_ToneA:
;Sound_Var.c,40 :: 		void ToneA() {
;Sound_Var.c,41 :: 		Sound_Play(80, 20);
$006A	$3050			MOVLW	80
$006B	$1303			BCF	STATUS, RP1
$006C	$1283			BCF	STATUS, RP0
$006D	$00A4			MOVWF	FARG_Sound_Play+0
$006E	$3014			MOVLW	20
$006F	$00A5			MOVWF	FARG_Sound_Play+1
$0070	$3000			MOVLW	0
$0071	$00A6			MOVWF	FARG_Sound_Play+2
$0072	$2017			CALL	_Sound_Play
;Sound_Var.c,42 :: 		}
$0073	$0008			RETURN
$0074	$	_ToneC:
;Sound_Var.c,43 :: 		void ToneC() {
;Sound_Var.c,44 :: 		Sound_Play(70, 20);
$0074	$3046			MOVLW	70
$0075	$1303			BCF	STATUS, RP1
$0076	$1283			BCF	STATUS, RP0
$0077	$00A4			MOVWF	FARG_Sound_Play+0
$0078	$3014			MOVLW	20
$0079	$00A5			MOVWF	FARG_Sound_Play+1
$007A	$3000			MOVLW	0
$007B	$00A6			MOVWF	FARG_Sound_Play+2
$007C	$2017			CALL	_Sound_Play
;Sound_Var.c,45 :: 		}
$007D	$0008			RETURN
$007E	$	_ToneE:
;Sound_Var.c,46 :: 		void ToneE() {
;Sound_Var.c,47 :: 		Sound_Play(60, 80);
$007E	$303C			MOVLW	60
$007F	$1303			BCF	STATUS, RP1
$0080	$1283			BCF	STATUS, RP0
$0081	$00A4			MOVWF	FARG_Sound_Play+0
$0082	$3050			MOVLW	80
$0083	$00A5			MOVWF	FARG_Sound_Play+1
$0084	$3000			MOVLW	0
$0085	$00A6			MOVWF	FARG_Sound_Play+2
$0086	$2017			CALL	_Sound_Play
;Sound_Var.c,48 :: 		}
$0087	$0008			RETURN
$0088	$	_Sound_Init:
$0088	$1303			BCF	STATUS, RP1
$0089	$1283			BCF	STATUS, RP0
$008A	$0822			MOVF	FARG_Sound_Init+0, 0
$008B	$0084			MOVWF	FSR
$008C	$0820			MOVF	_SoundPortAddress, 0
$008D	$1903			BTFSC	STATUS, Z
$008E	$288F			GOTO	L_Sound_Init_0
$008F	$	L_Sound_Init_0:
$008F	$0804			MOVF	FSR, W
$0090	$00A0			MOVWF	_SoundPortAddress
$0091	$1784			BSF	FSR, 7
$0092	$0823			MOVF	FARG_Sound_Init+1, 0
$0093	$00F1			MOVWF	STACK_1
$0094	$3001			MOVLW	1
$0095	$00F0			MOVWF	STACK_0
$0096	$0871			MOVF	STACK_1, 0
$0097	$	L_Sound_Init_4:
$0097	$1903			BTFSC	STATUS, Z
$0098	$289D			GOTO	L_Sound_Init_5
$0099	$0DF0			RLF	STACK_0, 1
$009A	$1070			BCF	STACK_0, 0
$009B	$3FFF			ADDLW	255
$009C	$2897			GOTO	L_Sound_Init_4
$009D	$	L_Sound_Init_5:
$009D	$09F0			COMF	STACK_0, F
$009E	$0870			MOVF	STACK_0, 0
$009F	$0580			ANDWF	INDF, 1
$00A0	$0823			MOVF	FARG_Sound_Init+1, 0
$00A1	$00A1			MOVWF	_SoundPin
$00A2	$0008			RETURN
$00A3	$	_Melody:
;Sound_Var.c,31 :: 		void Melody() {        // Plays the melody "Yellow house"
;Sound_Var.c,32 :: 		Tone1(); Tone2(); Tone3(); Tone3();
$00A3	$204F			CALL	_Tone1
$00A4	$2058			CALL	_Tone2
$00A5	$2061			CALL	_Tone3
$00A6	$2061			CALL	_Tone3
;Sound_Var.c,33 :: 		Tone1(); Tone2(); Tone3(); Tone3();
$00A7	$204F			CALL	_Tone1
$00A8	$2058			CALL	_Tone2
$00A9	$2061			CALL	_Tone3
$00AA	$2061			CALL	_Tone3
;Sound_Var.c,34 :: 		Tone1(); Tone2(); Tone3();
$00AB	$204F			CALL	_Tone1
$00AC	$2058			CALL	_Tone2
$00AD	$2061			CALL	_Tone3
;Sound_Var.c,35 :: 		Tone1(); Tone2(); Tone3(); Tone3();
$00AE	$204F			CALL	_Tone1
$00AF	$2058			CALL	_Tone2
$00B0	$2061			CALL	_Tone3
$00B1	$2061			CALL	_Tone3
;Sound_Var.c,36 :: 		Tone1(); Tone2(); Tone3();
$00B2	$204F			CALL	_Tone1
$00B3	$2058			CALL	_Tone2
$00B4	$2061			CALL	_Tone3
;Sound_Var.c,37 :: 		Tone3(); Tone3(); Tone2(); Tone2(); Tone1();
$00B5	$2061			CALL	_Tone3
$00B6	$2061			CALL	_Tone3
$00B7	$2058			CALL	_Tone2
$00B8	$2058			CALL	_Tone2
$00B9	$204F			CALL	_Tone1
;Sound_Var.c,38 :: 		}//~
$00BA	$0008			RETURN
$00BB	$	_Melody2:
;Sound_Var.c,50 :: 		void Melody2() {
;Sound_Var.c,52 :: 		for (i = 9; i > 0; i--) {
$00BB	$3009			MOVLW	9
$00BC	$1303			BCF	STATUS, RP1
$00BD	$1283			BCF	STATUS, RP0
$00BE	$00A2			MOVWF	Melody2_i_L0
$00BF	$	L_Melody2_0:
$00BF	$0822			MOVF	Melody2_i_L0, 0
$00C0	$3C00			SUBLW	0
$00C1	$1803			BTFSC	STATUS, C
$00C2	$28C8			GOTO	L_Melody2_1
;Sound_Var.c,53 :: 		ToneA(); ToneC(); ToneE();
$00C3	$206A			CALL	_ToneA
$00C4	$2074			CALL	_ToneC
$00C5	$207E			CALL	_ToneE
;Sound_Var.c,54 :: 		}
$00C6	$	L_Melody2_2:
;Sound_Var.c,52 :: 		for (i = 9; i > 0; i--) {
$00C6	$03A2			DECF	Melody2_i_L0, 1
;Sound_Var.c,54 :: 		}
$00C7	$28BF			GOTO	L_Melody2_0
$00C8	$	L_Melody2_1:
;Sound_Var.c,55 :: 		}//~
$00C8	$0008			RETURN
$00C9	$	_main:
;Sound_Var.c,57 :: 		void main() {
;Sound_Var.c,58 :: 		TRISB = 0xF0;
$00C9	$30F0			MOVLW	240
$00CA	$1303			BCF	STATUS, RP1
$00CB	$1683			BSF	STATUS, RP0
$00CC	$0086			MOVWF	TRISB
;Sound_Var.c,60 :: 		Sound_Init(&PORTB, 3);
$00CD	$3006			MOVLW	PORTB
$00CE	$1283			BCF	STATUS, RP0
$00CF	$00A2			MOVWF	FARG_Sound_Init+0
$00D0	$3003			MOVLW	3
$00D1	$00A3			MOVWF	FARG_Sound_Init+1
$00D2	$2088			CALL	_Sound_Init
;Sound_Var.c,62 :: 		Melody();
$00D3	$20A3			CALL	_Melody
;Sound_Var.c,63 :: 		Delay_ms(1000);
$00D4	$301A			MOVLW	26
$00D5	$00FC			MOVWF	STACK_12
$00D6	$30FF			MOVLW	255
$00D7	$00FB			MOVWF	STACK_11
$00D8	$30FF			MOVLW	255
$00D9	$00FA			MOVWF	STACK_10
$00DA	$0BFC			DECFSZ	STACK_12, F
$00DB	$28DD			GOTO	$+2
$00DC	$28E4			GOTO	$+8
$00DD	$0BFB			DECFSZ	STACK_11, F
$00DE	$28E0			GOTO	$+2
$00DF	$28E3			GOTO	$+4
$00E0	$0BFA			DECFSZ	STACK_10, F
$00E1	$28E0			GOTO	$-1
$00E2	$28DD			GOTO	$-5
$00E3	$28DA			GOTO	$-9
$00E4	$307F			MOVLW	127
$00E5	$00FB			MOVWF	STACK_11
$00E6	$30FF			MOVLW	255
$00E7	$00FA			MOVWF	STACK_10
$00E8	$0BFB			DECFSZ	STACK_11, F
$00E9	$28EB			GOTO	$+2
$00EA	$28EE			GOTO	$+4
$00EB	$0BFA			DECFSZ	STACK_10, F
$00EC	$28EB			GOTO	$-1
$00ED	$28E8			GOTO	$-5
$00EE	$3059			MOVLW	89
$00EF	$00FA			MOVWF	STACK_10
$00F0	$0BFA			DECFSZ	STACK_10, F
$00F1	$28F0			GOTO	$-1
$00F2	$0000			NOP
$00F3	$0000			NOP
;Sound_Var.c,64 :: 		Melody2();
$00F4	$20BB			CALL	_Melody2
;Sound_Var.c,66 :: 		}//~!
$00F5	$28F5			GOTO	$
