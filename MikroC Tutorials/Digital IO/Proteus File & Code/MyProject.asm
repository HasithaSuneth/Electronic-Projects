
_main:

;MyProject.c,25 :: 		void main()
;MyProject.c,31 :: 		TRISB = 0x00;            // PORTB as Output
	CLRF       TRISB+0
;MyProject.c,32 :: 		TRISA = 0x00;            // PORTA as Output
	CLRF       TRISA+0
;MyProject.c,33 :: 		do
L_main0:
;MyProject.c,35 :: 		PORTB = 0xFF;           // PORTB(8 pins) ON
	MOVLW      255
	MOVWF      PORTB+0
;MyProject.c,36 :: 		Delay_ms(1000);         // Delay 1 second
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;MyProject.c,37 :: 		PORTB = 0x00;           // PORTB(8 pins) OFF
	CLRF       PORTB+0
;MyProject.c,38 :: 		Delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;MyProject.c,39 :: 		PORTB = 0x01;           // PORTB(8 pins) pin 01 ON        ** Method 01 **
	MOVLW      1
	MOVWF      PORTB+0
;MyProject.c,40 :: 		Delay_ms(500);          // Delay 0.5 second
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;MyProject.c,41 :: 		PORTB = 0b00000011;     // PORTB(8 pins) pin 01 & 02 ON   ** Method 02 **
	MOVLW      3
	MOVWF      PORTB+0
;MyProject.c,42 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;MyProject.c,43 :: 		PORTB.B2 = 1;           // PORTB(8 pins) pin 03 ON        ** Method 03 **
	BSF        PORTB+0, 2
;MyProject.c,44 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;MyProject.c,45 :: 		PORTB = 0x0F;           // PORTB(8 pins) pin 1,2,3 & 4 ON
	MOVLW      15
	MOVWF      PORTB+0
;MyProject.c,46 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;MyProject.c,47 :: 		PORTB = 0b00011111;     // PORTB(8 pins) pin 1,2,3,4 & 5 ON
	MOVLW      31
	MOVWF      PORTB+0
;MyProject.c,48 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;MyProject.c,49 :: 		PORTB.B5 = 1;           // PORTB(8 pins) pin 06 ON
	BSF        PORTB+0, 5
;MyProject.c,50 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;MyProject.c,51 :: 		PORTB = 0x7F;           // PORTB(8 pins) pin 1,2,3,4,5,6 & 7 ON
	MOVLW      127
	MOVWF      PORTB+0
;MyProject.c,52 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;MyProject.c,54 :: 		while(1);               // Endless Loop
	GOTO       L_main0
;MyProject.c,55 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
