EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:SparkFun-AnalogIC
LIBS:SparkFun-Boards
LIBS:SparkFun-Capacitors
LIBS:SparkFun-Connectors
LIBS:SparkFun-DigitalIC
LIBS:SparkFun-DiscreteSemi
LIBS:SparkFun-Passives
LIBS:SparkFun-PowerIC
LIBS:SparkFun-Resistors
LIBS:SparkFun-RF
LIBS:SparkFun-Sensors
LIBS:cherry-temp
LIBS:custom
LIBS:SplitKeyOne-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L D D1
U 1 1 58AD2E5B
P 1350 1800
F 0 "D1" H 1350 1900 50  0000 C CNN
F 1 "D" H 1350 1700 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1350 1800 50  0001 C CNN
F 3 "" H 1350 1800 50  0000 C CNN
	1    1350 1800
	0    -1   1    0   
$EndComp
$Comp
L D D2
U 1 1 58AE62C9
P 1350 2950
F 0 "D2" H 1350 3050 50  0000 C CNN
F 1 "D" H 1350 2850 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1350 2950 50  0001 C CNN
F 3 "" H 1350 2950 50  0000 C CNN
	1    1350 2950
	0    -1   1    0   
$EndComp
$Comp
L CHERRY-MX-LED S2
U 1 1 58AE62F1
P 1450 2450
F 0 "S2" H 1450 2660 45  0000 L BNN
F 1 "INSERT" H 1450 2240 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 1450 2450 60  0001 C CNN
F 3 "" H 1450 2450 60  0001 C CNN
	1    1450 2450
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S3
U 1 1 58AE656C
P 2000 2450
F 0 "S3" H 2000 2660 45  0000 L BNN
F 1 "HOME" H 2000 2240 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2000 2450 60  0001 C CNN
F 3 "" H 2000 2450 60  0001 C CNN
	1    2000 2450
	0    -1   -1   0   
$EndComp
$Comp
L D D3
U 1 1 58AE659E
P 1900 2950
F 0 "D3" H 1900 3050 50  0000 C CNN
F 1 "D" H 1900 2850 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1900 2950 50  0001 C CNN
F 3 "" H 1900 2950 50  0000 C CNN
	1    1900 2950
	0    -1   1    0   
$EndComp
$Comp
L CHERRY-MX-LED S4
U 1 1 58AE67BA
P 2550 1300
F 0 "S4" H 2550 1510 45  0000 L BNN
F 1 "U5" H 2550 1090 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2550 1300 60  0001 C CNN
F 3 "" H 2550 1300 60  0001 C CNN
	1    2550 1300
	0    -1   -1   0   
$EndComp
$Comp
L D D4
U 1 1 58AE67FC
P 2450 1800
F 0 "D4" H 2450 1900 50  0000 C CNN
F 1 "D" H 2450 1700 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 1800 50  0001 C CNN
F 3 "" H 2450 1800 50  0000 C CNN
	1    2450 1800
	0    -1   1    0   
$EndComp
Text Label 1700 7750 0    60   ~ 0
C9
Text Label 2250 7750 0    60   ~ 0
C10
$Comp
L GND #PWR01
U 1 1 58AE7FEF
P 8200 2300
F 0 "#PWR01" H 8200 2050 50  0001 C CNN
F 1 "GND" H 8200 2150 50  0000 C CNN
F 2 "" H 8200 2300 50  0000 C CNN
F 3 "" H 8200 2300 50  0000 C CNN
	1    8200 2300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 58AE8015
P 10800 5450
F 0 "#PWR02" H 10800 5300 50  0001 C CNN
F 1 "+5V" H 10800 5590 50  0000 C CNN
F 2 "" H 10800 5450 50  0000 C CNN
F 3 "" H 10800 5450 50  0000 C CNN
	1    10800 5450
	1    0    0    -1  
$EndComp
$Comp
L CHERRY-MX-LED S1
U 1 1 58AD2D24
P 1450 1300
F 0 "S1" H 1450 1510 45  0000 L BNN
F 1 "U3" H 1450 1090 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 1450 1300 60  0001 C CNN
F 3 "" H 1450 1300 60  0001 C CNN
	1    1450 1300
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S5
U 1 1 58B64134
P 2550 2450
F 0 "S5" H 2550 2660 45  0000 L BNN
F 1 "PGUP" H 2550 2240 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2550 2450 60  0001 C CNN
F 3 "" H 2550 2450 60  0001 C CNN
	1    2550 2450
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S6
U 1 1 58B64171
P 1450 3600
F 0 "S6" H 1450 3810 45  0000 L BNN
F 1 "DELETE" H 1450 3390 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 1450 3600 60  0001 C CNN
F 3 "" H 1450 3600 60  0001 C CNN
	1    1450 3600
	0    -1   -1   0   
$EndComp
$Comp
L D D5
U 1 1 58B641CA
P 2450 2950
F 0 "D5" H 2450 3050 50  0000 C CNN
F 1 "D" H 2450 2850 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 2450 2950 50  0001 C CNN
F 3 "" H 2450 2950 50  0000 C CNN
	1    2450 2950
	0    -1   1    0   
$EndComp
$Comp
L D D6
U 1 1 58B64213
P 1350 4100
F 0 "D6" H 1350 4200 50  0000 C CNN
F 1 "D" H 1350 4000 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1350 4100 50  0001 C CNN
F 3 "" H 1350 4100 50  0000 C CNN
	1    1350 4100
	0    -1   1    0   
$EndComp
Text Label 2800 7750 0    60   ~ 0
C11
$Comp
L MAX6951 U1
U 1 1 58B67267
P 9150 1100
F 0 "U1" H 9150 700 60  0000 C CNN
F 1 "MAX6951" H 9100 1550 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16-1EP_4.4x5mm_Pitch0.65mm" H 9150 1100 60  0001 C CNN
F 3 "" H 9150 1100 60  0001 C CNN
	1    9150 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58B6765D
P 8400 1550
F 0 "#PWR03" H 8400 1300 50  0001 C CNN
F 1 "GND" H 8400 1400 50  0000 C CNN
F 2 "" H 8400 1550 50  0000 C CNN
F 3 "" H 8400 1550 50  0000 C CNN
	1    8400 1550
	1    0    0    -1  
$EndComp
Text Label 9850 850  0    60   ~ 0
LED_CS1
$Comp
L C C3
U 1 1 58B679CA
P 10700 950
F 0 "C3" H 10725 1050 50  0000 L CNN
F 1 "0.1uF" H 10725 850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10738 800 50  0001 C CNN
F 3 "" H 10700 950 50  0000 C CNN
	1    10700 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58B67CF1
P 10700 1150
F 0 "#PWR04" H 10700 900 50  0001 C CNN
F 1 "GND" H 10700 1000 50  0000 C CNN
F 2 "" H 10700 1150 50  0000 C CNN
F 3 "" H 10700 1150 50  0000 C CNN
	1    10700 1150
	1    0    0    -1  
$EndComp
Text Label 10800 5850 0    60   ~ 0
LED_CS1
Text Label 8250 950  0    60   ~ 0
LED3
Text Label 8250 1050 0    60   ~ 0
LED2
Text Label 8250 1150 0    60   ~ 0
LED1
Text Label 8250 1250 0    60   ~ 0
LED0
Text Label 9850 950  0    60   ~ 0
LED4
Text Label 9850 1050 0    60   ~ 0
LED5
Text Label 9850 1150 0    60   ~ 0
LED6
Text Label 9850 1250 0    60   ~ 0
LED7
Text Label 9850 1350 0    60   ~ 0
LED8
Text Label 3200 950  0    60   ~ 0
LED0
Text Label 1400 1600 0    60   ~ 0
LED1
Text Label 2500 1600 0    60   ~ 0
LED3
Text Label 3250 2100 0    60   ~ 0
LED1
Text Label 1400 2750 0    60   ~ 0
LED0
Text Label 1950 2750 0    60   ~ 0
LED2
Text Label 2500 2750 0    60   ~ 0
LED3
$Comp
L C C2
U 1 1 58B69D9A
P 10450 950
F 0 "C2" H 10475 1050 50  0000 L CNN
F 1 "22uF" H 10475 850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10488 800 50  0001 C CNN
F 3 "" H 10450 950 50  0000 C CNN
	1    10450 950 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58B69E15
P 10450 1150
F 0 "#PWR05" H 10450 900 50  0001 C CNN
F 1 "GND" H 10450 1000 50  0000 C CNN
F 2 "" H 10450 1150 50  0000 C CNN
F 3 "" H 10450 1150 50  0000 C CNN
	1    10450 1150
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 58B69F2C
P 9900 1650
F 0 "C1" H 9925 1750 50  0000 L CNN
F 1 "27pF" H 9925 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9938 1500 50  0001 C CNN
F 3 "" H 9900 1650 50  0000 C CNN
	1    9900 1650
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58B69F7D
P 8200 1600
F 0 "R1" V 8280 1600 50  0000 C CNN
F 1 "56k" V 8200 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8130 1600 50  0001 C CNN
F 3 "" H 8200 1600 50  0000 C CNN
	1    8200 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58B6A0E4
P 9900 1850
F 0 "#PWR06" H 9900 1600 50  0001 C CNN
F 1 "GND" H 9900 1700 50  0000 C CNN
F 2 "" H 9900 1850 50  0000 C CNN
F 3 "" H 9900 1850 50  0000 C CNN
	1    9900 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58B6A125
P 8200 1800
F 0 "#PWR07" H 8200 1550 50  0001 C CNN
F 1 "GND" H 8200 1650 50  0000 C CNN
F 2 "" H 8200 1800 50  0000 C CNN
F 3 "" H 8200 1800 50  0000 C CNN
	1    8200 1800
	1    0    0    -1  
$EndComp
$Comp
L CHERRY-MX-LED S9
U 1 1 5BB42AA2
P 2000 1300
F 0 "S9" H 2000 1510 45  0000 L BNN
F 1 "U4" H 2000 1090 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2000 1300 60  0001 C CNN
F 3 "" H 2000 1300 60  0001 C CNN
	1    2000 1300
	0    -1   -1   0   
$EndComp
$Comp
L D D9
U 1 1 5BB42C6C
P 1900 1800
F 0 "D9" H 1900 1900 50  0000 C CNN
F 1 "D" H 1900 1700 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1900 1800 50  0001 C CNN
F 3 "" H 1900 1800 50  0000 C CNN
	1    1900 1800
	0    -1   1    0   
$EndComp
$Comp
L CHERRY-MX-LED S10
U 1 1 5BB4321F
P 2000 3600
F 0 "S10" H 2000 3810 45  0000 L BNN
F 1 "END" H 2000 3390 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2000 3600 60  0001 C CNN
F 3 "" H 2000 3600 60  0001 C CNN
	1    2000 3600
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S12
U 1 1 5BB43276
P 2500 3600
F 0 "S12" H 2500 3810 45  0000 L BNN
F 1 "PGDN" H 2500 3390 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2500 3600 60  0001 C CNN
F 3 "" H 2500 3600 60  0001 C CNN
	1    2500 3600
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S11
U 1 1 5BB432D2
P 2000 5300
F 0 "S11" H 2000 5510 45  0000 L BNN
F 1 "UP" H 2000 5090 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2000 5300 60  0001 C CNN
F 3 "" H 2000 5300 60  0001 C CNN
	1    2000 5300
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S7
U 1 1 5BB43353
P 1450 6450
F 0 "S7" H 1450 6660 45  0000 L BNN
F 1 "LEFT" H 1450 6240 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 1450 6450 60  0001 C CNN
F 3 "" H 1450 6450 60  0001 C CNN
	1    1450 6450
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S8
U 1 1 5BB43447
P 1950 6450
F 0 "S8" H 1950 6660 45  0000 L BNN
F 1 "DOWN" H 1950 6240 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 1950 6450 60  0001 C CNN
F 3 "" H 1950 6450 60  0001 C CNN
	1    1950 6450
	0    -1   -1   0   
$EndComp
$Comp
L CHERRY-MX-LED S13
U 1 1 5BB434B0
P 2500 6450
F 0 "S13" H 2500 6660 45  0000 L BNN
F 1 "RIGHT" H 2500 6240 45  0000 L BNN
F 2 "Custom:CHERRY-MX-LED-Socket" H 2500 6450 60  0001 C CNN
F 3 "" H 2500 6450 60  0001 C CNN
	1    2500 6450
	0    -1   -1   0   
$EndComp
$Comp
L D D10
U 1 1 5BB439BF
P 1900 4100
F 0 "D10" H 1900 4200 50  0000 C CNN
F 1 "D" H 1900 4000 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1900 4100 50  0001 C CNN
F 3 "" H 1900 4100 50  0000 C CNN
	1    1900 4100
	0    -1   1    0   
$EndComp
$Comp
L D D12
U 1 1 5BB43A2C
P 2400 4100
F 0 "D12" H 2400 4200 50  0000 C CNN
F 1 "D" H 2400 4000 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 2400 4100 50  0001 C CNN
F 3 "" H 2400 4100 50  0000 C CNN
	1    2400 4100
	0    -1   1    0   
$EndComp
$Comp
L D D11
U 1 1 5BB43AA0
P 1900 5800
F 0 "D11" H 1900 5900 50  0000 C CNN
F 1 "D" H 1900 5700 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1900 5800 50  0001 C CNN
F 3 "" H 1900 5800 50  0000 C CNN
	1    1900 5800
	0    -1   1    0   
$EndComp
$Comp
L D D7
U 1 1 5BB43BAE
P 1350 6950
F 0 "D7" H 1350 7050 50  0000 C CNN
F 1 "D" H 1350 6850 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1350 6950 50  0001 C CNN
F 3 "" H 1350 6950 50  0000 C CNN
	1    1350 6950
	0    -1   1    0   
$EndComp
$Comp
L D D8
U 1 1 5BB43C40
P 1850 6950
F 0 "D8" H 1850 7050 50  0000 C CNN
F 1 "D" H 1850 6850 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 1850 6950 50  0001 C CNN
F 3 "" H 1850 6950 50  0000 C CNN
	1    1850 6950
	0    -1   1    0   
$EndComp
$Comp
L D D13
U 1 1 5BB43CBD
P 2400 6950
F 0 "D13" H 2400 7050 50  0000 C CNN
F 1 "D" H 2400 6850 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 2400 6950 50  0001 C CNN
F 3 "" H 2400 6950 50  0000 C CNN
	1    2400 6950
	0    -1   1    0   
$EndComp
$Comp
L +5V #PWR08
U 1 1 5BB46B0C
P 9900 650
F 0 "#PWR08" H 9900 500 50  0001 C CNN
F 1 "+5V" H 9900 790 50  0000 C CNN
F 2 "" H 9900 650 50  0000 C CNN
F 3 "" H 9900 650 50  0000 C CNN
	1    9900 650 
	1    0    0    -1  
$EndComp
$Comp
L Teensy3.6_nopogo U2
U 1 1 5BB47099
P 9650 4350
F 0 "U2" H 9650 6700 60  0000 C CNN
F 1 "Teensy3.6_nopogo" H 9650 2050 60  0000 C CNN
F 2 "Custom:Teensy35_36_nopogo" H 9650 4350 60  0001 C CNN
F 3 "" H 9650 4350 60  0000 C CNN
	1    9650 4350
	1    0    0    -1  
$EndComp
Text Label 1950 1600 0    60   ~ 0
LED2
Text Label 1400 3900 0    60   ~ 0
LED0
Text Label 1950 3900 0    60   ~ 0
LED1
Text Label 2450 3900 0    60   ~ 0
LED3
Text Label 3250 3250 0    60   ~ 0
LED2
Text Label 3300 4950 0    60   ~ 0
LED4
Text Label 3250 6100 0    60   ~ 0
LED5
Text Label 1950 5600 0    60   ~ 0
LED1
Text Label 1900 6750 0    60   ~ 0
LED1
Text Label 1400 6750 0    60   ~ 0
LED0
Text Label 2450 6750 0    60   ~ 0
LED2
Wire Wire Line
	1700 900  1700 7750
Wire Wire Line
	1700 900  1350 900 
Wire Wire Line
	1350 900  1350 1000
Wire Wire Line
	1350 1650 1350 1600
Wire Wire Line
	1350 2000 1350 1950
Connection ~ 1350 2000
Wire Wire Line
	1350 2150 1350 2050
Wire Wire Line
	1350 2050 1700 2050
Connection ~ 1700 2050
Wire Wire Line
	1900 2150 1900 2050
Wire Wire Line
	1900 2050 2250 2050
Wire Wire Line
	1350 2750 1350 2800
Wire Wire Line
	1900 2750 1900 2800
Wire Wire Line
	1900 3150 1900 3100
Wire Wire Line
	1350 3100 1350 3150
Connection ~ 1350 3150
Wire Wire Line
	2250 900  2250 7750
Wire Wire Line
	700  2000 2450 2000
Wire Wire Line
	2450 2000 2450 1950
Wire Wire Line
	2450 1650 2450 1600
Wire Wire Line
	2450 3150 2450 3100
Connection ~ 1900 3150
Wire Wire Line
	2450 2800 2450 2750
Wire Wire Line
	2450 1000 2450 900 
Wire Wire Line
	2450 900  2800 900 
Wire Wire Line
	2800 900  2800 7750
Wire Wire Line
	9800 750  10700 750 
Wire Wire Line
	9900 750  9900 650 
Wire Wire Line
	8400 1550 8400 1450
Wire Wire Line
	8400 1450 8500 1450
Wire Wire Line
	9800 850  9850 850 
Wire Wire Line
	10700 750  10700 800 
Connection ~ 9900 750 
Wire Wire Line
	10700 1150 10700 1100
Wire Wire Line
	8500 750  8250 750 
Wire Wire Line
	8500 850  8250 850 
Wire Wire Line
	9800 950  9850 950 
Wire Wire Line
	9800 1050 9850 1050
Wire Wire Line
	9800 1150 9850 1150
Wire Wire Line
	9800 1250 9850 1250
Wire Wire Line
	9800 1350 9850 1350
Wire Wire Line
	8500 950  8250 950 
Wire Wire Line
	8500 1050 8250 1050
Wire Wire Line
	8500 1150 8250 1150
Wire Wire Line
	8500 1250 8250 1250
Wire Wire Line
	1550 1000 1550 950 
Wire Wire Line
	1550 950  3200 950 
Wire Wire Line
	1550 1600 1400 1600
Wire Wire Line
	2650 1600 2500 1600
Wire Wire Line
	2650 1000 2650 950 
Connection ~ 2650 950 
Wire Wire Line
	1550 2150 1550 2100
Wire Wire Line
	2100 2150 2100 2100
Connection ~ 2100 2100
Wire Wire Line
	2650 2100 2650 2150
Connection ~ 2650 2100
Wire Wire Line
	2450 2150 2450 2050
Wire Wire Line
	2450 2050 2800 2050
Connection ~ 2800 2050
Wire Wire Line
	1550 2750 1400 2750
Wire Wire Line
	2100 2750 1950 2750
Wire Wire Line
	2650 2750 2500 2750
Wire Wire Line
	10450 1150 10450 1100
Wire Wire Line
	10450 800  10450 750 
Connection ~ 10450 750 
Wire Wire Line
	8500 1350 8200 1350
Wire Wire Line
	8200 1350 8200 1450
Wire Wire Line
	9800 1450 9900 1450
Wire Wire Line
	8200 1800 8200 1750
Wire Wire Line
	1550 2100 3250 2100
Wire Wire Line
	750  3150 2450 3150
Wire Wire Line
	750  4300 2400 4300
Wire Wire Line
	1350 4300 1350 4250
Wire Wire Line
	1350 3950 1350 3900
Wire Wire Line
	1900 3950 1900 3900
Wire Wire Line
	2400 3950 2400 3900
Wire Wire Line
	1900 4300 1900 4250
Connection ~ 1350 4300
Wire Wire Line
	2400 4300 2400 4250
Connection ~ 1900 4300
Wire Wire Line
	1900 6000 750  6000
Wire Wire Line
	1900 6000 1900 5950
Wire Wire Line
	1900 5650 1900 5600
Wire Wire Line
	1350 3200 1350 3300
Wire Wire Line
	1350 3200 1700 3200
Connection ~ 1700 3200
Wire Wire Line
	1900 3300 1900 3200
Wire Wire Line
	1900 3200 2250 3200
Connection ~ 2250 3200
Wire Wire Line
	2400 3300 2400 3200
Wire Wire Line
	2400 3200 2800 3200
Connection ~ 2800 3200
Wire Wire Line
	1900 5000 1900 4900
Wire Wire Line
	1900 4900 2250 4900
Connection ~ 2250 4900
Wire Wire Line
	1350 7100 1350 7150
Wire Wire Line
	750  7150 2400 7150
Wire Wire Line
	1850 7150 1850 7100
Connection ~ 1350 7150
Wire Wire Line
	2400 7150 2400 7100
Connection ~ 1850 7150
Wire Wire Line
	1350 6800 1350 6750
Wire Wire Line
	1350 6150 1350 6050
Wire Wire Line
	1350 6050 1700 6050
Connection ~ 1700 6050
Wire Wire Line
	1850 6150 1850 6050
Wire Wire Line
	1850 6050 2250 6050
Connection ~ 2250 6050
Wire Wire Line
	2400 6150 2400 6050
Wire Wire Line
	2400 6050 2800 6050
Connection ~ 2800 6050
Wire Wire Line
	1850 6800 1850 6750
Wire Wire Line
	2400 6800 2400 6750
Wire Wire Line
	1900 2000 1900 1950
Connection ~ 1900 2000
Wire Wire Line
	1900 1650 1900 1600
Wire Wire Line
	1900 1000 1900 900 
Wire Wire Line
	1900 900  2250 900 
Connection ~ 2250 2050
Wire Wire Line
	10650 5550 10850 5550
Wire Wire Line
	10800 5550 10800 5450
Wire Wire Line
	8650 6150 8450 6150
Wire Wire Line
	8650 3450 8500 3450
Wire Wire Line
	8650 2550 8500 2550
Wire Wire Line
	8650 2650 8500 2650
Wire Wire Line
	8650 2750 8500 2750
Wire Wire Line
	8650 2850 8500 2850
Wire Wire Line
	8650 2950 8500 2950
Wire Wire Line
	8650 3050 8500 3050
Wire Wire Line
	8650 3150 8500 3150
Wire Wire Line
	8500 5350 8650 5350
Wire Wire Line
	8500 5250 8650 5250
Wire Wire Line
	8500 5150 8650 5150
Wire Wire Line
	8650 2250 8200 2250
Wire Wire Line
	8200 2250 8200 2300
Wire Wire Line
	2100 1000 2100 950 
Connection ~ 2100 950 
Wire Wire Line
	2100 1600 1950 1600
Wire Wire Line
	1550 3900 1400 3900
Wire Wire Line
	2100 3900 1950 3900
Wire Wire Line
	2600 3900 2450 3900
Wire Wire Line
	1550 3300 1550 3250
Wire Wire Line
	1550 3250 3250 3250
Wire Wire Line
	2100 3300 2100 3250
Connection ~ 2100 3250
Wire Wire Line
	2600 3300 2600 3250
Connection ~ 2600 3250
Wire Wire Line
	2100 5000 2100 4950
Wire Wire Line
	2100 4950 3300 4950
Wire Wire Line
	1550 6150 1550 6100
Wire Wire Line
	1550 6100 3250 6100
Wire Wire Line
	2100 5600 1950 5600
Wire Wire Line
	1550 6750 1400 6750
Wire Wire Line
	2050 6750 1900 6750
Wire Wire Line
	2600 6750 2450 6750
Wire Wire Line
	2050 6150 2050 6100
Connection ~ 2050 6100
Wire Wire Line
	2600 6150 2600 6100
Connection ~ 2600 6100
Wire Wire Line
	8650 3750 8400 3750
Wire Wire Line
	8650 3850 8400 3850
Wire Wire Line
	8650 3950 8400 3950
Wire Wire Line
	8650 4150 8400 4150
Wire Wire Line
	8650 4350 8400 4350
Wire Wire Line
	8650 4450 8400 4450
Wire Wire Line
	8650 4550 8400 4550
Wire Wire Line
	8650 4250 8400 4250
Wire Wire Line
	8650 3250 8500 3250
Wire Wire Line
	8650 3350 8500 3350
Wire Wire Line
	8650 5450 8500 5450
Wire Wire Line
	8650 5550 8500 5550
Wire Wire Line
	8650 5650 8500 5650
Wire Wire Line
	8650 5750 8500 5750
Wire Wire Line
	8650 6250 8450 6250
Wire Wire Line
	8650 6350 8450 6350
Wire Wire Line
	8650 6450 8450 6450
Wire Wire Line
	10650 6450 10800 6450
Wire Wire Line
	10650 6350 10800 6350
Wire Wire Line
	10650 6250 10800 6250
Wire Wire Line
	10650 6150 10800 6150
Wire Wire Line
	10650 6050 10800 6050
Wire Wire Line
	10650 5950 10800 5950
Wire Wire Line
	10650 5850 10800 5850
Text Label 8400 4250 0    60   ~ 0
C9
Text Label 8400 4350 0    60   ~ 0
C10
Text Label 8400 4450 0    60   ~ 0
C11
$Sheet
S 4650 1550 1500 1550
U 5BB6BA38
F0 "left" 60
F1 "left.sch" 60
$EndSheet
Text GLabel 8500 2550 0    60   Input ~ 0
R1
Text GLabel 700  2000 0    60   Input ~ 0
R1
Text GLabel 8500 2650 0    60   Input ~ 0
R2
Text GLabel 8500 2750 0    60   Input ~ 0
R3
Text GLabel 8500 2850 0    60   Input ~ 0
R4
Text GLabel 8500 2950 0    60   Input ~ 0
R5
Text GLabel 8500 3050 0    60   Input ~ 0
R6
Text GLabel 8500 3150 0    60   Input ~ 0
C1
Text GLabel 8500 3250 0    60   Input ~ 0
C2
Text GLabel 8500 3350 0    60   Input ~ 0
C3
Text GLabel 750  3150 0    60   Input ~ 0
R2
Text GLabel 750  4300 0    60   Input ~ 0
R3
Text GLabel 750  7150 0    60   Input ~ 0
R6
Text GLabel 750  6000 0    60   Input ~ 0
R5
Wire Wire Line
	8650 4050 8400 4050
Text GLabel 8400 3750 0    60   Input ~ 0
C4
Text GLabel 8400 3850 0    60   Input ~ 0
C5
Text GLabel 8400 3950 0    60   Input ~ 0
C6
Text GLabel 8400 4050 0    60   Input ~ 0
C7
Text GLabel 8400 4150 0    60   Input ~ 0
C8
Text GLabel 8400 4550 0    60   Input ~ 0
C12
Text GLabel 8450 6250 0    60   Input ~ 0
C13
Text GLabel 8500 5750 0    60   Input ~ 0
C14
Text GLabel 8500 5650 0    60   Input ~ 0
C15
Text GLabel 8500 5550 0    60   Input ~ 0
C16
Text GLabel 8500 5450 0    60   Input ~ 0
C17
Text GLabel 8500 5350 0    60   Input ~ 0
C18
Text GLabel 8500 5250 0    60   Input ~ 0
C19
Text GLabel 8500 5150 0    60   Input ~ 0
C20
Text GLabel 8250 750  0    60   Input ~ 0
MOSI
Text GLabel 8250 850  0    60   Input ~ 0
SCK
Text GLabel 8500 3450 0    60   Input ~ 0
MOSI
Text GLabel 8450 6150 0    60   Input ~ 0
SCK
Text GLabel 10800 5950 2    60   Input ~ 0
LED_CS2
Text GLabel 10800 6050 2    60   Input ~ 0
LED_CS3
Text GLabel 10800 6250 2    60   Input ~ 0
SCL
Text GLabel 10800 6350 2    60   Input ~ 0
SDA
Text GLabel 8500 3550 0    60   Input ~ 0
MISO
Wire Wire Line
	8650 3550 8500 3550
Text GLabel 10850 5550 2    60   Input ~ 0
5V
Connection ~ 10800 5550
Wire Wire Line
	9900 1850 9900 1800
$Comp
L GND #PWR09
U 1 1 5BBF42FE
P 9350 1750
F 0 "#PWR09" H 9350 1500 50  0001 C CNN
F 1 "GND" H 9350 1600 50  0000 C CNN
F 2 "" H 9350 1750 50  0000 C CNN
F 3 "" H 9350 1750 50  0000 C CNN
	1    9350 1750
	1    0    0    -1  
$EndComp
$Sheet
S 4650 3400 1400 1500
U 5BC10CB8
F0 "right" 60
F1 "right.sch" 60
$EndSheet
Wire Wire Line
	9900 1450 9900 1500
Wire Wire Line
	9350 1600 9350 1750
$EndSCHEMATC
