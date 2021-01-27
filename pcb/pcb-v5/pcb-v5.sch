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
	10450 6100 10450 6150
Text Notes 9300 5400 0    50   ~ 0
Actual 3V3 power source \nconverted from 5V
Text GLabel 10750 900  2    50   Input ~ 0
SCL
Text GLabel 10750 1200 2    50   Input ~ 0
SDA
Wire Wire Line
	10650 900  10750 900 
Wire Wire Line
	10650 1200 10750 1200
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
Text GLabel 10750 1600 2    50   Input ~ 0
U2_TX
Text GLabel 10750 1700 2    50   Input ~ 0
U2_RX
Wire Wire Line
	10650 1600 10750 1600
Wire Wire Line
	10650 1700 10750 1700
$Comp
L sensOCampus:ESP32 ESP1
U 1 1 6006D219
P 9650 2200
F 0 "ESP1" H 10050 3700 50  0000 C CNN
F 1 "ESP32" H 10350 3700 50  0000 C CNN
F 2 "pcb-v5:ESP32_30_pins" H 9650 2200 50  0001 C CNN
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
F 2 "pcb-v5:OLED_1.3" H 9600 5050 50  0001 C CNN
F 3 "" H 9600 5050 50  0001 C CNN
	1    9600 5050
	1    0    0    -1  
$EndComp
Text GLabel 8400 6050 3    50   Input ~ 0
U2_TX
Text GLabel 8500 6050 3    50   Input ~ 0
U2_RX
Text GLabel 8700 6050 3    50   Input ~ 0
VIN
Wire Wire Line
	10250 3650 10250 3800
Wire Wire Line
	10350 3650 10350 3800
Wire Wire Line
	10450 3650 10450 3800
NoConn ~ 10650 800 
NoConn ~ 9650 800 
NoConn ~ 9650 900 
NoConn ~ 9650 1000
NoConn ~ 9650 1500
NoConn ~ 9650 1600
NoConn ~ 9650 1700
NoConn ~ 9650 2000
NoConn ~ 9650 1900
NoConn ~ 9650 1800
NoConn ~ 10650 2000
NoConn ~ 10650 1900
NoConn ~ 10650 1800
NoConn ~ 10650 1500
NoConn ~ 10650 1400
NoConn ~ 10650 1300
$Comp
L power:GND #PWR02
U 1 1 600777A1
P 9300 2150
F 0 "#PWR02" H 9300 1900 50  0001 C CNN
F 1 "GND" H 9305 1977 50  0000 C CNN
F 2 "" H 9300 2150 50  0001 C CNN
F 3 "" H 9300 2150 50  0001 C CNN
	1    9300 2150
	1    0    0    -1  
$EndComp
NoConn ~ 10650 2100
NoConn ~ 10650 2200
Wire Wire Line
	9200 2100 9300 2100
Wire Wire Line
	9300 2150 9300 2100
Connection ~ 9300 2100
Wire Wire Line
	9300 2100 9650 2100
$Comp
L power:GND #PWR01
U 1 1 6006E1F6
P 8600 6050
F 0 "#PWR01" H 8600 5800 50  0001 C CNN
F 1 "GND" V 8600 5850 50  0000 C CNN
F 2 "" H 8600 6050 50  0001 C CNN
F 3 "" H 8600 6050 50  0001 C CNN
	1    8600 6050
	1    0    0    -1  
$EndComp
Text GLabel 8500 850  2    50   Input ~ 0
3V3
Text GLabel 8500 950  2    50   Input ~ 0
GND
Text GLabel 8500 1050 2    50   Input ~ 0
SCL
Text GLabel 8500 1150 2    50   Input ~ 0
SDA
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 600954C5
P 9900 2700
F 0 "H1" V 10137 2703 50  0000 C CNN
F 1 "MountingHole_Pad" V 10046 2703 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 9900 2700 50  0001 C CNN
F 3 "~" H 9900 2700 50  0001 C CNN
	1    9900 2700
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60096B04
P 9900 3100
F 0 "H2" V 10137 3103 50  0000 C CNN
F 1 "MountingHole_Pad" V 10046 3103 50  0000 C CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 9900 3100 50  0001 C CNN
F 3 "~" H 9900 3100 50  0001 C CNN
	1    9900 3100
	0    -1   -1   0   
$EndComp
Text GLabel 10000 2700 2    50   Input ~ 0
GND
Text GLabel 10000 3100 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x05_Male J4
U 1 1 6009AB56
P 8600 5850
F 0 "J4" V 8500 5400 50  0000 L CNN
F 1 "Conn_01x05_Male" V 8500 5600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8600 5850 50  0001 C CNN
F 3 "~" H 8600 5850 50  0001 C CNN
	1    8600 5850
	0    1    1    0   
$EndComp
Text GLabel 8800 6050 3    50   Input ~ 0
INT
NoConn ~ 10650 1000
NoConn ~ 10650 1100
Text GLabel 9550 1200 0    50   Input ~ 0
INT
Wire Wire Line
	9550 1200 9650 1200
Text Notes 8150 5350 0    50   ~ 0
Serial port connection\nwith interrupt pin
Wire Notes Line
	8100 5150 8100 6550
$Comp
L neosensor_addon:G71Y SW3
U 1 1 60095C5E
P 8300 4500
F 0 "SW3" H 8300 4725 50  0000 C CNN
F 1 "G71Y" H 8300 4634 50  0000 C CNN
F 2 "pcb-v5:G71Y_µsw_smd" H 8300 4500 50  0001 C CIN
F 3 "" H 8300 4500 50  0001 C CNN
	1    8300 4500
	1    0    0    -1  
$EndComp
Text GLabel 8100 4600 0    50   Input ~ 0
GND
Text GLabel 9550 1100 0    50   Input ~ 0
GPIO_34
Wire Wire Line
	9550 1100 9650 1100
$Comp
L Device:CP C1
U 1 1 60099A48
P 10750 6150
F 0 "C1" V 10900 6150 50  0000 C CNN
F 1 "10µF" V 10600 6150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10788 6000 50  0001 C CNN
F 3 "~" H 10750 6150 50  0001 C CNN
	1    10750 6150
	0    -1   -1   0   
$EndComp
Connection ~ 10450 6150
Wire Wire Line
	10450 6150 10450 6200
Text GLabel 10900 6150 2    50   Input ~ 0
GND
Wire Wire Line
	10450 6150 10600 6150
Text GLabel 8100 4500 0    50   Input ~ 0
3V3
$Comp
L Device:LED D1
U 1 1 6009ECC5
P 9000 3550
F 0 "D1" V 9039 3432 50  0000 R CNN
F 1 "LED" V 8948 3432 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 3550 50  0001 C CNN
F 3 "~" H 9000 3550 50  0001 C CNN
	1    9000 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 600FD74A
P 9000 4000
F 0 "R3" H 9070 4046 50  0000 L CNN
F 1 "68" H 9070 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8930 4000 50  0001 C CNN
F 3 "~" H 9000 4000 50  0001 C CNN
	1    9000 4000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 600FF270
P 8900 4500
F 0 "Q1" H 9104 4546 50  0000 L CNN
F 1 "2N7002" H 9104 4455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9100 4425 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 8900 4500 50  0001 L CNN
	1    8900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3700 9000 3850
Wire Wire Line
	9000 4150 9000 4300
Text GLabel 9000 4700 3    50   Input ~ 0
GND
Text GLabel 9000 3400 1    50   Input ~ 0
VIN
$Comp
L Device:R R2
U 1 1 6010D04F
P 8600 4700
F 0 "R2" H 8670 4746 50  0000 L CNN
F 1 "15k" H 8670 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8530 4700 50  0001 C CNN
F 3 "~" H 8600 4700 50  0001 C CNN
	1    8600 4700
	1    0    0    -1  
$EndComp
Text GLabel 8600 4850 3    50   Input ~ 0
GND
Wire Wire Line
	8500 4500 8600 4500
Wire Wire Line
	8600 4500 8600 4550
Connection ~ 8600 4500
Wire Wire Line
	8600 4500 8700 4500
Text GLabel 8500 4050 0    50   Input ~ 0
GPIO_34
Wire Wire Line
	8600 4050 8500 4050
$Comp
L Device:R R1
U 1 1 6012D894
P 8600 4250
F 0 "R1" H 8670 4296 50  0000 L CNN
F 1 "470" H 8670 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8530 4250 50  0001 C CNN
F 3 "~" H 8600 4250 50  0001 C CNN
	1    8600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4050 8600 4100
Wire Wire Line
	8600 4400 8600 4500
Wire Notes Line
	9400 5150 9400 3150
Wire Notes Line
	9400 3150 7850 3150
Wire Notes Line
	7850 3150 7850 5150
Text Notes 7900 3300 0    50   ~ 0
LED & user switch (clear)
Text GLabel 9550 1300 0    50   Input ~ 0
GPIO_32
Text GLabel 9550 1400 0    50   Input ~ 0
GPIO_33
Wire Wire Line
	9550 1300 9650 1300
Wire Wire Line
	9550 1400 9650 1400
$Comp
L neosensor_addon:G71Y SW2
U 1 1 60134600
P 7450 6250
F 0 "SW2" H 7450 6475 50  0000 C CNN
F 1 "G71Y" H 7450 6384 50  0000 C CNN
F 2 "pcb-v5:G71Y_µsw_smd" H 7450 6250 50  0001 C CIN
F 3 "" H 7450 6250 50  0001 C CNN
	1    7450 6250
	1    0    0    -1  
$EndComp
Text GLabel 7650 6250 2    50   Input ~ 0
GPIO_32
Text GLabel 7250 6250 0    50   Input ~ 0
3V3
Text GLabel 7250 6350 0    50   Input ~ 0
GND
$Comp
L neosensor_addon:G71Y SW1
U 1 1 6013A964
P 7450 5650
F 0 "SW1" H 7450 5875 50  0000 C CNN
F 1 "G71Y" H 7450 5784 50  0000 C CNN
F 2 "pcb-v5:G71Y_µsw_smd" H 7450 5650 50  0001 C CIN
F 3 "" H 7450 5650 50  0001 C CNN
	1    7450 5650
	1    0    0    -1  
$EndComp
Text GLabel 7650 5650 2    50   Input ~ 0
GPIO_33
Text GLabel 7250 5650 0    50   Input ~ 0
3V3
Text GLabel 7250 5750 0    50   Input ~ 0
GND
Text Notes 6900 5300 0    50   ~ 0
Switchs to control the screen
Wire Notes Line
	6850 5150 6850 6550
Wire Notes Line
	6850 6550 6950 6550
Wire Notes Line
	6850 5150 11200 5150
Wire Notes Line
	9250 5150 9250 6550
$Comp
L Connector:Conn_01x05_Female J3
U 1 1 601342BC
P 8300 1050
F 0 "J3" H 8192 625 50  0000 C CNN
F 1 "Conn_01x05_Female" H 8192 716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 8300 1050 50  0001 C CNN
F 3 "~" H 8300 1050 50  0001 C CNN
	1    8300 1050
	-1   0    0    1   
$EndComp
Text GLabel 8500 1250 2    50   Input ~ 0
INT
Text GLabel 7700 850  2    50   Input ~ 0
3V3
Text GLabel 7700 950  2    50   Input ~ 0
GND
Text GLabel 7700 1050 2    50   Input ~ 0
SCL
Text GLabel 7700 1150 2    50   Input ~ 0
SDA
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 6013A61F
P 7500 1050
F 0 "J2" H 7392 625 50  0000 C CNN
F 1 "Conn_01x05_Female" H 7392 716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 7500 1050 50  0001 C CNN
F 3 "~" H 7500 1050 50  0001 C CNN
	1    7500 1050
	-1   0    0    1   
$EndComp
Text GLabel 7700 1250 2    50   Input ~ 0
INT
Text GLabel 6850 850  2    50   Input ~ 0
3V3
Text GLabel 6850 950  2    50   Input ~ 0
GND
Text GLabel 6850 1050 2    50   Input ~ 0
SCL
Text GLabel 6850 1150 2    50   Input ~ 0
SDA
$Comp
L Connector:Conn_01x05_Female J1
U 1 1 6013B4C5
P 6650 1050
F 0 "J1" H 6542 625 50  0000 C CNN
F 1 "Conn_01x05_Female" H 6542 716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 6650 1050 50  0001 C CNN
F 3 "~" H 6650 1050 50  0001 C CNN
	1    6650 1050
	-1   0    0    1   
$EndComp
Text GLabel 6850 1250 2    50   Input ~ 0
INT
Wire Notes Line
	8900 450  8900 3150
Wire Notes Line
	8900 1650 6300 1650
Wire Notes Line
	6300 1650 6300 450 
$Comp
L sensOCampus:02x06_pad e1
U 1 1 601241B4
P 6300 5100
F 0 "e1" H 6375 5575 50  0000 C CNN
F 1 "02x06_pad" H 6375 5484 50  0000 C CNN
F 2 "pcb-v5:02x06_pad" H 6300 5100 50  0001 C CNN
F 3 "" H 6300 5100 50  0001 C CNN
	1    6300 5100
	1    0    0    -1  
$EndComp
NoConn ~ 6350 4850
NoConn ~ 6400 4850
NoConn ~ 6400 4900
NoConn ~ 6350 4900
NoConn ~ 6350 4950
NoConn ~ 6400 4950
NoConn ~ 6400 5000
NoConn ~ 6350 5000
NoConn ~ 6350 5050
NoConn ~ 6400 5050
$EndSCHEMATC
