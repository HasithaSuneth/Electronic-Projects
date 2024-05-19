#line 1 "C:/Documents and Settings/Hasitha Suneth/Desktop/Tutorials/Digital IO/MyProject.c"
#line 25 "C:/Documents and Settings/Hasitha Suneth/Desktop/Tutorials/Digital IO/MyProject.c"
void main()
{
#line 31 "C:/Documents and Settings/Hasitha Suneth/Desktop/Tutorials/Digital IO/MyProject.c"
 TRISB = 0x00;
 TRISA = 0x00;
 do
 {
 PORTB = 0xFF;
 Delay_ms(1000);
 PORTB = 0x00;
 Delay_ms(1000);
 PORTB = 0x01;
 Delay_ms(500);
 PORTB = 0b00000011;
 Delay_ms(500);
 PORTB.B2 = 1;
 Delay_ms(500);
 PORTB = 0x0F;
 Delay_ms(500);
 PORTB = 0b00011111;
 Delay_ms(500);
 PORTB.B5 = 1;
 Delay_ms(500);
 PORTB = 0x7F;
 Delay_ms(500);
 }
 while(1);
 }
