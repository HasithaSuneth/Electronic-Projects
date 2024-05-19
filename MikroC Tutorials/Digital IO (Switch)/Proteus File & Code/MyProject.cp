#line 1 "C:/Documents and Settings/Hasitha Suneth/Desktop/Tutorials/Digital IO (Switch)/MyProject.c"
#line 27 "C:/Documents and Settings/Hasitha Suneth/Desktop/Tutorials/Digital IO (Switch)/MyProject.c"
int i=0;
void main()
{
 TRISA = 0xFF;
 TRISB = 0x00;
 PORTB = 0x00;
 do
 {


 if (Button(&PORTA, 0, 1, 1))
 {
 PORTB.B0 = 1;
 PORTB.B1 = 0;
 }
 else
 {
 PORTB.B0 = 0;
 PORTB.B1 = 1;
 }

 if(PORTA.B1==1)
 {
 PORTB.B2 = 1;
 PORTB.B3 = 0;
 }
 else
 {
 PORTB.B2 = 0;
 PORTB.B3 = 1;
 }



 if (Button(&PORTA, 2, 1, 1))
 { PORTB.B4 = 1; }
 else
 { PORTB.B4 = 0; }

 if(PORTA.B3==1)
 { PORTB.B5 = 1; }
 else
 { PORTB.B5 = 0; }



 if (Button(&PORTA, 4, 1, 1))
 if(i==1)
 {PORTB.B6 = 0; i=0; Delay_ms(500);}
 else
 {PORTB.B6 = 1; i=1; Delay_ms(500);}
 }
 while(1);
}
