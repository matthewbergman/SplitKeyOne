/**
 * @file SplitKeyOneFirmware.ino
 *
 * @brief Simple keyboard firmware for the Teensy 3 micro for use
 * as a starting point for more complex keyboard projects.
 *
 * @author Matt Bergman
 * 
 * Copyright (C) 2018
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <SPI.h>

//#define LEDS
//#define DEBUG

// SPI select pins for LED drivers
const int LED_SS0_pin = 22;
const int LED_SS1_pin = 23;
const int LED_SS2_pin = 21;

// IO pins for rows and columns on keyboard matrix
byte rows[] = {2,3,4,5,6,7};
byte cols[] = {8,9,10,24,25,26,27,28,29,30,31,32,14,39,38,37,36,35,34,33};
const int row_count = sizeof(rows)/sizeof(rows[0]);
const int col_count = sizeof(cols)/sizeof(cols[0]);

// This is the main key map
int keymap[row_count][col_count] = {
// 0               1                 2                3               4               5               6               7               8                    9                    10                   11              12              13              14              15              16                    17                      18                     19
  {KEY_ESC        ,KEY_SCROLL_LOCK  ,KEY_F1          ,KEY_F2         ,KEY_F3         ,KEY_F4         ,KEY_F5         ,KEY_MEDIA_PREV_TRACK,KEY_MEDIA_VOLUME_DEC,KEY_MEDIA_VOLUME_INC,KEY_MEDIA_PLAY_PAUSE,KEY_MEDIA_NEXT_TRACK,KEY_F6         ,KEY_F7         ,KEY_F8         ,KEY_F9         ,KEY_F10              ,KEY_F11                ,KEY_F12               ,KEY_ESC        },
  {KEY_SCROLL_LOCK,KEY_TILDE        ,KEY_1           ,KEY_2          ,KEY_3          ,KEY_4          ,KEY_5          ,KEY_6          ,KEY_INSERT          ,KEY_HOME            ,KEY_PAGE_UP         ,KEY_7          ,KEY_8          ,KEY_9          ,KEY_0          ,KEY_MINUS      ,KEY_EQUAL            ,KEY_SCROLL_LOCK        ,KEY_BACKSPACE         ,KEY_SCROLL_LOCK},
  {KEY_SCROLL_LOCK,KEY_TAB          ,KEY_SCROLL_LOCK ,KEY_Q          ,KEY_W          ,KEY_E          ,KEY_R          ,KEY_T          ,KEY_DELETE          ,KEY_END             ,KEY_PAGE_DOWN       ,KEY_Y          ,KEY_U          ,KEY_I          ,KEY_O          ,KEY_P          ,KEY_LEFT_BRACE       ,KEY_RIGHT_BRACE        ,KEY_BACKSLASH         ,KEY_SCROLL_LOCK},
  {KEY_SCROLL_LOCK,KEY_CAPS_LOCK    ,KEY_SCROLL_LOCK ,KEY_A          ,KEY_S          ,KEY_D          ,KEY_F          ,KEY_G          ,KEY_SCROLL_LOCK     ,KEY_SCROLL_LOCK     ,KEY_SCROLL_LOCK     ,KEY_H          ,KEY_J          ,KEY_K          ,KEY_L          ,KEY_SEMICOLON  ,KEY_QUOTE            ,KEY_SCROLL_LOCK        ,KEY_ENTER             ,KEY_SCROLL_LOCK},
  {KEY_SCROLL_LOCK,MODIFIERKEY_SHIFT,KEY_SCROLL_LOCK ,KEY_Z          ,KEY_X          ,KEY_C          ,KEY_V          ,KEY_B          ,KEY_SCROLL_LOCK     ,KEY_UP              ,KEY_SCROLL_LOCK     ,KEY_N          ,KEY_M          ,KEY_COMMA      ,KEY_PERIOD     ,KEY_SLASH      ,KEY_SCROLL_LOCK      ,MODIFIERKEY_RIGHT_SHIFT,KEY_SCROLL_LOCK       ,KEY_ENTER      },
  {KEY_ENTER      ,MODIFIERKEY_CTRL ,KEY_SCROLL_LOCK,MODIFIERKEY_GUI,MODIFIERKEY_ALT,KEY_SCROLL_LOCK,KEY_SCROLL_LOCK,KEY_SPACE      ,KEY_LEFT            ,KEY_DOWN            ,KEY_RIGHT           ,KEY_SPACE      ,KEY_SCROLL_LOCK,KEY_SCROLL_LOCK,KEY_SCROLL_LOCK,KEY_SCROLL_LOCK,MODIFIERKEY_RIGHT_ALT,MODIFIERKEY_RIGHT_GUI  ,MODIFIERKEY_RIGHT_CTRL,KEY_SCROLL_LOCK},
};

// D7 - dp
// D6 - a
// D5 - b
// D4 - c
// D3 - d 
// D2 - e
// D1 - f 
// D0 - g
// digit: dp-g
int leddmap[row_count][col_count] = {
  {0,0,0,0,0,0,0,0,7,0,1,7,7,0,1,2,3,4,5,6},
  {0,0,0,0,0,0,0,0,7,0,1,7,0,1,2,3,4,4,5,6},
  {0,0,0,0,0,0,0,0,7,0,1,0,7,0,1,2,3,4,5,6},
  {0,0,0,0,0,0,0,0,0,0,0,7,0,1,2,3,4,5,5,6},
  {0,0,0,0,0,0,0,0,0,0,0,7,0,1,2,3,3,4,5,6},
  {0,0,0,0,0,0,0,0,7,0,1,1,1,2,3,4,4,5,6,6},
};
// address: (row)
int ledamap[row_count][col_count] = {
  {0,0,0,0,0,0,0,0,0,0,0,5,0,0,0,0,0,0,0,0},
  {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
  {2,2,2,2,2,2,2,2,2,2,2,5,2,2,2,2,2,2,2,2},
  {3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3},
  {4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4},
  {5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5},
};
// chip: 0,1,2
int ledcmap[row_count][col_count] = {
  {0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2},
  {0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2},
  {0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2},
  {0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2},
  {0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2},
  {0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2},
};

byte keystate[col_count][row_count];
byte ledstate[3][8] = {
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
};

void setup() 
{
  #ifdef DEBUG
  Serial.begin(115200);
  #endif

  for(int x=0; x<row_count; x++)
    pinMode(rows[x], INPUT_PULLUP);
  for (int x=0; x<col_count; x++)
    pinMode(cols[x], OUTPUT);

  #ifdef LEDS
  pinMode(LED_SS0_pin, OUTPUT);
  pinMode(LED_SS1_pin, OUTPUT);
  pinMode(LED_SS2_pin, OUTPUT);
  SPI.begin();

  delay(20);
  digitalWrite(LED_SS1_pin,LOW);
  SPI.transfer(0x04);
  SPI.transfer(0x01); // normal mode
  digitalWrite(LED_SS1_pin,HIGH);
  delay(20);
  digitalWrite(LED_SS1_pin,LOW);
  SPI.transfer(0x02);
  SPI.transfer(0x02); // intensity
  digitalWrite(LED_SS1_pin,HIGH);
  //delay(20);
  //digitalWrite(LED_SS1_pin,LOW);
  //SPI.transfer(0x07);
  //SPI.transfer(0x01);
  //digitalWrite(LED_SS1_pin,HIGH); 

  delay(20);
  digitalWrite(LED_SS2_pin,LOW);
  SPI.transfer(0x04);
  SPI.transfer(0x01); // normal mode
  digitalWrite(LED_SS2_pin,HIGH);
  delay(20);
  digitalWrite(LED_SS2_pin,LOW);
  SPI.transfer(0x02);
  SPI.transfer(0x02); // intensity
  digitalWrite(LED_SS2_pin,HIGH);
  //delay(20);
  //digitalWrite(LED_SS2_pin,LOW);
  //SPI.transfer(0x07);
  //SPI.transfer(0x01);
  //digitalWrite(LED_SS2_pin,HIGH); 

  delay(20);
  digitalWrite(LED_SS0_pin,LOW);
  SPI.transfer(0x04);
  SPI.transfer(0x01); // normal mode
  digitalWrite(LED_SS0_pin,HIGH);
  delay(20);
  digitalWrite(LED_SS0_pin,LOW);
  SPI.transfer(0x02);
  SPI.transfer(0x02); // intensity
  digitalWrite(LED_SS0_pin,HIGH);
  //delay(20);
  //digitalWrite(LED_SS0_pin,LOW);
  //SPI.transfer(0x07);
  //SPI.transfer(0x01);
  //digitalWrite(LED_SS0_pin,HIGH); 
  #endif
}

void update_leds(byte row, byte col, byte state)
{
  #ifndef LEDS
  return;
  #endif
  
  byte chip = ledcmap[row][col];
  byte addr = ledamap[row][col];
  byte digit = leddmap[row][col];
  byte ss = 0;
  if (chip == 0)
    ss = LED_SS0_pin;
  else if (chip == 1)
    ss = LED_SS1_pin;
  else if (chip == 2)
    ss = LED_SS2_pin;

  byte curval = ledstate[chip][addr];
  if (state == 1)
    curval |= (1 << digit);
  else
    curval &= ~(1 << digit);
  ledstate[chip][addr] = curval;

  #ifdef DEBUG
  Serial.print("Addr ");
  Serial.print(addr);
  Serial.print(" val ");
  Serial.println(curval);
  #endif
  
  digitalWrite(ss,LOW);
  SPI.transfer(0x20 + addr);
  SPI.transfer(curval);
  digitalWrite(ss,HIGH); 
}
 
void read_matrix()
{
  byte column;
  byte row;
  byte new_val;
    
  for (byte col_index=0; col_index < col_count; col_index++) 
  {
    column = cols[col_index];

    // Scan a column
    digitalWrite(column, LOW);
 
    for (byte row_index=0; row_index < row_count; row_index++) 
    {
      // Read the rows
      row = rows[row_index];
      new_val = digitalRead(row);
      delayMicroseconds(10);
      new_val = digitalRead(row);
      delayMicroseconds(10);
      if (keystate[col_index][row_index] != new_val)
      {
        keystate[col_index][row_index] = new_val;
        
        #ifdef DEBUG
        Serial.print(new_val);Serial.print(" ");Serial.print(row_index);Serial.print('x');Serial.println(col_index);
        #endif
        
        if (new_val == 0)
        {
          /*
          if (row_index == 1 && col_index == 10)
            Mouse.press(MOUSE_LEFT);
          else if (row_index == 2 && col_index == 10)
            Mouse.press(MOUSE_RIGHT);
          else
          */
            Keyboard.press(keymap[row_index][col_index]);
            update_leds(row_index,col_index,1);
        }
        else
        {
          /*
          if (row_index == 1 && col_index == 10)
            Mouse.release(MOUSE_LEFT);
          else if (row_index == 2 && col_index == 10)
            Mouse.release(MOUSE_RIGHT);
          else
          */
            Keyboard.release(keymap[row_index][col_index]);
            update_leds(row_index,col_index,0);
        }
      }
    }
    digitalWrite(column, HIGH);
  }
  delay(1);
}
 
void loop() 
{
  read_matrix();
}
