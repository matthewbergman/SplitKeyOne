# SplitKeyOne
Very simple split keyboard PCB layout and firmware using Cherry MX switches and Teensy3 micro.


### CAD
KiCAD pcb files
TODO:
* Fix the stabalizer mounting holes for vertically mounted keycaps
* Add more mounting holes for rigidity
* Switch to SMT diodes or switches with built in diodes

### SplitKeyOneFirmware
Simple firmware to read the key matrix and send the correct keypress or keyrelease signal. Optionally lights up the LED for each key while it is pressed.
TODO:
* Emulate mouse buttons
* Emulate joystick axis and buttons
