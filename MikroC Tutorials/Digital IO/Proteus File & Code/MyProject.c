/*
'*******************************************************************************
'  Lesson 01:
'          Digital I/O  [01]
'  Written by:
'          Hasitha Suneth, 2014.
'  Description:
'          In this lesson, we are going to learn, how to use PIC Digital
'          Output pins properly.
'  Test configuration:
'    MCU:                        PIC16F628A
'    SW:                         MikroC PRO for PIC 2012 (version v5.6.1)
'  Configuration Word
'    Oscillator:                 4MHz INTOSC Oscillator
'    Watchdog Timer:             OFF
'    Power up Timer:             Disabled
'    Master Clear Enable:        Enabled
'    Browun Out Detect:          Enabled
'    Low Voltage Program:        Disabled
'    Data EE Read Protect:       Disabled
'    Code Protect:               OFF
'*******************************************************************************
*/

void main() 
{
 /* [TRIS] use for set Port's direction of voltage
    Eg: TRISB = 0xFF;   // PORTB as Input
        TRISA = 0x00;   // PORTA as Output */
        
 TRISB = 0x00;            // PORTB as Output
 TRISA = 0x00;            // PORTA as Output
  do
  {
  PORTB = 0xFF;           // PORTB(8 pins) ON
  Delay_ms(1000);         // Delay 1 second
  PORTB = 0x00;           // PORTB(8 pins) OFF
  Delay_ms(1000);
  PORTB = 0x01;           // PORTB(8 pins) pin 01 ON        ** Method 01 **
  Delay_ms(500);          // Delay 0.5 second
  PORTB = 0b00000011;     // PORTB(8 pins) pin 01 & 02 ON   ** Method 02 **
  Delay_ms(500);
  PORTB.B2 = 1;           // PORTB(8 pins) pin 03 ON        ** Method 03 **
  Delay_ms(500);
  PORTB = 0x0F;           // PORTB(8 pins) pin 1,2,3 & 4 ON
  Delay_ms(500);
  PORTB = 0b00011111;     // PORTB(8 pins) pin 1,2,3,4 & 5 ON
  Delay_ms(500);
  PORTB.B5 = 1;           // PORTB(8 pins) pin 06 ON
  Delay_ms(500);
  PORTB = 0x7F;           // PORTB(8 pins) pin 1,2,3,4,5,6 & 7 ON
  Delay_ms(500);
  }
  while(1);               // Endless Loop
 }