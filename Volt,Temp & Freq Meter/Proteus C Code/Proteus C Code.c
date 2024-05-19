// 16F877A base Frequancy, Voltage and Temperture Meter with peuse Funtion
/*  www.hasisuneth.blogspot.com  */
// LCD module connections
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// End LCD module connections

unsigned short cnt;
unsigned int freq_result;
int x, y, t;

// Define Messages
char message1[] = "      Hz  /65KHz";
char message2[] = "FERQUANCY METER";
char Message4[] = "VOLTAGE METER";
char Message5[] = "/MAX:50V";
char Message8[] = "TEMPERATURE ";
unsigned int ADC_Value, DisplayVolt;
unsigned int tempinF, tempinC;
unsigned long temp_value;
char *volt = "00.0";
char *freq = " 0000";
char *tempC = "000.0";
char *tempF = "000.0";

void Display_Freq(unsigned int freq2write) {

  freq[0] = (freq2write/10000)%10 + 48;
  freq[1] = (freq2write/1000)%10 + 48;
  freq[2] = (freq2write/100)%10 + 48;
  freq[3] = (freq2write/10)%10 + 48;    // Extract tens digit
  freq[4] =  freq2write%10     + 48;    // Extract ones digit

 Lcd_Out(2, 2, freq);                   // Display Frequency on LCD
}

void Display_Volt(unsigned int volts2write) {

  volt[0] =  volts2write/1000 + 48;
  volt[1] = (volts2write/100)%10 + 48;
  volt[3] = (volts2write/10)%10 + 48;

 Lcd_Out(2, 2, volt);                   // Display Voltage on LCD
}

void Display_Temperature() {
 if (tempinC/10000)
 tempC[0] = tempinC/10000 + 48;
 else
 tempC[0] = ' ';
 tempC[1] = (tempinC/1000)%10 + 48;
 tempC[2] = (tempinC/100)%10 + 48;
 tempC[4] = (tempinC/10)%10 + 48;
 Lcd_Out(2, 1, tempC);
 if (tempinF/10000)
 tempF[0] = tempinF/10000 + 48;
 else
 tempF[0] = ' ';
 tempF[1] = (tempinF/1000)%10 + 48;
 tempF[2] = (tempinF/100)%10 + 48;
 tempF[4] = (tempinF/10)%10 + 48;
 Lcd_Out(2, 10, tempF);
}

void main() {
  PORTB = 0;                            // Initialise PORTB
  TRISB = 0b01000000;                   // PORTB is output
  TRISA = 0b00001101;                   // PORTA All Outputs, Except RA0,RA3 and RA2
  TRISD = 0x0F;
  TRISC = 0x01;
  T1CON = 3;                            // Timer1 on, external input RC0
  TMR1IF_bit = 0;                       // clear TMR1IF
  TMR1H = 0x00;                         // Initialize Timer1 register
  TMR1L = 0x00;                         // Initialize Timer1 register
  cnt =   0;                            // initialize cnt
  Lcd_Init();                           // Initialize LCD
  ADCON0 = 0b00010000;                  // Analog channel select
  ADCON1 = 0x00;                        // Reference voltage is Vdd
  CMCON = 0x07 ;                        // Disable comparators
  Lcd_Cmd(_LCD_CURSOR_OFF);             // Cursor off
  x=1, y=0, t=1;
  do
  {
    temp_value = ADC_Read(0);              // PORTA Pin1 analog readfor temperture
    temp_value = temp_value*48.794;
    tempinC = temp_value;
    tempinF = 9*tempinC/5 + 3200;
    ADC_Value = ADC_Read(2);               // PORTA Pin3 analog read for voltage
    TMR1H = 0;                             // reset high byte of timer 1 (takes effect when low byte written)
    TMR1L = 0;                             // reset low byte of timer 1 (also loads in high byte now)
    Delay_ms(500);                         // Delay 0.5 Sec
    freq_result = TMR1L;                   // get low byte of timer 1 count (and read high byte to buffer)
    freq_result += TMR1H*256;              // add in the high byte from buffer
    freq_result *= 0.672;

     if(PORTD.B0==0 || x==0 )
      {
      x=0, y=1, t=1;
      PORTC.B1=1;                           // Indicate LED outputs
      PORTC.B2=0;
      PORTC.B3=0;
      PORTC.B4=0;
      Lcd_Cmd(_LCD_CLEAR);                  // CLEAR display
      Lcd_Cmd(_LCD_CURSOR_OFF);             // Cursor off
      Lcd_Out(2,1,message1);                // Write message1 in 1st row
      Lcd_Out(1,2,message2);
      Display_Freq(freq_result);            // show the Frequancy on LCD
      }
      if(PORTD.B1==0)
      {
      PORTC.B4=1;
      Lcd_Out(1,1,"p");
      x=1, y=1, t=1;
      }
      else{}
      if(PORTD.B2==0 || y==0 )
      {
      PORTC.B1=0;                               // Indicate LED outputs
      PORTC.B2=1;
      PORTC.B3=0;
      PORTC.B4=0;
      y=0, x=1, t=1;
      Lcd_Cmd(_LCD_CLEAR);                      // CLEAR display
      Lcd_Cmd(_LCD_CURSOR_OFF);                 // Cursor off
      Lcd_Out(1,3,Message4);
      Lcd_Out(2,9,Message5);
      Lcd_Chr(2,6,'V');
      DisplayVolt = ADC_Value * 4.94471;
      Display_Volt(DisplayVolt);                // show the Voltage on LCD
      }
      else{}
      if(PORTD.B3==0 || t==0)
      {
      PORTC.B1=0;                              // Indicate LED outputs
      PORTC.B2=0;
      PORTC.B3=1;
      PORTC.B4=0;
      y=1, x=1, t=0;
      Lcd_Cmd(_LCD_CLEAR);                    // CLEAR display
      Lcd_Cmd(_LCD_CURSOR_OFF);               // Cursor off
      Lcd_Out(1,4,message8);
      Lcd_Chr(2,6,223);
      Lcd_Chr(2,15,223);
      Lcd_Chr(2,7,'C');
      Lcd_Chr(2,16,'F');
      Display_Temperature();                  // show the Temp on LCD
      }
      else{}
  }
  while(1);                                   // Infinite loop
}