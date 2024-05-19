#line 1 "C:/Documents and Settings/Hasitha Suneth/Desktop/Tutorials/LCD/MyProject.c"
#line 26 "C:/Documents and Settings/Hasitha Suneth/Desktop/Tutorials/LCD/MyProject.c"
sbit LCD_RS at RA0_bit;
sbit LCD_EN at RA1_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_RS_Direction at TRISA0_bit;
sbit LCD_EN_Direction at TRISA1_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;



 char text1[] = "Hello World 01";
 char text2[] = "hasisuneth.blogspot.com";
 char text3[] = "THE END";
 int i;

 void Move_Delay()
 {
 Delay_ms(100);
 }

void main()
 {
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 do
 {

 Lcd_Out(1,2,text1);
 Delay_ms(1000);

 Lcd_Out(2,5,"METHOD 02");
 Delay_ms(1000);

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Delay_ms(500);

 Lcd_Cmd(_LCD_SECOND_ROW);
 Lcd_Out_Cp(" METHOD 03 (row)");
 Delay_ms(1000);

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Out(1,16,text2);
 Delay_ms(100);

 for(i=0; i<38; i++)
 {
 Lcd_Cmd(_LCD_SHIFT_LEFT);
 Move_Delay();
 }
 for(i=0; i<39; i++)
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
