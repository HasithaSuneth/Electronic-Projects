/*
'*******************************************************************************
'  Lesson 02:
'          Digital I/O (Switch) [02]
'  Written by:
'          Hasitha Suneth, 2014.
'  Description:
'          In this lesson, we are going to learn, how to use PIC Digital Input
'          pins properly for switches.
'        * Singal Switch
'        * Dual Switch
'        * Push Switch (on/off)
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
int i=0;                //unsigned short
void main() 
{
 TRISA = 0xFF;          // Port A as Input
 TRISB = 0x00;          // Port B as Output
 PORTB = 0x00;
  do
  {
  //           Dual Switch              //
  //       ***  Method 01  ***          //
    if (Button(&PORTA, 0, 1, 1))        // if (Button(&PORT(input port),(bit number),(time),(active_state))
    { 
    PORTB.B0 = 1;                       //PortB bit0 On
    PORTB.B1 = 0;                       //PortB bit1 Off
    }
    else 
    {
    PORTB.B0 = 0;                       //PortB bit0 Off
    PORTB.B1 = 1;                       //PortB bit1 On
    }
  //       ***  Method 02  ***          //
    if(PORTA.B1==1)                     //If PortA bit 1 is high, Go in to
     {
     PORTB.B2 = 1;
     PORTB.B3 = 0;
     }
    else                                //If PortA bit 1 is not high, Go in to
    {
     PORTB.B2 = 0;
     PORTB.B3 = 1;
    }
    
  //           Singal Switch            //
  //       ***  Method 01  ***          //
   if (Button(&PORTA, 2, 1, 1))         //If PortA bit 2 is high, Go in to
    { PORTB.B4 = 1; }
   else                                 //If PortA bit 2 is not high, Go in to
    { PORTB.B4 = 0; }
  //       ***  Method 02  ***          //
   if(PORTA.B3==1)
    { PORTB.B5 = 1; }
   else
    { PORTB.B5 = 0; }
    
  //           Push Switch              //
  //       ***  Method 01  ***          //
   if (Button(&PORTA, 4, 1, 1))
   if(i==1)                             //If i is high, Go in to
    {PORTB.B6 = 0; i=0; Delay_ms(500);} //PortB Bit 6 = low / i= low / Delay 0.5 seconds for press time out
   else
    {PORTB.B6 = 1; i=1; Delay_ms(500);}
  }
 while(1);                              //Endless loop
}