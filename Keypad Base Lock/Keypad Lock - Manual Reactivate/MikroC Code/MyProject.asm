
_Move_Delay:

;MyProject.c,12 :: 		void Move_Delay() {                  // Function used for text moving
;MyProject.c,13 :: 		Delay_ms(500);                     // change text moving speed here
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_Move_Delay0:
	DECFSZ     R13+0, 1
	GOTO       L_Move_Delay0
	DECFSZ     R12+0, 1
	GOTO       L_Move_Delay0
	DECFSZ     R11+0, 1
	GOTO       L_Move_Delay0
	NOP
	NOP
;MyProject.c,14 :: 		}
L_end_Move_Delay:
	RETURN
; end of _Move_Delay

_code_enter:

;MyProject.c,33 :: 		void code_enter()
;MyProject.c,35 :: 		kp = 0; // Reset key code variable
	CLRF       _kp+0
;MyProject.c,37 :: 		do
L_code_enter1:
;MyProject.c,39 :: 		kp = Keypad_Key_Click(); // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;MyProject.c,40 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter1
;MyProject.c,42 :: 		switch (kp)
	GOTO       L_code_enter4
;MyProject.c,44 :: 		case 1: kp = 49; break; // 1
L_code_enter6:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,45 :: 		case 2: kp = 50; break; // 2
L_code_enter7:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,46 :: 		case 3: kp = 51; break; // 3
L_code_enter8:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,47 :: 		case 5: kp = 52; break; // 4
L_code_enter9:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,48 :: 		case 6: kp = 53; break; // 5
L_code_enter10:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,49 :: 		case 7: kp = 54; break; // 6
L_code_enter11:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,50 :: 		case 9: kp = 55; break; // 7
L_code_enter12:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,51 :: 		case 10: kp = 56; break; // 8
L_code_enter13:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,52 :: 		case 11: kp = 57; break; // 9
L_code_enter14:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,53 :: 		case  4: kp = 65; break; // A
L_code_enter15:
	MOVLW      65
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,54 :: 		case  8: kp = 66; break; // B
L_code_enter16:
	MOVLW      66
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,55 :: 		case 12: kp = 67; break; // C
L_code_enter17:
	MOVLW      67
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,56 :: 		case 16: kp = 68; break; // D
L_code_enter18:
	MOVLW      68
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,57 :: 		case 13: kp = 42; break; // *
L_code_enter19:
	MOVLW      42
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,58 :: 		case 14: kp = 48; break; // 0
L_code_enter20:
	MOVLW      48
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,59 :: 		case 15: kp = 35; break; // #
L_code_enter21:
	MOVLW      35
	MOVWF      _kp+0
	GOTO       L_code_enter5
;MyProject.c,60 :: 		}
L_code_enter4:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter6
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter7
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter8
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter9
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter10
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter11
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter12
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter13
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter14
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter15
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter16
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter17
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter18
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter19
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter20
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_code_enter21
L_code_enter5:
;MyProject.c,61 :: 		code1[i] = kp;
	MOVF       _i+0, 0
	ADDLW      _code1+0
	MOVWF      FSR
	MOVF       _kp+0, 0
	MOVWF      INDF+0
;MyProject.c,62 :: 		Lcd_Chr(2, i+6, code1[i]);  // Print key ASCII value on Lcd
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	ADDWF      _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _i+0, 0
	ADDLW      _code1+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;MyProject.c,63 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,64 :: 		}
L_end_code_enter:
	RETURN
; end of _code_enter

_delay_20ms:

;MyProject.c,65 :: 		void delay_20ms()
;MyProject.c,67 :: 		Delay_ms(20);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_delay_20ms22:
	DECFSZ     R13+0, 1
	GOTO       L_delay_20ms22
	DECFSZ     R12+0, 1
	GOTO       L_delay_20ms22
	NOP
;MyProject.c,69 :: 		}
L_end_delay_20ms:
	RETURN
; end of _delay_20ms

_code_read:

;MyProject.c,70 :: 		void code_read()    //Read data from EEPROM
;MyProject.c,72 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,73 :: 		user1[0] = EEPROM_Read(0x00);// Read data from address
	CLRF       FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _user1+0
;MyProject.c,74 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,75 :: 		user1[1] = EEPROM_Read(0x01);// Read data from address
	MOVLW      1
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _user1+1
;MyProject.c,76 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,77 :: 		user1[2] = EEPROM_Read(0x02);// Read data from address
	MOVLW      2
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _user1+2
;MyProject.c,78 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,79 :: 		user1[3] = EEPROM_Read(0x03);// Read data from address
	MOVLW      3
	MOVWF      FARG_EEPROM_Read_Address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _user1+3
;MyProject.c,80 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,81 :: 		}
L_end_code_read:
	RETURN
; end of _code_read

_code_write:

;MyProject.c,82 :: 		void code_write()    //Write data from EEPROM
;MyProject.c,84 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,85 :: 		EEPROM_Write(0x00,code1[0]);// Write some data
	CLRF       FARG_EEPROM_Write_Address+0
	MOVF       _code1+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,86 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,87 :: 		EEPROM_Write(0x01,code1[1]);// Write some data
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _code1+1, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,88 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,89 :: 		EEPROM_Write(0x02,code1[2]);// Write some data
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _code1+2, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,90 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,91 :: 		EEPROM_Write(0x03,code1[3]);// Write some data
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVF       _code1+3, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,92 :: 		}
L_end_code_write:
	RETURN
; end of _code_write

_change_code:

;MyProject.c,93 :: 		void change_code()
;MyProject.c,94 :: 		{ top2:
___change_code_top2:
;MyProject.c,95 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,96 :: 		Lcd_Out(1, 2, "ENTER NEW CODE");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,97 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_change_code23:
	DECFSZ     R13+0, 1
	GOTO       L_change_code23
	DECFSZ     R12+0, 1
	GOTO       L_change_code23
	DECFSZ     R11+0, 1
	GOTO       L_change_code23
	NOP
	NOP
;MyProject.c,98 :: 		i=0;
	CLRF       _i+0
	CLRF       _i+1
;MyProject.c,99 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,100 :: 		if(code1[0] == 42)
	MOVF       _code1+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_change_code24
;MyProject.c,101 :: 		{goto top2 ;}
	GOTO       ___change_code_top2
L_change_code24:
;MyProject.c,102 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,103 :: 		if(code1[1] == 42)
	MOVF       _code1+1, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_change_code25
;MyProject.c,104 :: 		{goto top2 ;}
	GOTO       ___change_code_top2
L_change_code25:
;MyProject.c,105 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,106 :: 		if(code1[2] == 42)
	MOVF       _code1+2, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_change_code26
;MyProject.c,107 :: 		{goto top2 ;}
	GOTO       ___change_code_top2
L_change_code26:
;MyProject.c,108 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,109 :: 		if(code1[3] == 42)
	MOVF       _code1+3, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_change_code27
;MyProject.c,110 :: 		{goto top2 ;}
	GOTO       ___change_code_top2
L_change_code27:
;MyProject.c,111 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,112 :: 		if(code1[4] == 42)
	MOVF       _code1+4, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_change_code28
;MyProject.c,113 :: 		{goto top2 ;}
	GOTO       ___change_code_top2
L_change_code28:
;MyProject.c,114 :: 		if(code1[4] == 35){
	MOVF       _code1+4, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_change_code29
;MyProject.c,115 :: 		code_write();
	CALL       _code_write+0
;MyProject.c,116 :: 		code_read();
	CALL       _code_read+0
;MyProject.c,117 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_change_code30:
	DECFSZ     R13+0, 1
	GOTO       L_change_code30
	DECFSZ     R12+0, 1
	GOTO       L_change_code30
	DECFSZ     R11+0, 1
	GOTO       L_change_code30
	NOP
	NOP
;MyProject.c,118 :: 		Lcd_Out(2,5,msg10);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg10+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,119 :: 		Delay_ms(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_change_code31:
	DECFSZ     R13+0, 1
	GOTO       L_change_code31
	DECFSZ     R12+0, 1
	GOTO       L_change_code31
	DECFSZ     R11+0, 1
	GOTO       L_change_code31
	NOP
	NOP
;MyProject.c,120 :: 		}
	GOTO       L_change_code32
L_change_code29:
;MyProject.c,122 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,123 :: 		Lcd_Out(1,7, "ERROR");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,124 :: 		Delay_ms(1000); }
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_change_code33:
	DECFSZ     R13+0, 1
	GOTO       L_change_code33
	DECFSZ     R12+0, 1
	GOTO       L_change_code33
	DECFSZ     R11+0, 1
	GOTO       L_change_code33
	NOP
	NOP
L_change_code32:
;MyProject.c,125 :: 		}
L_end_change_code:
	RETURN
; end of _change_code

_main:

;MyProject.c,126 :: 		void main()
;MyProject.c,128 :: 		ADCON1 |= 0x07;   // Configure AN pins as digital
	MOVLW      7
	IORWF      ADCON1+0, 1
;MyProject.c,129 :: 		TRISA = 0x00;     // set direction to be output
	CLRF       TRISA+0
;MyProject.c,131 :: 		Keypad_Init();    // Initialize Keypad
	CALL       _Keypad_Init+0
;MyProject.c,132 :: 		Lcd_Init();       // Initialize Lcd
	CALL       _Lcd_Init+0
;MyProject.c,133 :: 		code_read();
	CALL       _code_read+0
;MyProject.c,135 :: 		if(user1[0] == 0xFF && user1[1] == 0xFF && user1[2] == 0xFF && user1[3] == 0xFF
	MOVF       _user1+0, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L_main36
	MOVF       _user1+1, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L_main36
	MOVF       _user1+2, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L_main36
	MOVF       _user1+3, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L_main36
;MyProject.c,136 :: 		)
L__main84:
;MyProject.c,138 :: 		EEPROM_Write(0x00,'2');// Write some data at address 00
	CLRF       FARG_EEPROM_Write_Address+0
	MOVLW      50
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,139 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,140 :: 		EEPROM_Write(0x01,'5');// Write some data at address 02
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      53
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,141 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,142 :: 		EEPROM_Write(0x02,'8');// Write some data at address 04
	MOVLW      2
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      56
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,144 :: 		delay_20ms();
	CALL       _delay_20ms+0
;MyProject.c,145 :: 		EEPROM_Write(0x03,'0');// Write some data at address 08
	MOVLW      3
	MOVWF      FARG_EEPROM_Write_Address+0
	MOVLW      48
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;MyProject.c,146 :: 		}
L_main36:
;MyProject.c,147 :: 		code_read();
	CALL       _code_read+0
;MyProject.c,148 :: 		Lcd_Cmd(_LCD_CLEAR);      // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,149 :: 		Lcd_Cmd(_LCD_CURSOR_OFF); // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,150 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	DECFSZ     R11+0, 1
	GOTO       L_main37
	NOP
	NOP
;MyProject.c,151 :: 		Lcd_Out(1, 2,msg1 );
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,152 :: 		Lcd_Out(2, 3,msg6 );
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg6+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,153 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	DECFSZ     R11+0, 1
	GOTO       L_main38
	NOP
	NOP
;MyProject.c,154 :: 		Lcd_Cmd(_LCD_CLEAR);      // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,155 :: 		cnt=0;
	CLRF       _cnt+0
	CLRF       _cnt+1
;MyProject.c,156 :: 		do
L_main39:
;MyProject.c,157 :: 		{ top:                    // off lock goto funtion
___main_top:
;MyProject.c,158 :: 		PORTA.B0=1;
	BSF        PORTA+0, 0
;MyProject.c,159 :: 		PORTA.B3=0;
	BCF        PORTA+0, 3
;MyProject.c,160 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,161 :: 		Lcd_Out(2, 4, " PRESS '*'");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,162 :: 		i = 0;
	CLRF       _i+0
	CLRF       _i+1
;MyProject.c,163 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,164 :: 		if(code1[0] == 42)
	MOVF       _code1+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main42
;MyProject.c,165 :: 		{   top3:
___main_top3:
;MyProject.c,166 :: 		Lcd_Cmd(_LCD_CLEAR);  // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,167 :: 		Lcd_Out(1, 4, msg2);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,169 :: 		i = 0;
	CLRF       _i+0
	CLRF       _i+1
;MyProject.c,170 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,171 :: 		if(code1[0] == 42)
	MOVF       _code1+0, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main43
;MyProject.c,172 :: 		{goto top3 ;}
	GOTO       ___main_top3
L_main43:
;MyProject.c,173 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,174 :: 		if(code1[1] == 42)
	MOVF       _code1+1, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main44
;MyProject.c,175 :: 		{goto top3 ;}
	GOTO       ___main_top3
L_main44:
;MyProject.c,176 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,177 :: 		if(code1[2] == 42)
	MOVF       _code1+2, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main45
;MyProject.c,178 :: 		{goto top3 ;}
	GOTO       ___main_top3
L_main45:
;MyProject.c,179 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,180 :: 		if(code1[3] == 42)
	MOVF       _code1+3, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main46
;MyProject.c,181 :: 		{goto top3 ;}
	GOTO       ___main_top3
L_main46:
;MyProject.c,182 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,183 :: 		if(code1[4] == 42)
	MOVF       _code1+4, 0
	XORLW      42
	BTFSS      STATUS+0, 2
	GOTO       L_main47
;MyProject.c,184 :: 		{goto top3 ;}
	GOTO       ___main_top3
L_main47:
;MyProject.c,186 :: 		if(code1[0] == '2' && code1[1] == '3' && code1[2] == '4' && code1[3] == '5' && code1[4] == '5')          //check master code
	MOVF       _code1+0, 0
	XORLW      50
	BTFSS      STATUS+0, 2
	GOTO       L_main50
	MOVF       _code1+1, 0
	XORLW      51
	BTFSS      STATUS+0, 2
	GOTO       L_main50
	MOVF       _code1+2, 0
	XORLW      52
	BTFSS      STATUS+0, 2
	GOTO       L_main50
	MOVF       _code1+3, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L_main50
	MOVF       _code1+4, 0
	XORLW      53
	BTFSS      STATUS+0, 2
	GOTO       L_main50
L__main83:
;MyProject.c,188 :: 		code_enter();
	CALL       _code_enter+0
;MyProject.c,189 :: 		if(code1[5] == 35)
	MOVF       _code1+5, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main51
;MyProject.c,191 :: 		change_code();
	CALL       _change_code+0
;MyProject.c,192 :: 		goto top ;
	GOTO       ___main_top
;MyProject.c,193 :: 		}
L_main51:
;MyProject.c,194 :: 		}
L_main50:
;MyProject.c,195 :: 		if(cnt<3 && code1[0] == user1[0] && code1[1] == user1[1] && code1[2] == user1
	MOVLW      128
	XORWF      _cnt+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main92
	MOVLW      3
	SUBWF      _cnt+0, 0
L__main92:
	BTFSC      STATUS+0, 0
	GOTO       L_main54
	MOVF       _code1+0, 0
	XORWF      _user1+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main54
	MOVF       _code1+1, 0
	XORWF      _user1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main54
;MyProject.c,196 :: 		[2] && code1[3] == user1[3] && code1[4] == 35) //compare code with store one
	MOVF       _code1+2, 0
	XORWF      _user1+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main54
	MOVF       _code1+3, 0
	XORWF      _user1+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L_main54
	MOVF       _code1+4, 0
	XORLW      35
	BTFSS      STATUS+0, 2
	GOTO       L_main54
L__main82:
;MyProject.c,197 :: 		{ if(PORTA.B2 == 1)
	BTFSS      PORTA+0, 2
	GOTO       L_main55
;MyProject.c,199 :: 		PORTA.B2=0;
	BCF        PORTA+0, 2
;MyProject.c,200 :: 		cnt=0;
	CLRF       _cnt+0
	CLRF       _cnt+1
;MyProject.c,201 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,202 :: 		Lcd_Out(1,2,msg1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,203 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main56:
	DECFSZ     R13+0, 1
	GOTO       L_main56
	DECFSZ     R12+0, 1
	GOTO       L_main56
	DECFSZ     R11+0, 1
	GOTO       L_main56
	NOP
	NOP
;MyProject.c,204 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,205 :: 		goto top ;
	GOTO       ___main_top
;MyProject.c,206 :: 		}      // this use to identify lock situation
L_main55:
;MyProject.c,208 :: 		Lcd_Cmd(_LCD_CLEAR);   // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,209 :: 		Lcd_Out(1, 2, msg3);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg3+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,210 :: 		Lcd_Out(2, 2, msg7);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg7+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,211 :: 		cnt=0;
	CLRF       _cnt+0
	CLRF       _cnt+1
;MyProject.c,212 :: 		PORTA.B0=0;
	BCF        PORTA+0, 0
;MyProject.c,213 :: 		PORTA.B2=1;           //Buzzer
	BSF        PORTA+0, 2
;MyProject.c,214 :: 		Delay_ms(6000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main57:
	DECFSZ     R13+0, 1
	GOTO       L_main57
	DECFSZ     R12+0, 1
	GOTO       L_main57
	DECFSZ     R11+0, 1
	GOTO       L_main57
	NOP
;MyProject.c,215 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,216 :: 		Lcd_Out(2, 2, msg7);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg7+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,218 :: 		for(i=0; i<3; i++) {               // Move text to the right 4 times
	CLRF       _i+0
	CLRF       _i+1
L_main58:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main93
	MOVLW      3
	SUBWF      _i+0, 0
L__main93:
	BTFSC      STATUS+0, 0
	GOTO       L_main59
;MyProject.c,219 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,220 :: 		Move_Delay();}
	CALL       _Move_Delay+0
;MyProject.c,218 :: 		for(i=0; i<3; i++) {               // Move text to the right 4 times
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,220 :: 		Move_Delay();}
	GOTO       L_main58
L_main59:
;MyProject.c,221 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main61:
	DECFSZ     R13+0, 1
	GOTO       L_main61
	DECFSZ     R12+0, 1
	GOTO       L_main61
	DECFSZ     R11+0, 1
	GOTO       L_main61
	NOP
	NOP
;MyProject.c,222 :: 		for(i=0; i<5; i++) {               // Move text to the right 4 times
	CLRF       _i+0
	CLRF       _i+1
L_main62:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main94
	MOVLW      5
	SUBWF      _i+0, 0
L__main94:
	BTFSC      STATUS+0, 0
	GOTO       L_main63
;MyProject.c,223 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,224 :: 		Move_Delay();}
	CALL       _Move_Delay+0
;MyProject.c,222 :: 		for(i=0; i<5; i++) {               // Move text to the right 4 times
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,224 :: 		Move_Delay();}
	GOTO       L_main62
L_main63:
;MyProject.c,225 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main65:
	DECFSZ     R13+0, 1
	GOTO       L_main65
	DECFSZ     R12+0, 1
	GOTO       L_main65
	DECFSZ     R11+0, 1
	GOTO       L_main65
	NOP
	NOP
;MyProject.c,226 :: 		for(i=0; i<2; i++) {               // Move text to the right 4 times
	CLRF       _i+0
	CLRF       _i+1
L_main66:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main95
	MOVLW      2
	SUBWF      _i+0, 0
L__main95:
	BTFSC      STATUS+0, 0
	GOTO       L_main67
;MyProject.c,227 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,228 :: 		Move_Delay();}
	CALL       _Move_Delay+0
;MyProject.c,226 :: 		for(i=0; i<2; i++) {               // Move text to the right 4 times
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;MyProject.c,228 :: 		Move_Delay();}
	GOTO       L_main66
L_main67:
;MyProject.c,229 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main69:
	DECFSZ     R13+0, 1
	GOTO       L_main69
	DECFSZ     R12+0, 1
	GOTO       L_main69
	DECFSZ     R11+0, 1
	GOTO       L_main69
	NOP
	NOP
;MyProject.c,230 :: 		}
	GOTO       L_main70
L_main54:
;MyProject.c,234 :: 		cnt++;
	INCF       _cnt+0, 1
	BTFSC      STATUS+0, 2
	INCF       _cnt+1, 1
;MyProject.c,235 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,236 :: 		Lcd_Out(1, 3,msg4 );
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,237 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main71:
	DECFSZ     R13+0, 1
	GOTO       L_main71
	DECFSZ     R12+0, 1
	GOTO       L_main71
	DECFSZ     R11+0, 1
	GOTO       L_main71
	NOP
	NOP
;MyProject.c,238 :: 		}
L_main70:
;MyProject.c,239 :: 		if(cnt>=3)
	MOVLW      128
	XORWF      _cnt+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main96
	MOVLW      3
	SUBWF      _cnt+0, 0
L__main96:
	BTFSS      STATUS+0, 0
	GOTO       L_main72
;MyProject.c,243 :: 		PORTA.B2=0;
	BCF        PORTA+0, 2
;MyProject.c,244 :: 		PORTA.B0=0;
	BCF        PORTA+0, 0
;MyProject.c,245 :: 		PORTA.B3=1;
	BSF        PORTA+0, 3
;MyProject.c,246 :: 		while(u<3) {
L_main76:
	MOVLW      128
	XORWF      _u+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main97
	MOVLW      3
	SUBWF      _u+0, 0
L__main97:
	BTFSC      STATUS+0, 0
	GOTO       L_main77
;MyProject.c,247 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,248 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main78:
	DECFSZ     R13+0, 1
	GOTO       L_main78
	DECFSZ     R12+0, 1
	GOTO       L_main78
	DECFSZ     R11+0, 1
	GOTO       L_main78
	NOP
	NOP
;MyProject.c,249 :: 		Lcd_Out(1, 3, msg8 );
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg8+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,250 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main79:
	DECFSZ     R13+0, 1
	GOTO       L_main79
	DECFSZ     R12+0, 1
	GOTO       L_main79
	DECFSZ     R11+0, 1
	GOTO       L_main79
	NOP
	NOP
;MyProject.c,251 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,252 :: 		Delay_ms(500);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main80:
	DECFSZ     R13+0, 1
	GOTO       L_main80
	DECFSZ     R12+0, 1
	GOTO       L_main80
	DECFSZ     R11+0, 1
	GOTO       L_main80
	NOP
	NOP
;MyProject.c,253 :: 		Lcd_Out(1, 3, msg8 );
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _msg8+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,254 :: 		Delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main81:
	DECFSZ     R13+0, 1
	GOTO       L_main81
	DECFSZ     R12+0, 1
	GOTO       L_main81
	DECFSZ     R11+0, 1
	GOTO       L_main81
	NOP
	NOP
;MyProject.c,255 :: 		u++;
	INCF       _u+0, 1
	BTFSC      STATUS+0, 2
	INCF       _u+1, 1
;MyProject.c,256 :: 		}
	GOTO       L_main76
L_main77:
;MyProject.c,257 :: 		cnt=2;
	MOVLW      2
	MOVWF      _cnt+0
	MOVLW      0
	MOVWF      _cnt+1
;MyProject.c,258 :: 		u=0;
	CLRF       _u+0
	CLRF       _u+1
;MyProject.c,259 :: 		goto top ;
	GOTO       ___main_top
;MyProject.c,262 :: 		}
L_main72:
;MyProject.c,263 :: 		}
L_main42:
;MyProject.c,265 :: 		while(1);
	GOTO       L_main39
;MyProject.c,266 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
