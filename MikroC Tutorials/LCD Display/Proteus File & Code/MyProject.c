/*
'*******************************************************************************
'  Lesson 03:
'          LCD Display 01
'  Written by:
'          Hasitha Suneth, 2014.
'  Description:
'          In this lesson, we are going to learn, how to use LCD display with
'          PIC Micro controller.
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
// You can use any Ports or pins for connect LCD.
// LCD module connections
sbit LCD_RS at RA0_bit;                     //PortA.B0 as RS
sbit LCD_EN at RA1_bit;                     //PortA.B1 as EN
sbit LCD_D4 at RB0_bit;                     //PortB.B0 as D4
sbit LCD_D5 at RB1_bit;                     //PortB.B1 as D5
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_RS_Direction at TRISA0_bit;        //PortA.B0 Direction
sbit LCD_EN_Direction at TRISA1_bit;        //PortA.B1 Direction
sbit LCD_D4_Direction at TRISB0_bit;        //PortB.B0 Direction
sbit LCD_D5_Direction at TRISB1_bit;        //PortB.B1 Direction
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
// End LCD module connections

// Define Messages
 char text1[] = "Hello World 01";
 char text2[] = "hasisuneth.blogspot.com";
 char text3[] = "THE END";
 int i;
  
 void Move_Delay()                 // Function used for text moving
 {
  Delay_ms(100);                   // You can change the moving speed here
 }

void main()
 {
  Lcd_Init();                        // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
  do 
    {
          // *** Method 01 ***  //        // Lcd_Out(Row, Column, Text)
    Lcd_Out(1,2,text1);                   // Write message1 in 1st row
    Delay_ms(1000);                       // 1 sec delay
          // *** Method 02 ***  //        // Lcd_Out(Row, Column, "Massage write")
    Lcd_Out(2,5,"METHOD 02");             // Write your message in 2nd row
    Delay_ms(1000);                       // 1 sec delay
    
    Lcd_Cmd(_LCD_CLEAR);                  // Clear display
    Lcd_Cmd(_LCD_CURSOR_OFF);             // Cursor off
    Delay_ms(500);                        // 0.5 sec delay
          // *** Method 03 ***  //        //This method can not change culomn
    Lcd_Cmd(_LCD_SECOND_ROW);             // Move cursor to the 2nd row
    Lcd_Out_Cp(" METHOD 03 (row)");       // Write "text" at current cursor position:
    Delay_ms(1000);
          // *** Moving Text *** //
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out(1,16,text2);
    Delay_ms(100);
                                          // Coding of Moving texts //
    for(i=0; i<38; i++)                   // Move text to the left 38 times
     {
        Lcd_Cmd(_LCD_SHIFT_LEFT);
        Move_Delay();                     // Goto void ( Move_Delay )
     }
    for(i=0; i<39; i++)                   // Move text to the right 39 times
     {
        Lcd_Cmd(_LCD_SHIFT_RIGHT);
        Move_Delay();
     }
    Delay_ms(800);
    Lcd_Cmd(_LCD_CLEAR);
    Lcd_Out(1,5,text3);
    Delay_ms(2000);
    }
  while(1);
  }