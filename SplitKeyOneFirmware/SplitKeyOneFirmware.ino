

byte rows[] = {2,3,4,5,6,7};
byte cols[] = {8,9,10,24,25,26,27,28,29,30,31,32,14,39,38,37,36,35,34,33};
const int row_count = sizeof(rows)/sizeof(rows[0]);
const int col_count = sizeof(cols)/sizeof(cols[0]);
byte keystate[col_count][row_count];
int keymap[row_count][col_count] = {
  {KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A},
  {KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_PAGE_UP,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A},
  {KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_PAGE_DOWN,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A},
  {KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A},
  {KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_UP,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A},
  {KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_LEFT,KEY_DOWN,KEY_RIGHT,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A,KEY_A},
};

void setup() 
{
  Serial.begin(115200);

  for(int x=0; x<row_count; x++)
    pinMode(rows[x], INPUT_PULLUP);
  for (int x=0; x<col_count; x++)
    pinMode(cols[x], OUTPUT);     
}
 
void read_matrix() 
{
  byte column;
  byte row;
  byte new_val;
    
  for (byte col_index=0; col_index < col_count; col_index++) 
  {
    column = cols[col_index];

    digitalWrite(column, LOW);
 
    for (byte row_index=0; row_index < row_count; row_index++) 
    {
      row = rows[row_index];
      new_val = digitalRead(row);
      delayMicroseconds(20);
      if (keystate[col_index][row_index] != new_val)
      {
        keystate[col_index][row_index] = new_val;
        Serial.print(row_index);Serial.print('x');Serial.println(col_index);
        if (new_val == 0)
        {
          if (row_index == 1 && col_index == 10)
            Mouse.press(MOUSE_LEFT);
          else if (row_index == 2 && col_index == 10)
            Mouse.press(MOUSE_RIGHT);
          else
            Keyboard.press(keymap[row_index][col_index]);
        }
        else
        {
          if (row_index == 1 && col_index == 10)
            Mouse.release(MOUSE_LEFT);
          else if (row_index == 2 && col_index == 10)
            Mouse.release(MOUSE_RIGHT);
          else
            Keyboard.release(keymap[row_index][col_index]);
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
