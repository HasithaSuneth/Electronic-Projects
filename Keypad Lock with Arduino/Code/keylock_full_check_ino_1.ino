/*
    Project Title: Numeric keypad with password and Serial Monitor
    Link: www.newtechandme.com
    Uses e-gizmo's development board
    Uses analog pin as digital pin
    Uses keypad library for Arduino http://www.arduino.cc/playground/uploads/Code/Keypad.zip
    Uses Password library for Arduino http://www.arduino.cc/playground/uploads/Code/Password.zip
    4/5/2012 Updates Nathan Sobieck: Nathan@Sobisource.com
    3/11/2013 updated by newtechandme.com

    LCD Connection
 * LCD RS pin to digital pin 14 (analog pin A0)
 * LCD Enable pin to digital pin 13
 * LCD D4 pin to digital pin 12
 * LCD D6 pin to digital pin 11
 * LCD D7 pin to digital pin 10
 * LCD D8 pin to digital pin 9
 * LCD R/W pin to ground

   Keypad Connection
 * ROW0 to digital pin 5
 * ROW1 to digital pin 4
 * ROW2 to digital pin 3
 * ROW3 to digital pin 2
 * COL0 to digital pin 8
 * COL1 to digital pin 7
 * COL2 to digital pin 6

 * LED to digital pin 15 (analog pin A1)

 Operation:
 '#' = OK -> checks if the password is correct or not
 '*' = CLEAR -> clears the password typed
*/

#include <Password.h>
#include <Keypad.h>
#include <LiquidCrystal.h>

Password password = Password( "258456" ); //This is our password
LiquidCrystal lcd(14, 13, 12, 11, 10, 9);
const byte ROWS = 4; // 4 rows
const byte COLS = 3; // 3 columns
// Define the Keymap
char keys[ROWS][COLS] = {
  {'1','2','3'},
  {'4','5','6'},
  {'7','8','9'},
  {'*','0','#'}
};

byte rowPins[ROWS] = {5, 4, 3, 2};// Connect keypad ROW0, ROW1, ROW2 and ROW3 to these Arduino pins.
byte colPins[COLS] = {8, 7, 6};// Connect keypad COL0, COL1 and COL2 to these Arduino pins.

// Create the Keypad
Keypad keypad = Keypad( makeKeymap(keys), rowPins, colPins, ROWS, COLS );

void setup()
{
  pinMode(15, OUTPUT);
  lcd.begin(16, 2);
  lcd.print(" Enter Password");
  keypad.addEventListener(keypadEvent); //add an event listener for this keypad
}

void loop()
{
  lcd.setCursor(0, 1);
  keypad.getKey();
}

//check the keypad events
void keypadEvent(KeypadEvent keyPress)
{
  switch (keypad.getState())
  {
    case PRESSED:
    lcd.setCursor(7,1);
    lcd.print(keyPress); //print the keypress
    switch (keyPress)
    {
	  case '#':            
            checkPassword();            
          break;

          case '*':
            password.reset();
            digitalWrite(15, LOW);
            lcd.setCursor(0,1);
            lcd.print("                ");
          break;

          default:
          password.append(keyPress);
     }
  }
}

//check the entered password
void checkPassword(){
  if (password.evaluate()) //if password is correct
  {
    lcd.setCursor(0,1);
    lcd.print("Correct Password"); //print a message on serial monitor
    digitalWrite(15, HIGH); //turn ON an LED
    delay(2000);
    lcd.setCursor(0,1);
    lcd.print("                ");
    delay(100);
    lcd.setCursor(0,1);
    lcd.print("*** Welcome ***");
    delay(5000);
    lcd.setCursor(0,1);
    lcd.print("                ");
    password.reset(); //reset password
  }
  else
  {
    lcd.setCursor(0,1);
    lcd.print(" Wrong Password"); //if password is wrong
    digitalWrite(15, HIGH); //blink an LED
    delay(100);
    digitalWrite(15, LOW);
    delay(100);
    digitalWrite(15, HIGH);
    delay(100);
    digitalWrite(15, LOW);
    delay(100);
    digitalWrite(15, HIGH);
    delay(100);
    digitalWrite(15, LOW);
    delay(100);
    delay(2000);
    lcd.setCursor(0,1);
    lcd.print("                ");
    password.reset(); //reset password  
  }
}


