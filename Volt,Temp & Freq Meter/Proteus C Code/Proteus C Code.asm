
_Display_Freq:

;Proteus C Code.c,37 :: 		void Display_Freq(unsigned int freq2write) {
;Proteus C Code.c,39 :: 		freq[0] = (freq2write/10000)%10 + 48;
	MOVF       _freq+0, 0
	MOVWF      FLOC__Display_Freq+0
	MOVLW      16
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVF       FARG_Display_Freq_freq2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Freq_freq2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Freq+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,40 :: 		freq[1] = (freq2write/1000)%10 + 48;
	INCF       _freq+0, 0
	MOVWF      FLOC__Display_Freq+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_Display_Freq_freq2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Freq_freq2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Freq+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,41 :: 		freq[2] = (freq2write/100)%10 + 48;
	MOVLW      2
	ADDWF      _freq+0, 0
	MOVWF      FLOC__Display_Freq+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_Display_Freq_freq2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Freq_freq2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Freq+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,42 :: 		freq[3] = (freq2write/10)%10 + 48;    // Extract tens digit
	MOVLW      3
	ADDWF      _freq+0, 0
	MOVWF      FLOC__Display_Freq+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_Display_Freq_freq2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Freq_freq2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Freq+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,43 :: 		freq[4] =  freq2write%10     + 48;    // Extract ones digit
	MOVLW      4
	ADDWF      _freq+0, 0
	MOVWF      FLOC__Display_Freq+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_Display_Freq_freq2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Freq_freq2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Freq+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,45 :: 		Lcd_Out(2, 2, freq);                   // Display Frequency on LCD
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _freq+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,46 :: 		}
L_end_Display_Freq:
	RETURN
; end of _Display_Freq

_Display_Volt:

;Proteus C Code.c,48 :: 		void Display_Volt(unsigned int volts2write) {
;Proteus C Code.c,50 :: 		volt[0] =  volts2write/1000 + 48;
	MOVF       _volt+0, 0
	MOVWF      FLOC__Display_Volt+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       FARG_Display_Volt_volts2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Volt_volts2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Volt+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,51 :: 		volt[1] = (volts2write/100)%10 + 48;
	INCF       _volt+0, 0
	MOVWF      FLOC__Display_Volt+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_Display_Volt_volts2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Volt_volts2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Volt+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,52 :: 		volt[3] = (volts2write/10)%10 + 48;
	MOVLW      3
	ADDWF      _volt+0, 0
	MOVWF      FLOC__Display_Volt+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_Display_Volt_volts2write+0, 0
	MOVWF      R0+0
	MOVF       FARG_Display_Volt_volts2write+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Volt+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,54 :: 		Lcd_Out(2, 2, volt);                   // Display Voltage on LCD
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _volt+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,55 :: 		}
L_end_Display_Volt:
	RETURN
; end of _Display_Volt

_Display_Temperature:

;Proteus C Code.c,57 :: 		void Display_Temperature() {
;Proteus C Code.c,58 :: 		if (tempinC/10000)
	MOVLW      16
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVF       _tempinC+0, 0
	MOVWF      R0+0
	MOVF       _tempinC+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	IORWF      R0+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Display_Temperature0
;Proteus C Code.c,59 :: 		tempC[0] = tempinC/10000 + 48;
	MOVF       _tempC+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      16
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVF       _tempinC+0, 0
	MOVWF      R0+0
	MOVF       _tempinC+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	GOTO       L_Display_Temperature1
L_Display_Temperature0:
;Proteus C Code.c,61 :: 		tempC[0] = ' ';
	MOVF       _tempC+0, 0
	MOVWF      FSR
	MOVLW      32
	MOVWF      INDF+0
L_Display_Temperature1:
;Proteus C Code.c,62 :: 		tempC[1] = (tempinC/1000)%10 + 48;
	INCF       _tempC+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _tempinC+0, 0
	MOVWF      R0+0
	MOVF       _tempinC+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,63 :: 		tempC[2] = (tempinC/100)%10 + 48;
	MOVLW      2
	ADDWF      _tempC+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _tempinC+0, 0
	MOVWF      R0+0
	MOVF       _tempinC+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,64 :: 		tempC[4] = (tempinC/10)%10 + 48;
	MOVLW      4
	ADDWF      _tempC+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _tempinC+0, 0
	MOVWF      R0+0
	MOVF       _tempinC+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,65 :: 		Lcd_Out(2, 1, tempC);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _tempC+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,66 :: 		if (tempinF/10000)
	MOVLW      16
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVF       _tempinF+0, 0
	MOVWF      R0+0
	MOVF       _tempinF+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVF       R0+0, 0
	IORWF      R0+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Display_Temperature2
;Proteus C Code.c,67 :: 		tempF[0] = tempinF/10000 + 48;
	MOVF       _tempF+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      16
	MOVWF      R4+0
	MOVLW      39
	MOVWF      R4+1
	MOVF       _tempinF+0, 0
	MOVWF      R0+0
	MOVF       _tempinF+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
	GOTO       L_Display_Temperature3
L_Display_Temperature2:
;Proteus C Code.c,69 :: 		tempF[0] = ' ';
	MOVF       _tempF+0, 0
	MOVWF      FSR
	MOVLW      32
	MOVWF      INDF+0
L_Display_Temperature3:
;Proteus C Code.c,70 :: 		tempF[1] = (tempinF/1000)%10 + 48;
	INCF       _tempF+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _tempinF+0, 0
	MOVWF      R0+0
	MOVF       _tempinF+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,71 :: 		tempF[2] = (tempinF/100)%10 + 48;
	MOVLW      2
	ADDWF      _tempF+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _tempinF+0, 0
	MOVWF      R0+0
	MOVF       _tempinF+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,72 :: 		tempF[4] = (tempinF/10)%10 + 48;
	MOVLW      4
	ADDWF      _tempF+0, 0
	MOVWF      FLOC__Display_Temperature+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _tempinF+0, 0
	MOVWF      R0+0
	MOVF       _tempinF+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_U+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      48
	ADDWF      R0+0, 1
	MOVF       FLOC__Display_Temperature+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Proteus C Code.c,73 :: 		Lcd_Out(2, 10, tempF);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _tempF+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,74 :: 		}
L_end_Display_Temperature:
	RETURN
; end of _Display_Temperature

_main:

;Proteus C Code.c,76 :: 		void main() {
;Proteus C Code.c,77 :: 		PORTB = 0;                            // Initialise PORTB
	CLRF       PORTB+0
;Proteus C Code.c,78 :: 		TRISB = 0b01000000;                   // PORTB is output
	MOVLW      64
	MOVWF      TRISB+0
;Proteus C Code.c,79 :: 		TRISA = 0b00001101;                   // PORTA All Outputs, Except RA0,RA3 and RA2
	MOVLW      13
	MOVWF      TRISA+0
;Proteus C Code.c,80 :: 		TRISD = 0x0F;
	MOVLW      15
	MOVWF      TRISD+0
;Proteus C Code.c,81 :: 		TRISC = 0x01;
	MOVLW      1
	MOVWF      TRISC+0
;Proteus C Code.c,82 :: 		T1CON = 3;                            // Timer1 on, external input RC0
	MOVLW      3
	MOVWF      T1CON+0
;Proteus C Code.c,83 :: 		TMR1IF_bit = 0;                       // clear TMR1IF
	BCF        TMR1IF_bit+0, 0
;Proteus C Code.c,84 :: 		TMR1H = 0x00;                         // Initialize Timer1 register
	CLRF       TMR1H+0
;Proteus C Code.c,85 :: 		TMR1L = 0x00;                         // Initialize Timer1 register
	CLRF       TMR1L+0
;Proteus C Code.c,86 :: 		cnt =   0;                            // initialize cnt
	CLRF       _cnt+0
;Proteus C Code.c,87 :: 		Lcd_Init();                           // Initialize LCD
	CALL       _Lcd_Init+0
;Proteus C Code.c,88 :: 		ADCON0 = 0b00010000;                  // Analog channel select
	MOVLW      16
	MOVWF      ADCON0+0
;Proteus C Code.c,89 :: 		ADCON1 = 0x00;                        // Reference voltage is Vdd
	CLRF       ADCON1+0
;Proteus C Code.c,90 :: 		CMCON = 0x07 ;                        // Disable comparators
	MOVLW      7
	MOVWF      CMCON+0
;Proteus C Code.c,91 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);             // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Proteus C Code.c,92 :: 		x=1, y=0, t=1;
	MOVLW      1
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
	CLRF       _y+0
	CLRF       _y+1
	MOVLW      1
	MOVWF      _t+0
	MOVLW      0
	MOVWF      _t+1
;Proteus C Code.c,93 :: 		do
L_main4:
;Proteus C Code.c,95 :: 		temp_value = ADC_Read(0);              // PORTA Pin1 analog readfor temperture
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _temp_value+0
	MOVF       R0+1, 0
	MOVWF      _temp_value+1
	CLRF       _temp_value+2
	CLRF       _temp_value+3
;Proteus C Code.c,96 :: 		temp_value = temp_value*48.794;
	MOVF       _temp_value+0, 0
	MOVWF      R0+0
	MOVF       _temp_value+1, 0
	MOVWF      R0+1
	MOVF       _temp_value+2, 0
	MOVWF      R0+2
	MOVF       _temp_value+3, 0
	MOVWF      R0+3
	CALL       _Longword2Double+0
	MOVLW      14
	MOVWF      R4+0
	MOVLW      45
	MOVWF      R4+1
	MOVLW      67
	MOVWF      R4+2
	MOVLW      132
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Longword+0
	MOVF       R0+0, 0
	MOVWF      _temp_value+0
	MOVF       R0+1, 0
	MOVWF      _temp_value+1
	MOVF       R0+2, 0
	MOVWF      _temp_value+2
	MOVF       R0+3, 0
	MOVWF      _temp_value+3
;Proteus C Code.c,97 :: 		tempinC = temp_value;
	MOVF       R0+0, 0
	MOVWF      _tempinC+0
	MOVF       R0+1, 0
	MOVWF      _tempinC+1
;Proteus C Code.c,98 :: 		tempinF = 9*tempinC/5 + 3200;
	MOVLW      9
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVLW      5
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_U+0
	MOVLW      128
	ADDWF      R0+0, 0
	MOVWF      _tempinF+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDLW      12
	MOVWF      _tempinF+1
;Proteus C Code.c,99 :: 		ADC_Value = ADC_Read(2);               // PORTA Pin3 analog read for voltage
	MOVLW      2
	MOVWF      FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _ADC_Value+0
	MOVF       R0+1, 0
	MOVWF      _ADC_Value+1
;Proteus C Code.c,100 :: 		TMR1H = 0;                             // reset high byte of timer 1 (takes effect when low byte written)
	CLRF       TMR1H+0
;Proteus C Code.c,101 :: 		TMR1L = 0;                             // reset low byte of timer 1 (also loads in high byte now)
	CLRF       TMR1L+0
;Proteus C Code.c,102 :: 		Delay_ms(500);                         // Delay 0.5 Sec
	MOVLW      13
	MOVWF      R11+0
	MOVLW      175
	MOVWF      R12+0
	MOVLW      182
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
;Proteus C Code.c,103 :: 		freq_result = TMR1L;                   // get low byte of timer 1 count (and read high byte to buffer)
	MOVF       TMR1L+0, 0
	MOVWF      _freq_result+0
	CLRF       _freq_result+1
;Proteus C Code.c,104 :: 		freq_result += TMR1H*256;              // add in the high byte from buffer
	MOVF       TMR1H+0, 0
	MOVWF      R0+1
	CLRF       R0+0
	MOVF       _freq_result+0, 0
	ADDWF      R0+0, 1
	MOVF       _freq_result+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      _freq_result+0
	MOVF       R0+1, 0
	MOVWF      _freq_result+1
;Proteus C Code.c,105 :: 		freq_result *= 0.672;
	CALL       _Word2Double+0
	MOVLW      49
	MOVWF      R4+0
	MOVLW      8
	MOVWF      R4+1
	MOVLW      44
	MOVWF      R4+2
	MOVLW      126
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      _freq_result+0
	MOVF       R0+1, 0
	MOVWF      _freq_result+1
;Proteus C Code.c,107 :: 		if(PORTD.B0==0 || x==0 )
	BTFSS      PORTD+0, 0
	GOTO       L__main23
	MOVLW      0
	XORWF      _x+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main28
	MOVLW      0
	XORWF      _x+0, 0
L__main28:
	BTFSC      STATUS+0, 2
	GOTO       L__main23
	GOTO       L_main10
L__main23:
;Proteus C Code.c,109 :: 		x=0, y=1, t=1;
	CLRF       _x+0
	CLRF       _x+1
	MOVLW      1
	MOVWF      _y+0
	MOVLW      0
	MOVWF      _y+1
	MOVLW      1
	MOVWF      _t+0
	MOVLW      0
	MOVWF      _t+1
;Proteus C Code.c,110 :: 		PORTC.B1=1;                           // Indicate LED outputs
	BSF        PORTC+0, 1
;Proteus C Code.c,111 :: 		PORTC.B2=0;
	BCF        PORTC+0, 2
;Proteus C Code.c,112 :: 		PORTC.B3=0;
	BCF        PORTC+0, 3
;Proteus C Code.c,113 :: 		PORTC.B4=0;
	BCF        PORTC+0, 4
;Proteus C Code.c,114 :: 		Lcd_Cmd(_LCD_CLEAR);                  // CLEAR display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Proteus C Code.c,115 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);             // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Proteus C Code.c,116 :: 		Lcd_Out(2,1,message1);                // Write message1 in 1st row
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _message1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,117 :: 		Lcd_Out(1,2,message2);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _message2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,118 :: 		Display_Freq(freq_result);            // show the Frequancy on LCD
	MOVF       _freq_result+0, 0
	MOVWF      FARG_Display_Freq_freq2write+0
	MOVF       _freq_result+1, 0
	MOVWF      FARG_Display_Freq_freq2write+1
	CALL       _Display_Freq+0
;Proteus C Code.c,119 :: 		}
L_main10:
;Proteus C Code.c,120 :: 		if(PORTD.B1==0)
	BTFSC      PORTD+0, 1
	GOTO       L_main11
;Proteus C Code.c,122 :: 		PORTC.B4=1;
	BSF        PORTC+0, 4
;Proteus C Code.c,123 :: 		Lcd_Out(1,1,"p");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Proteus_32C_32Code+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,124 :: 		x=1, y=1, t=1;
	MOVLW      1
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
	MOVLW      1
	MOVWF      _y+0
	MOVLW      0
	MOVWF      _y+1
	MOVLW      1
	MOVWF      _t+0
	MOVLW      0
	MOVWF      _t+1
;Proteus C Code.c,125 :: 		}
	GOTO       L_main12
L_main11:
;Proteus C Code.c,126 :: 		else{}
L_main12:
;Proteus C Code.c,127 :: 		if(PORTD.B2==0 || y==0 )
	BTFSS      PORTD+0, 2
	GOTO       L__main22
	MOVLW      0
	XORWF      _y+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVLW      0
	XORWF      _y+0, 0
L__main29:
	BTFSC      STATUS+0, 2
	GOTO       L__main22
	GOTO       L_main15
L__main22:
;Proteus C Code.c,129 :: 		PORTC.B1=0;                               // Indicate LED outputs
	BCF        PORTC+0, 1
;Proteus C Code.c,130 :: 		PORTC.B2=1;
	BSF        PORTC+0, 2
;Proteus C Code.c,131 :: 		PORTC.B3=0;
	BCF        PORTC+0, 3
;Proteus C Code.c,132 :: 		PORTC.B4=0;
	BCF        PORTC+0, 4
;Proteus C Code.c,133 :: 		y=0, x=1, t=1;
	CLRF       _y+0
	CLRF       _y+1
	MOVLW      1
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
	MOVLW      1
	MOVWF      _t+0
	MOVLW      0
	MOVWF      _t+1
;Proteus C Code.c,134 :: 		Lcd_Cmd(_LCD_CLEAR);                      // CLEAR display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Proteus C Code.c,135 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                 // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Proteus C Code.c,136 :: 		Lcd_Out(1,3,Message4);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Message4+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,137 :: 		Lcd_Out(2,9,Message5);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Message5+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,138 :: 		Lcd_Chr(2,6,'V');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      86
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Proteus C Code.c,139 :: 		DisplayVolt = ADC_Value * 4.94471;
	MOVF       _ADC_Value+0, 0
	MOVWF      R0+0
	MOVF       _ADC_Value+1, 0
	MOVWF      R0+1
	CALL       _Word2Double+0
	MOVLW      16
	MOVWF      R4+0
	MOVLW      59
	MOVWF      R4+1
	MOVLW      30
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      _DisplayVolt+0
	MOVF       R0+1, 0
	MOVWF      _DisplayVolt+1
;Proteus C Code.c,140 :: 		Display_Volt(DisplayVolt);                // show the Voltage on LCD
	MOVF       R0+0, 0
	MOVWF      FARG_Display_Volt_volts2write+0
	MOVF       R0+1, 0
	MOVWF      FARG_Display_Volt_volts2write+1
	CALL       _Display_Volt+0
;Proteus C Code.c,141 :: 		}
	GOTO       L_main16
L_main15:
;Proteus C Code.c,142 :: 		else{}
L_main16:
;Proteus C Code.c,143 :: 		if(PORTD.B3==0 || t==0)
	BTFSS      PORTD+0, 3
	GOTO       L__main21
	MOVLW      0
	XORWF      _t+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      0
	XORWF      _t+0, 0
L__main30:
	BTFSC      STATUS+0, 2
	GOTO       L__main21
	GOTO       L_main19
L__main21:
;Proteus C Code.c,145 :: 		PORTC.B1=0;                              // Indicate LED outputs
	BCF        PORTC+0, 1
;Proteus C Code.c,146 :: 		PORTC.B2=0;
	BCF        PORTC+0, 2
;Proteus C Code.c,147 :: 		PORTC.B3=1;
	BSF        PORTC+0, 3
;Proteus C Code.c,148 :: 		PORTC.B4=0;
	BCF        PORTC+0, 4
;Proteus C Code.c,149 :: 		y=1, x=1, t=0;
	MOVLW      1
	MOVWF      _y+0
	MOVLW      0
	MOVWF      _y+1
	MOVLW      1
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
	CLRF       _t+0
	CLRF       _t+1
;Proteus C Code.c,150 :: 		Lcd_Cmd(_LCD_CLEAR);                    // CLEAR display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Proteus C Code.c,151 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);               // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Proteus C Code.c,152 :: 		Lcd_Out(1,4,message8);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Message8+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Proteus C Code.c,153 :: 		Lcd_Chr(2,6,223);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Proteus C Code.c,154 :: 		Lcd_Chr(2,15,223);
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      15
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      223
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Proteus C Code.c,155 :: 		Lcd_Chr(2,7,'C');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      67
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Proteus C Code.c,156 :: 		Lcd_Chr(2,16,'F');
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      16
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      70
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;Proteus C Code.c,157 :: 		Display_Temperature();                  // show the Temp on LCD
	CALL       _Display_Temperature+0
;Proteus C Code.c,158 :: 		}
	GOTO       L_main20
L_main19:
;Proteus C Code.c,159 :: 		else{}
L_main20:
;Proteus C Code.c,161 :: 		while(1);                                   // Infinite loop
	GOTO       L_main4
;Proteus C Code.c,162 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
