EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "sensOCampus"
Date "2021-01-19"
Rev "5.0"
Comp "Université Paul Sabatier"
Comment1 "Version supporting esp32"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:AMS1117-3.3 U1
U 1 1 60070624
P 10450 5800
F 0 "U1" V 10496 5905 50  0000 L CNN
F 1 "AMS1117-3.3" V 10405 5905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 10450 6000 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 10550 5550 50  0001 C CNN
	1    10450 5800
	0    -1   -1   0   
$EndComp
Text GLabel 10450 5400 1    50   Input ~ 0
3V3
Wire Wire Line
	10450 5400 10450 5500
Text GLabel 10850 5800 2    50   Input ~ 0
GND
Text GLabel 10450 6200 3    50   Input ~ 0
VIN
Text GLabel 9200 2100 0    50   Input ~ 0
GND
Text GLabel 9550 2200 0    50   Input ~ 0
VIN
Wire Wire Line
	9550 2200 9650 2200
Wire Wire Line
	10750 5800 10850 5800
Wire Wire Line
	10450 6100 10450 6200
Text Notes 9300 5400 0    50   ~ 0
Actual 3V3 power source \nconverted from 5V
Wire Notes Line
	11200 5150 9250 5150
Wire Notes Line
	9250 6500 11200 6500
Text GLabel 10850 900  2    50   Input ~ 0
SCL
Text GLabel 10850 1200 2    50   Input ~ 0
SDA
Wire Wire Line
	10750 900  10850 900 
Wire Wire Line
	10750 1200 10850 1200
Text GLabel 10150 3650 1    50   Input ~ 0
3V3
Text GLabel 10250 3650 1    50   Input ~ 0
GND
Text GLabel 10350 3650 1    50   Input ~ 0
SCL
Text GLabel 10450 3650 1    50   Input ~ 0
SDA
Wire Wire Line
	10150 3650 10150 3800
Text Notes 9950 3400 0    50   ~ 0
OLED screen wiring
Wire Notes Line
	9250 3300 9250 6500
Text GLabel 10850 1000 2    50   Input ~ 0
U0_TX
Text GLabel 10850 1100 2    50   Input ~ 0
U0_RX
Wire Wire Line
	10750 1000 10850 1000
Wire Wire Line
	10750 1100 10850 1100
$Comp
L sensOCampus:ESP32 ESP1
U 1 1 6006D219
P 9650 2200
F 0 "ESP1" H 10050 3700 50  0000 C CNN
F 1 "ESP32" H 10350 3700 50  0000 C CNN
F 2 "" H 9650 2200 50  0001 C CNN
F 3 "" H 9650 2200 50  0001 C CNN
	1    9650 2200
	1    0    0    -1  
$EndComp
$Comp
L sensOCampus:OLED_1.3" OLED1
U 1 1 6007180F
P 9600 5050
F 0 "OLED1" H 10550 5000 50  0000 L CNN
F 1 "OLED_1.3\"" H 9800 5000 50  0000 L CNN
F 2 "" H 9600 5050 50  0001 C CNN
F 3 "" H 9600 5050 50  0001 C CNN
	1    9600 5050
	1    0    0    -1  
$EndComp
$Comp
L sensOCampus:SDS011 SDS111
U 1 1 6006D5F4
P 6350 6100
F 0 "SDS111" H 7350 6050 50  0000 L CNN
F 1 "SDS011" H 6750 6050 50  0000 L CNN
F 2 "" H 6350 6100 50  0001 C CNN
F 3 "" H 6350 6100 50  0001 C CNN
	1    6350 6100
	1    0    0    -1  
$EndComp
Text GLabel 8400 6150 3    50   Input ~ 0
U0_TX
Text GLabel 8500 6150 3    50   Input ~ 0
U0_RX
Wire Wire Line
	8400 6150 8400 6000
Wire Wire Line
	8500 6150 8500 6000
Wire Wire Line
	8600 6150 8600 6000
Text GLabel 8800 6150 3    50   Input ~ 0
VIN
Wire Wire Line
	8800 6150 8800 6000
Text Notes 7300 6350 0    50   ~ 0
SDS011 wiring
Wire Notes Line
	6300 3300 6300 6550
Wire Notes Line
	6300 6550 6950 6550
Wire Notes Line
	6300 3300 11200 3300
Wire Wire Line
	10250 3650 10250 3800
Wire Wire Line
	10350 3650 10350 3800
Wire Wire Line
	10450 3650 10450 3800
NoConn ~ 10750 800 
NoConn ~ 9650 800 
NoConn ~ 9650 900 
NoConn ~ 9650 1000
NoConn ~ 9650 1100
NoConn ~ 9650 1200
NoConn ~ 9650 1300
NoConn ~ 9650 1400
NoConn ~ 9650 1500
NoConn ~ 9650 1600
NoConn ~ 9650 1700
NoConn ~ 9650 2000
NoConn ~ 9650 1900
NoConn ~ 9650 1800
NoConn ~ 10750 2000
NoConn ~ 10750 1900
NoConn ~ 10750 1800
NoConn ~ 10750 1700
NoConn ~ 10750 1600
NoConn ~ 10750 1500
NoConn ~ 10750 1400
NoConn ~ 10750 1300
NoConn ~ 8700 6000
NoConn ~ 8900 6000
NoConn ~ 9000 6000
$Comp
L power:GND #PWR0101
U 1 1 600777A1
P 9300 2150
F 0 "#PWR0101" H 9300 1900 50  0001 C CNN
F 1 "GND" H 9305 1977 50  0000 C CNN
F 2 "" H 9300 2150 50  0001 C CNN
F 3 "" H 9300 2150 50  0001 C CNN
	1    9300 2150
	1    0    0    -1  
$EndComp
NoConn ~ 10750 2100
NoConn ~ 10750 2200
Wire Wire Line
	9200 2100 9300 2100
Wire Wire Line
	9300 2150 9300 2100
Connection ~ 9300 2100
Wire Wire Line
	9300 2100 9650 2100
$Comp
L power:GND #PWR0102
U 1 1 6006E1F6
P 8600 6150
F 0 "#PWR0102" H 8600 5900 50  0001 C CNN
F 1 "GND" H 8605 5977 50  0000 C CNN
F 2 "" H 8600 6150 50  0001 C CNN
F 3 "" H 8600 6150 50  0001 C CNN
	1    8600 6150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
