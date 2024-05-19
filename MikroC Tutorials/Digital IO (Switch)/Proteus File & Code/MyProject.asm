
_main:

;MyProject.c,28 :: 		void main()
;MyProject.c,30 :: 		TRISA = 0xFF;          // Port A as Input
	MOVLW      255
	MOVWF      TRISA+0
;MyProject.c,31 :: 		TRISB = 0x00;          // Port B as Output
	CLRF       TRISB+0
;MyProject.c,32 :: 		PORTB = 0x00;
	CLRF       PORTB+0
;MyProject.c,33 :: 		do
L_main0:
;MyProject.c,37 :: 		if (Button(&PORTA, 0, 1, 1))        // if (Button(&PORT(input port),(bit number),(time),(active_state))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;MyProject.c,39 :: 		PORTB.B0 = 1;                       //PortB bit0 On
	BSF        PORTB+0, 0
;MyProject.c,40 :: 		PORTB.B1 = 0;                       //PortB bit1 Off
	BCF        PORTB+0, 1
;MyProject.c,41 :: 		}
	GOTO       L_main4
L_main3:
;MyProject.c,44 :: 		PORTB.B0 = 0;                       //PortB bit0 Off
	BCF        PORTB+0, 0
;MyProject.c,45 :: 		PORTB.B1 = 1;                       //PortB bit1 On
	BSF        PORTB+0, 1
;MyProject.c,46 :: 		}
L_main4:
;MyProject.c,48 :: 		if(PORTA.B1==1)                     //If PortA bit 1 is high, Go in to
	BTFSS      PORTA+0, 1
	GOTO       L_main5
;MyProject.c,50 :: 		PORTB.B2 = 1;
	BSF        PORTB+0, 2
;MyProject.c,51 :: 		PORTB.B3 = 0;
	BCF        PORTB+0, 3
;MyProject.c,52 :: 		}
	GOTO       L_main6
L_main5:
;MyProject.c,55 :: 		PORTB.B2 = 0;
	BCF        PORTB+0, 2
;MyProject.c,56 :: 		PORTB.B3 = 1;
	BSF        PORTB+0, 3
;MyProject.c,57 :: 		}
L_main6:
;MyProject.c,61 :: 		if (Button(&PORTA, 2, 1, 1))         //If PortA bit 2 is high, Go in to
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main7
;MyProject.c,62 :: 		{ PORTB.B4 = 1; }
	BSF        PORTB+0, 4
	GOTO       L_main8
L_main7:
;MyProject.c,64 :: 		{ PORTB.B4 = 0; }
	BCF        PORTB+0, 4
L_main8:
;MyProject.c,66 :: 		if(PORTA.B3==1)
	BTFSS      PORTA+0, 3
	GOTO       L_main9
;MyProject.c,67 :: 		{ PORTB.B5 = 1; }
	BSF        PORTB+0, 5
	GOTO       L_main10
L_main9:
;MyProject.c,69 :: 		{ PORTB.B5 = 0; }
	BCF        PORTB+0, 5
L_main10:
;MyProject.c,73 :: 		if (Button(&PORTA, 4, 1, 1))
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main11
;MyProject.c,74 :: 		if(i==1)                             //If i is high, Go in to
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      1
	XORWF      _i+0, 0
L__main17:
	BTFSS      STATUS+0, 2
	GOTO       L_main12
;MyProject.c,75 :: 		{PORTB.B6 = 0; i=0; Delay_ms(500);} //PortB Bit 6 = low / i= low / Delay 0.5 seconds for press time out
	BCF        PORTB+0, 6
	CLRF       _i+0
	CLRF       _i+1
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
	GOTO       L_main14
L_main12:
;MyProject.c,77 :: 		{PORTB.B6 = 1; i=1; Delay_ms(500);}
	BSF        PORTB+0, 6
	MOVLW      1
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
L_main14:
L_main11:
;MyProject.c,79 :: 		while(1);                              //Endless loop
	GOTO       L_main0
;MyProject.c,80 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
