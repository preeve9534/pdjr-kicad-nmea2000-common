EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SIM108 Switch Input Module"
Date "2022-06-11"
Rev "2.0.0"
Comp "PDJR <preeve@pdjr.eu>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 650  950  0    50   ~ 0
Opto-isolated SPST inputs. Each opto-isolator\nis driven by a constant current source which\noperates the isolator LED at 6mA from voltages\nin the range 5VDC through 50VDC.
$Comp
L Device:R R1
U 1 1 5F1E6C5E
P 2300 7450
F 0 "R1" H 2300 7300 50  0000 R CNN
F 1 "4K7 0.125W" V 2300 7450 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2230 7450 50  0001 C CNN
F 3 "~" H 2300 7450 50  0001 C CNN
	1    2300 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5F2A4B92
P 4400 5450
F 0 "F1" V 4300 5450 50  0000 C CNN
F 1 "1A" V 4400 5450 39  0000 C CNN
F 2 "Fuse:Fuse_Littelfuse_395Series" H 4450 5250 50  0001 L CNN
F 3 "~" H 4400 5450 50  0001 C CNN
	1    4400 5450
	0    1    1    0   
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-P U1
U 1 1 5F1D12F5
P 3550 6850
F 0 "U1" H 3750 7200 50  0000 C CNN
F 1 "MCP2551-I-P" H 3800 6500 39  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3550 6350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 3550 6850 50  0001 C CNN
	1    3550 6850
	1    0    0    -1  
$EndComp
Connection ~ 2300 7600
Wire Wire Line
	2300 7050 2300 7300
Wire Wire Line
	2700 6350 3550 6350
Wire Wire Line
	3550 6350 3550 6450
Connection ~ 2700 6350
Wire Wire Line
	4050 5450 4150 5450
Wire Wire Line
	3550 7250 3550 7600
NoConn ~ 3050 6950
$Comp
L power:+5V #PWR01
U 1 1 5FC3AC81
P 1650 5450
F 0 "#PWR01" H 1650 5300 50  0001 C CNN
F 1 "+5V" V 1665 5578 50  0000 L CNN
F 2 "" H 1650 5450 50  0001 C CNN
F 3 "" H 1650 5450 50  0001 C CNN
	1    1650 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FC3B74A
P 1650 5850
F 0 "#PWR02" H 1650 5600 50  0001 C CNN
F 1 "GND" V 1655 5722 50  0000 R CNN
F 2 "" H 1650 5850 50  0001 C CNN
F 3 "" H 1650 5850 50  0001 C CNN
	1    1650 5850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 63360127
P 1650 6350
F 0 "#PWR03" H 1650 6200 50  0001 C CNN
F 1 "+5V" V 1665 6478 50  0000 L CNN
F 2 "" H 1650 6350 50  0001 C CNN
F 3 "" H 1650 6350 50  0001 C CNN
	1    1650 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FC44BAE
P 1650 7600
F 0 "#PWR04" H 1650 7350 50  0001 C CNN
F 1 "GND" V 1650 7400 50  0000 C CNN
F 2 "" H 1650 7600 50  0001 C CNN
F 3 "" H 1650 7600 50  0001 C CNN
	1    1650 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 6350 2700 6350
Text Label 1350 7250 0    50   ~ 0
CAN_RX
Text Label 1350 7150 0    50   ~ 0
CAN_TX
Text Notes 1300 5250 0    50   ~ 10
POWER SUPPLY & CAN INTERFACE
Wire Wire Line
	4050 5850 4150 5850
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6336012D
P 4150 5450
F 0 "#FLG01" H 4150 5525 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 5623 50  0001 C CNN
F 2 "" H 4150 5450 50  0001 C CNN
F 3 "~" H 4150 5450 50  0001 C CNN
	1    4150 5450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6336012E
P 4150 5850
F 0 "#FLG02" H 4150 5925 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 6023 50  0001 C CNN
F 2 "" H 4150 5850 50  0001 C CNN
F 3 "~" H 4150 5850 50  0001 C CNN
	1    4150 5850
	-1   0    0    1   
$EndComp
Connection ~ 4150 5450
Wire Wire Line
	4150 5450 4250 5450
Connection ~ 4150 5850
Wire Wire Line
	4150 5850 4250 5850
$Comp
L Device:R R2
U 1 1 63360130
P 4700 6750
F 0 "R2" V 4600 6800 50  0000 R CNN
F 1 "120R 0.5W" V 4700 6750 20  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4630 6750 50  0001 C CNN
F 3 "~" H 4700 6750 50  0001 C CNN
	1    4700 6750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 63360129
P 5250 5650
F 0 "J2" H 5250 5950 50  0000 C CNN
F 1 "CAN" H 5250 5350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5250 5650 50  0001 C CNN
F 3 "~" H 5250 5650 50  0001 C CNN
	1    5250 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 631C329D
P 9950 3400
F 0 "D1" H 10050 3350 50  0000 C CNN
F 1 "LED" H 9943 3236 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 3400 50  0001 C CNN
F 3 "~" H 9950 3400 50  0001 C CNN
	1    9950 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D6
U 1 1 631D7AEF
P 10250 3500
F 0 "D6" H 10350 3450 50  0000 C CNN
F 1 "LED" H 10243 3336 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 3500 50  0001 C CNN
F 3 "~" H 10250 3500 50  0001 C CNN
	1    10250 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 631D7EE7
P 9950 3600
F 0 "D2" H 10050 3550 50  0000 C CNN
F 1 "LED" H 9943 3436 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 3600 50  0001 C CNN
F 3 "~" H 9950 3600 50  0001 C CNN
	1    9950 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D7
U 1 1 631D8355
P 10250 3700
F 0 "D7" H 10350 3650 50  0000 C CNN
F 1 "LED" H 10243 3536 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 3700 50  0001 C CNN
F 3 "~" H 10250 3700 50  0001 C CNN
	1    10250 3700
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DIP_x02 SW3
U 1 1 62A67242
P 5250 6750
F 0 "SW3" H 5250 6600 50  0000 C CNN
F 1 "BUS" H 5250 7000 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm_LongPads" H 5250 6750 50  0001 C CNN
F 3 "~" H 5250 6750 50  0001 C CNN
	1    5250 6750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U4
U 1 1 6338D277
P 9300 3800
F 0 "U4" H 9550 4350 50  0000 C CNN
F 1 "74HCT595" H 9500 3150 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 9300 3800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9300 3800 50  0001 C CNN
	1    9300 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 63F004DD
P 9950 3800
F 0 "D3" H 10050 3750 50  0000 C CNN
F 1 "LED" H 9943 3636 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 3800 50  0001 C CNN
F 3 "~" H 9950 3800 50  0001 C CNN
	1    9950 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D8
U 1 1 63F00A5B
P 10250 3900
F 0 "D8" H 10350 3850 50  0000 C CNN
F 1 "LED" H 10243 3736 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 3900 50  0001 C CNN
F 3 "~" H 10250 3900 50  0001 C CNN
	1    10250 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 3400 9800 3400
Wire Wire Line
	9700 3500 10100 3500
Wire Wire Line
	9700 3600 9800 3600
Wire Wire Line
	9700 3700 10100 3700
Wire Wire Line
	9700 3800 9800 3800
Wire Wire Line
	9700 3900 10100 3900
Wire Wire Line
	10100 3400 10500 3400
Wire Wire Line
	10400 3500 10500 3500
Wire Wire Line
	10100 3600 10500 3600
Wire Wire Line
	10400 3700 10500 3700
Wire Wire Line
	10100 3800 10500 3800
Wire Wire Line
	10400 3900 10500 3900
Text Label 8700 3400 2    50   ~ 0
LED_DATA
Text Label 8700 3600 2    50   ~ 0
LED_CLOCK
Text Label 8700 3900 2    50   ~ 0
LED_LATCH
Wire Wire Line
	9300 4500 9300 4600
Wire Wire Line
	8800 4600 8800 4000
Wire Wire Line
	8800 4000 8900 4000
Wire Wire Line
	8800 4600 8700 4600
$Comp
L power:GND #PWR024
U 1 1 640FFD0C
P 8700 4600
F 0 "#PWR024" H 8700 4350 50  0001 C CNN
F 1 "GND" V 8700 4400 50  0000 C CNN
F 2 "" H 8700 4600 50  0001 C CNN
F 3 "" H 8700 4600 50  0001 C CNN
	1    8700 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 3700 8800 3700
Wire Wire Line
	8800 3700 8800 3100
Wire Wire Line
	8800 3100 9300 3100
Wire Wire Line
	9300 3100 9300 3200
Wire Wire Line
	8800 3100 8700 3100
Connection ~ 8800 3100
$Comp
L power:+5V #PWR023
U 1 1 64136A77
P 8700 3100
F 0 "#PWR023" H 8700 2950 50  0001 C CNN
F 1 "+5V" V 8700 3250 50  0000 L CNN
F 2 "" H 8700 3100 50  0001 C CNN
F 3 "" H 8700 3100 50  0001 C CNN
	1    8700 3100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 3400 8900 3400
Wire Wire Line
	8700 3600 8900 3600
Wire Wire Line
	8700 3900 8900 3900
$Comp
L Device:LED D4
U 1 1 63327BC0
P 9950 4000
F 0 "D4" H 10050 3950 50  0000 C CNN
F 1 "LED" H 9943 3836 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 4000 50  0001 C CNN
F 3 "~" H 9950 4000 50  0001 C CNN
	1    9950 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D9
U 1 1 633284CB
P 10250 4100
F 0 "D9" H 10350 4050 50  0000 C CNN
F 1 "LED" H 10243 3936 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 4100 50  0001 C CNN
F 3 "~" H 10250 4100 50  0001 C CNN
	1    10250 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 4000 9800 4000
Wire Wire Line
	9700 4100 10100 4100
Wire Wire Line
	10100 4000 10500 4000
Wire Wire Line
	10400 4100 10500 4100
$Comp
L Switch:SW_DIP_x08 SW2
U 1 1 633236F9
P 10550 1650
F 0 "SW2" H 10550 2200 50  0000 C CNN
F 1 "INSTANCE" H 10550 1200 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 10550 1650 50  0001 C CNN
F 3 "~" H 10550 1650 50  0001 C CNN
	1    10550 1650
	1    0    0    -1  
$EndComp
Connection ~ 9300 3100
Wire Wire Line
	9300 3100 9850 3100
Wire Wire Line
	10050 3100 11000 3100
Text Label 10150 2400 2    50   ~ 0
PRG
$Comp
L Device:CP_Small C1
U 1 1 635FBF50
P 2700 6900
F 0 "C1" H 2800 7000 50  0000 C CNN
F 1 "100nF" H 2850 6800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2700 6900 50  0001 C CNN
F 3 "~" H 2700 6900 50  0001 C CNN
	1    2700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5450 2700 5450
Wire Wire Line
	1650 5850 2700 5850
Wire Notes Line
	1300 5250 1300 7700
Wire Notes Line
	1300 5250 5700 5250
Wire Notes Line
	5700 7700 5700 5250
Wire Notes Line
	1300 7700 5700 7700
$Comp
L power:GND #PWR014
U 1 1 63724529
P 8150 2700
F 0 "#PWR014" H 8150 2450 50  0001 C CNN
F 1 "GND" V 8150 2500 50  0000 C CNN
F 2 "" H 8150 2700 50  0001 C CNN
F 3 "" H 8150 2700 50  0001 C CNN
	1    8150 2700
	0    1    -1   0   
$EndComp
NoConn ~ -3250 8100
$Comp
L Device:CP_Small C4
U 1 1 6357107B
P 9950 3100
F 0 "C4" V 10000 3200 50  0000 C CNN
F 1 "100nF" V 10000 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9950 3100 50  0001 C CNN
F 3 "~" H 9950 3100 50  0001 C CNN
	1    9950 3100
	0    -1   1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 634C34EB
P 10650 3400
F 0 "R28" V 10700 3300 50  0000 R CNN
F 1 "560R" V 10650 3400 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 3400 50  0001 C CNN
F 3 "~" H 10650 3400 50  0001 C CNN
	1    10650 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 634C3A8E
P 10650 3500
F 0 "R29" V 10700 3400 50  0000 R CNN
F 1 "560R" V 10650 3500 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 3500 50  0001 C CNN
F 3 "~" H 10650 3500 50  0001 C CNN
	1    10650 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 634C3E87
P 10650 3600
F 0 "R30" V 10700 3500 50  0000 R CNN
F 1 "560R" V 10650 3600 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 3600 50  0001 C CNN
F 3 "~" H 10650 3600 50  0001 C CNN
	1    10650 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 634C42EC
P 10650 3700
F 0 "R31" V 10700 3600 50  0000 R CNN
F 1 "560R" V 10650 3700 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 3700 50  0001 C CNN
F 3 "~" H 10650 3700 50  0001 C CNN
	1    10650 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R32
U 1 1 634C469C
P 10650 3800
F 0 "R32" V 10700 3700 50  0000 R CNN
F 1 "560R" V 10650 3800 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 3800 50  0001 C CNN
F 3 "~" H 10650 3800 50  0001 C CNN
	1    10650 3800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R33
U 1 1 634C4AC7
P 10650 3900
F 0 "R33" V 10700 3800 50  0000 R CNN
F 1 "560R" V 10650 3900 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 3900 50  0001 C CNN
F 3 "~" H 10650 3900 50  0001 C CNN
	1    10650 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R34
U 1 1 634C4F7E
P 10650 4000
F 0 "R34" V 10700 3900 50  0000 R CNN
F 1 "560R" V 10650 4000 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 4000 50  0001 C CNN
F 3 "~" H 10650 4000 50  0001 C CNN
	1    10650 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R35
U 1 1 634C53BF
P 10650 4100
F 0 "R35" V 10700 4000 50  0000 R CNN
F 1 "560R" V 10650 4100 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 4100 50  0001 C CNN
F 3 "~" H 10650 4100 50  0001 C CNN
	1    10650 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 3400 11000 3400
Wire Wire Line
	11000 4100 10800 4100
Wire Wire Line
	11000 3100 11000 3400
Wire Wire Line
	10800 3500 11000 3500
Wire Wire Line
	10800 3600 11000 3600
Wire Wire Line
	10800 3700 11000 3700
Wire Wire Line
	10800 3800 11000 3800
Wire Wire Line
	10800 3900 11000 3900
Wire Wire Line
	10800 4000 11000 4000
$Comp
L Device:R R38
U 1 1 638A66B7
P 2100 6950
F 0 "R38" H 2250 7100 50  0000 R CNN
F 1 "2K2 0.125W" V 2100 6950 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 6950 50  0001 C CNN
F 3 "~" H 2100 6950 50  0001 C CNN
	1    2100 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 638A701E
P 2100 7450
F 0 "R39" H 2100 7300 50  0000 R CNN
F 1 "3K3 0.125W" V 2100 7450 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 7450 50  0001 C CNN
F 3 "~" H 2100 7450 50  0001 C CNN
	1    2100 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 6800 2100 6650
Wire Wire Line
	2100 6650 3050 6650
Wire Wire Line
	2100 7100 2100 7150
Wire Wire Line
	1350 7150 2100 7150
Connection ~ 2100 7150
Wire Wire Line
	2100 7150 2100 7300
$Comp
L Device:R R36
U 1 1 638DB685
P 1900 6950
F 0 "R36" H 1900 7100 50  0000 L CNN
F 1 "2K2 0.125W" V 1900 6950 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1830 6950 50  0001 C CNN
F 3 "~" H 1900 6950 50  0001 C CNN
	1    1900 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 638DBDD6
P 1900 7450
F 0 "R37" H 1750 7300 50  0000 L CNN
F 1 "3K3 0.125W" V 1900 7450 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1830 7450 50  0001 C CNN
F 3 "~" H 1900 7450 50  0001 C CNN
	1    1900 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 7100 1900 7250
Wire Wire Line
	1900 7250 1350 7250
Connection ~ 1900 7250
Wire Wire Line
	1900 7250 1900 7300
Wire Wire Line
	1900 6800 1900 6750
Wire Wire Line
	1900 6750 3050 6750
Wire Wire Line
	10350 2400 10250 2400
Wire Wire Line
	11000 2700 8850 2700
Connection ~ 2100 7600
Wire Wire Line
	2100 7600 2300 7600
Wire Wire Line
	1650 7600 1900 7600
Connection ~ 1900 7600
Wire Wire Line
	1900 7600 2100 7600
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 638DE6DD
P 10550 2500
F 0 "SW1" H 10550 2750 50  0000 C CNN
F 1 "PRG" H 10550 2500 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 10550 2800 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 10550 2800 50  0001 C CNN
	1    10550 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D18
U 1 1 6399F1CF
P 9950 5100
F 0 "D18" H 10050 5050 50  0000 C CNN
F 1 "LED" H 9943 4936 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 5100 50  0001 C CNN
F 3 "~" H 9950 5100 50  0001 C CNN
	1    9950 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D22
U 1 1 6399F1D5
P 10250 5200
F 0 "D22" H 10350 5150 50  0000 C CNN
F 1 "LED" H 10243 5036 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 5200 50  0001 C CNN
F 3 "~" H 10250 5200 50  0001 C CNN
	1    10250 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D19
U 1 1 6399F1DB
P 9950 5300
F 0 "D19" H 10050 5250 50  0000 C CNN
F 1 "LED" H 9943 5136 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 5300 50  0001 C CNN
F 3 "~" H 9950 5300 50  0001 C CNN
	1    9950 5300
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D23
U 1 1 6399F1E1
P 10250 5400
F 0 "D23" H 10350 5350 50  0000 C CNN
F 1 "LED" H 10243 5236 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 5400 50  0001 C CNN
F 3 "~" H 10250 5400 50  0001 C CNN
	1    10250 5400
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 6399F1E7
P 9300 5500
F 0 "U3" H 9550 6050 50  0000 C CNN
F 1 "74HCT595" H 9500 4850 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 9300 5500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 9300 5500 50  0001 C CNN
	1    9300 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D20
U 1 1 6399F1ED
P 9950 5500
F 0 "D20" H 10050 5450 50  0000 C CNN
F 1 "LED" H 9943 5336 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 5500 50  0001 C CNN
F 3 "~" H 9950 5500 50  0001 C CNN
	1    9950 5500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D24
U 1 1 6399F1F3
P 10250 5600
F 0 "D24" H 10350 5550 50  0000 C CNN
F 1 "LED" H 10243 5436 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 5600 50  0001 C CNN
F 3 "~" H 10250 5600 50  0001 C CNN
	1    10250 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 5100 9800 5100
Wire Wire Line
	9700 5200 10100 5200
Wire Wire Line
	9700 5300 9800 5300
Wire Wire Line
	9700 5400 10100 5400
Wire Wire Line
	9700 5500 9800 5500
Wire Wire Line
	9700 5600 10100 5600
Wire Wire Line
	10100 5100 10500 5100
Wire Wire Line
	10400 5200 10500 5200
Wire Wire Line
	10100 5300 10500 5300
Wire Wire Line
	10400 5400 10500 5400
Wire Wire Line
	10100 5500 10500 5500
Wire Wire Line
	10400 5600 10500 5600
NoConn ~ 9700 6000
Text Label 8700 5300 2    50   ~ 0
LED_CLOCK
Text Label 8700 5600 2    50   ~ 0
LED_LATCH
Wire Wire Line
	9300 6200 9300 6300
Wire Wire Line
	9300 6300 8800 6300
Wire Wire Line
	8800 6300 8800 5700
Wire Wire Line
	8800 5700 8900 5700
Wire Wire Line
	8800 6300 8700 6300
Connection ~ 8800 6300
$Comp
L power:GND #PWR0101
U 1 1 6399F20F
P 8700 6300
F 0 "#PWR0101" H 8700 6050 50  0001 C CNN
F 1 "GND" V 8700 6100 50  0000 C CNN
F 2 "" H 8700 6300 50  0001 C CNN
F 3 "" H 8700 6300 50  0001 C CNN
	1    8700 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 5400 8800 5400
Wire Wire Line
	8800 5400 8800 4800
Wire Wire Line
	8800 4800 9300 4800
Wire Wire Line
	9300 4800 9300 4900
Wire Wire Line
	8800 4800 8700 4800
Connection ~ 8800 4800
$Comp
L power:+5V #PWR0102
U 1 1 6399F21B
P 8700 4800
F 0 "#PWR0102" H 8700 4650 50  0001 C CNN
F 1 "+5V" V 8700 4950 50  0000 L CNN
F 2 "" H 8700 4800 50  0001 C CNN
F 3 "" H 8700 4800 50  0001 C CNN
	1    8700 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11000 6300 9300 6300
Connection ~ 9300 6300
Wire Wire Line
	8700 5300 8900 5300
Wire Wire Line
	8700 5600 8900 5600
$Comp
L Device:LED D21
U 1 1 6399F226
P 9950 5700
F 0 "D21" H 10050 5650 50  0000 C CNN
F 1 "LED" H 9943 5536 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9950 5700 50  0001 C CNN
F 3 "~" H 9950 5700 50  0001 C CNN
	1    9950 5700
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D25
U 1 1 6399F22C
P 10250 5800
F 0 "D25" H 10350 5750 50  0000 C CNN
F 1 "LED" H 10243 5636 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10250 5800 50  0001 C CNN
F 3 "~" H 10250 5800 50  0001 C CNN
	1    10250 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 5700 9800 5700
Wire Wire Line
	9700 5800 10100 5800
Wire Wire Line
	10100 5700 10500 5700
Wire Wire Line
	10400 5800 10500 5800
Connection ~ 9300 4800
Wire Wire Line
	9300 4800 9850 4800
Wire Wire Line
	10050 4800 11000 4800
$Comp
L Device:CP_Small C2
U 1 1 6399F239
P 9950 4800
F 0 "C2" V 10000 4900 50  0000 C CNN
F 1 "100nF" V 10000 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9950 4800 50  0001 C CNN
F 3 "~" H 9950 4800 50  0001 C CNN
	1    9950 4800
	0    -1   1    0   
$EndComp
$Comp
L Device:R R40
U 1 1 6399F23F
P 10650 5100
F 0 "R40" V 10700 5000 50  0000 R CNN
F 1 "560R" V 10650 5100 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5100 50  0001 C CNN
F 3 "~" H 10650 5100 50  0001 C CNN
	1    10650 5100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R41
U 1 1 6399F245
P 10650 5200
F 0 "R41" V 10700 5100 50  0000 R CNN
F 1 "560R" V 10650 5200 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5200 50  0001 C CNN
F 3 "~" H 10650 5200 50  0001 C CNN
	1    10650 5200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R42
U 1 1 6399F24B
P 10650 5300
F 0 "R42" V 10700 5200 50  0000 R CNN
F 1 "560R" V 10650 5300 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5300 50  0001 C CNN
F 3 "~" H 10650 5300 50  0001 C CNN
	1    10650 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R43
U 1 1 6399F251
P 10650 5400
F 0 "R43" V 10700 5300 50  0000 R CNN
F 1 "560R" V 10650 5400 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5400 50  0001 C CNN
F 3 "~" H 10650 5400 50  0001 C CNN
	1    10650 5400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R44
U 1 1 6399F257
P 10650 5500
F 0 "R44" V 10700 5400 50  0000 R CNN
F 1 "560R" V 10650 5500 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5500 50  0001 C CNN
F 3 "~" H 10650 5500 50  0001 C CNN
	1    10650 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R45
U 1 1 6399F25D
P 10650 5600
F 0 "R45" V 10700 5500 50  0000 R CNN
F 1 "560R" V 10650 5600 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5600 50  0001 C CNN
F 3 "~" H 10650 5600 50  0001 C CNN
	1    10650 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R46
U 1 1 6399F263
P 10650 5700
F 0 "R46" V 10700 5600 50  0000 R CNN
F 1 "560R" V 10650 5700 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5700 50  0001 C CNN
F 3 "~" H 10650 5700 50  0001 C CNN
	1    10650 5700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R47
U 1 1 6399F269
P 10650 5800
F 0 "R47" V 10700 5700 50  0000 R CNN
F 1 "560R" V 10650 5800 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10580 5800 50  0001 C CNN
F 3 "~" H 10650 5800 50  0001 C CNN
	1    10650 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 5100 11000 5100
Wire Wire Line
	11000 5800 10800 5800
Wire Wire Line
	11000 4800 11000 5100
Wire Wire Line
	10800 5200 11000 5200
Wire Wire Line
	10800 5300 11000 5300
Wire Wire Line
	10800 5400 11000 5400
Wire Wire Line
	10800 5500 11000 5500
Wire Wire Line
	10800 5600 11000 5600
Wire Wire Line
	10800 5700 11000 5700
Wire Wire Line
	8700 5100 8900 5100
Connection ~ 11000 5100
Wire Wire Line
	11000 5100 11000 5200
Connection ~ 11000 5200
Wire Wire Line
	11000 5200 11000 5300
Connection ~ 11000 5300
Wire Wire Line
	11000 5300 11000 5400
Connection ~ 11000 5400
Wire Wire Line
	11000 5400 11000 5500
Connection ~ 11000 5500
Wire Wire Line
	11000 5500 11000 5600
Connection ~ 11000 5600
Wire Wire Line
	11000 5600 11000 5700
Connection ~ 11000 5700
Wire Wire Line
	11000 5700 11000 5800
Connection ~ 11000 5800
Wire Wire Line
	11000 5800 11000 6300
Connection ~ 11000 3400
Wire Wire Line
	11000 3400 11000 3500
Connection ~ 11000 3500
Wire Wire Line
	11000 3500 11000 3600
Connection ~ 11000 3600
Wire Wire Line
	11000 3600 11000 3700
Connection ~ 11000 3700
Wire Wire Line
	11000 3700 11000 3800
Connection ~ 11000 3800
Wire Wire Line
	11000 3800 11000 3900
Connection ~ 11000 3900
Wire Wire Line
	11000 3900 11000 4000
Connection ~ 11000 4000
Wire Wire Line
	11000 4000 11000 4100
Connection ~ 11000 4100
Wire Wire Line
	11000 4100 11000 4600
Text Label 9700 4300 0    50   ~ 0
LED_SER
Text Label 8700 5100 2    50   ~ 0
LED_SER
$Comp
L Device:CP_Small C3
U 1 1 634CCFDB
P 1750 3250
F 0 "C3" V 1800 3350 50  0000 C CNN
F 1 "100nF" V 1800 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1750 3250 50  0001 C CNN
F 3 "~" H 1750 3250 50  0001 C CNN
	1    1750 3250
	0    -1   1    0   
$EndComp
Text Label 1200 1800 2    50   ~ 0
TRANSMIT_LED
Text Label 4950 750  2    50   ~ 0
TRANSMIT_LED
Wire Wire Line
	5050 750  4950 750 
$Comp
L Device:R R3
U 1 1 63493E4A
P 5500 750
F 0 "R3" V 5550 650 50  0000 R CNN
F 1 "560R" V 5500 750 39  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5430 750 50  0001 C CNN
F 3 "~" H 5500 750 50  0001 C CNN
	1    5500 750 
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 6348B352
P 5200 750
F 0 "D5" H 5300 700 50  0000 C CNN
F 1 "LED" H 5193 586 50  0001 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 5200 750 50  0001 C CNN
F 3 "~" H 5200 750 50  0001 C CNN
	1    5200 750 
	-1   0    0    1   
$EndComp
NoConn ~ 1200 1600
Text Label 1200 1700 2    50   ~ 0
PRG
Text Label 2300 2600 0    50   ~ 0
LED_CLOCK
Text Label 2300 2800 0    50   ~ 0
LED_DATA
Text Label 2300 2700 0    50   ~ 0
LED_LATCH
Text Label 1200 2000 2    50   ~ 0
D17
Text Label 1200 2100 2    50   ~ 0
D18
Text Label 1200 2200 2    50   ~ 0
D19
Text Label 1200 2300 2    50   ~ 0
D20
Text Label 1200 2400 2    50   ~ 0
D21
Text Label 1200 2500 2    50   ~ 0
D22
Text Label 1200 2600 2    50   ~ 0
D23
NoConn ~ 1550 1400
NoConn ~ 1650 1400
NoConn ~ 1750 1400
$Comp
L pdjr:Teensy_3.2 U5
U 1 1 60F2AB82
P 2300 2900
F 0 "U5" H 2450 1350 50  0000 C CNN
F 1 "Teensy_4.0" H 2600 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_LongPads" H 2300 2900 50  0001 C CNN
F 3 "" H 2300 2900 50  0001 C CNN
	1    2300 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 2900 1100 3250
Connection ~ 2400 3250
Wire Wire Line
	2400 3300 2400 3250
$Comp
L power:GND #PWR027
U 1 1 6096FBD9
P 2400 3300
F 0 "#PWR027" H 2400 3050 50  0001 C CNN
F 1 "GND" H 2405 3127 50  0000 C CNN
F 2 "" H 2400 3300 50  0001 C CNN
F 3 "" H 2400 3300 50  0001 C CNN
	1    2400 3300
	1    0    0    -1  
$EndComp
Connection ~ 1100 3250
Wire Wire Line
	1100 3300 1100 3250
$Comp
L power:+5V #PWR026
U 1 1 6336012B
P 1100 3300
F 0 "#PWR026" H 1100 3150 50  0001 C CNN
F 1 "+5V" H 1115 3473 50  0000 C CNN
F 2 "" H 1100 3300 50  0001 C CNN
F 3 "" H 1100 3300 50  0001 C CNN
	1    1100 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6336012A
P 900 3300
F 0 "#PWR025" H 900 3050 50  0001 C CNN
F 1 "GND" H 905 3127 50  0000 C CNN
F 2 "" H 900 3300 50  0001 C CNN
F 3 "" H 900 3300 50  0001 C CNN
	1    900  3300
	1    0    0    -1  
$EndComp
Text Label 2300 2500 0    50   ~ 0
CAN_TX
Text Label 2300 2400 0    50   ~ 0
CAN_RX
Wire Wire Line
	2400 2900 2300 2900
Wire Wire Line
	2400 3250 2400 2900
Wire Wire Line
	1100 3250 1650 3250
Wire Wire Line
	1200 2900 1100 2900
Wire Wire Line
	900  2800 900  3300
Wire Wire Line
	1200 2800 900  2800
Wire Wire Line
	1850 3250 2400 3250
$Comp
L Device:CP_Small C5
U 1 1 638ECFDF
P 2700 5650
F 0 "C5" H 2800 5750 50  0000 C CNN
F 1 "100nF" H 2850 5550 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2700 5650 50  0001 C CNN
F 3 "~" H 2700 5650 50  0001 C CNN
	1    2700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5550 2700 5450
Connection ~ 2700 5450
Wire Wire Line
	2700 5450 3050 5450
Wire Wire Line
	2700 5750 2700 5850
Connection ~ 2700 5850
Wire Wire Line
	2700 5850 3050 5850
Wire Wire Line
	2700 6800 2700 6350
Wire Wire Line
	2300 7600 2700 7600
Wire Wire Line
	2700 7000 2700 7600
Connection ~ 2700 7600
Wire Wire Line
	2700 7600 3550 7600
Wire Wire Line
	2300 7050 3050 7050
Wire Wire Line
	2100 6650 1350 6650
Connection ~ 2100 6650
Wire Wire Line
	1900 6750 1350 6750
Connection ~ 1900 6750
Text Label 1350 6650 0    50   ~ 0
CAN_TX_3V3
Text Label 1350 6750 0    50   ~ 0
CAN_RX_3V3
Wire Wire Line
	5050 5550 4250 5550
Wire Wire Line
	4250 5550 4250 5850
Wire Wire Line
	4550 5450 5050 5450
Wire Wire Line
	5050 5750 4450 5750
Wire Wire Line
	4450 5750 4450 6950
Wire Wire Line
	4350 5650 5050 5650
Wire Wire Line
	4350 5650 4350 6750
Text Notes 5300 5500 0    50   ~ 0
NET_S
Text Notes 5300 5600 0    50   ~ 0
NET_C
Text Notes 5300 5700 0    50   ~ 0
CAN_H
Text Notes 5300 5800 0    50   ~ 0
CAN_L
Text Notes 5300 5900 0    50   ~ 0
CAN_SCR
Wire Wire Line
	5300 5250 5350 5250
$Comp
L pdjr:TMR-2-2411 U2
U 1 1 63A71732
P 3550 5650
F 0 "U2" H 3550 6117 50  0000 C CNN
F 1 "TMR-2-2411" H 3550 6026 50  0000 C CNN
F 2 "PDJR_DC-DC_Converters:TMR_2411" H 3550 5300 50  0001 C CNN
F 3 "" H 3550 5150 50  0001 C CNN
	1    3550 5650
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 639236D5
P 900 2700
F 0 "#PWR0103" H 900 2550 50  0001 C CNN
F 1 "+3V3" H 915 2873 50  0000 C CNN
F 2 "" H 900 2700 50  0001 C CNN
F 3 "" H 900 2700 50  0001 C CNN
	1    900  2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2700 900  2700
Text Label 1200 1900 2    50   ~ 0
D16
NoConn ~ 1200 1900
NoConn ~ 1200 2000
NoConn ~ 1200 2100
NoConn ~ 1200 2200
NoConn ~ 1200 2300
NoConn ~ 1200 2400
NoConn ~ 1200 2500
NoConn ~ 1200 2600
Wire Wire Line
	10350 2500 10250 2500
Wire Wire Line
	10250 2500 10250 2400
Connection ~ 10250 2400
Wire Wire Line
	10250 2400 10150 2400
Wire Wire Line
	8350 1150 8150 1150
Wire Wire Line
	8850 750  8150 750 
Wire Wire Line
	11000 1950 10850 1950
Wire Wire Line
	11000 1950 11000 1850
Wire Wire Line
	11000 1850 10850 1850
Connection ~ 11000 1950
Wire Wire Line
	11000 1850 11000 1750
Wire Wire Line
	11000 1750 10850 1750
Connection ~ 11000 1850
Wire Wire Line
	11000 1750 11000 1650
Wire Wire Line
	11000 1650 10850 1650
Connection ~ 11000 1750
Wire Wire Line
	11000 1650 11000 1550
Wire Wire Line
	11000 1550 10850 1550
Connection ~ 11000 1650
Wire Wire Line
	11000 1550 11000 1450
Wire Wire Line
	11000 1450 10850 1450
Connection ~ 11000 1550
Wire Wire Line
	11000 1450 11000 1350
Wire Wire Line
	11000 1350 10850 1350
Connection ~ 11000 1450
Wire Wire Line
	11000 1350 11000 1250
Wire Wire Line
	11000 1250 10850 1250
Connection ~ 11000 1350
$Comp
L Device:CP_Small C101
U 1 1 63C82001
P 10550 750
F 0 "C101" V 10600 900 50  0000 C CNN
F 1 "100nF" V 10600 600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10550 750 50  0001 C CNN
F 3 "~" H 10550 750 50  0001 C CNN
	1    10550 750 
	0    -1   1    0   
$EndComp
Wire Wire Line
	11000 1250 11000 750 
Connection ~ 11000 1250
Wire Wire Line
	10450 750  10150 750 
Connection ~ 8850 750 
Wire Wire Line
	8850 750  8850 850 
$Comp
L pdjr:74LS165 U101
U 1 1 63F7C7A4
P 8850 1750
F 0 "U101" H 9100 2500 50  0000 C CNN
F 1 "74LS165" H 8550 2500 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 8850 1750 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74ls165a.pdf" H 8850 1750 50  0001 C CNN
	1    8850 1750
	-1   0    0    -1  
$EndComp
Text Label 8150 1650 2    50   ~ 0
INSTANCE_CP
Text Label 8150 1150 2    50   ~ 0
INSTANCE_Q7
Wire Wire Line
	8350 1650 8150 1650
Text Label 8150 1750 2    50   ~ 0
INSTANCE_CE
Wire Wire Line
	8350 1750 8150 1750
Text Label 8150 1450 2    50   ~ 0
INSTANCE_PL
Wire Wire Line
	8350 1450 8150 1450
Text Label 2300 1700 0    50   ~ 0
INSTANCE_PL
Text Label 2300 1600 0    50   ~ 0
INSTANCE_CP
Text Label 2300 1800 0    50   ~ 0
INSTANCE_Q7
Text Label 2300 1900 0    50   ~ 0
INSTANCE_CE
Text Label 2300 2000 0    50   ~ 0
D8
Text Label 2300 2100 0    50   ~ 0
D7
Text Label 2300 2200 0    50   ~ 0
D6
Text Label 2300 2300 0    50   ~ 0
D5
$Comp
L Device:R R102
U 1 1 6394A88D
P 9550 1000
F 0 "R102" V 9500 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 9550 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9480 1000 50  0001 C CNN
F 3 "~" H 9550 1000 50  0001 C CNN
	1    9550 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R103
U 1 1 6394F8BB
P 9650 1000
F 0 "R103" V 9600 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 9650 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9580 1000 50  0001 C CNN
F 3 "~" H 9650 1000 50  0001 C CNN
	1    9650 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R104
U 1 1 6395000A
P 9750 1000
F 0 "R104" V 9700 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 9750 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9680 1000 50  0001 C CNN
F 3 "~" H 9750 1000 50  0001 C CNN
	1    9750 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R105
U 1 1 63950611
P 9850 1000
F 0 "R105" V 9800 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 9850 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9780 1000 50  0001 C CNN
F 3 "~" H 9850 1000 50  0001 C CNN
	1    9850 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R106
U 1 1 63950BCD
P 9950 1000
F 0 "R106" V 9900 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 9950 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9880 1000 50  0001 C CNN
F 3 "~" H 9950 1000 50  0001 C CNN
	1    9950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R107
U 1 1 639511BB
P 10050 1000
F 0 "R107" V 10000 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 10050 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9980 1000 50  0001 C CNN
F 3 "~" H 10050 1000 50  0001 C CNN
	1    10050 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R108
U 1 1 63951797
P 10150 1000
F 0 "R108" V 10100 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 10150 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 10080 1000 50  0001 C CNN
F 3 "~" H 10150 1000 50  0001 C CNN
	1    10150 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1150 10150 1250
Wire Wire Line
	10050 1350 10050 1150
Wire Wire Line
	9950 1450 9950 1150
Wire Wire Line
	9850 1550 9850 1150
Wire Wire Line
	9350 1950 9450 1950
Wire Wire Line
	9350 1850 9550 1850
Wire Wire Line
	9350 1750 9650 1750
Wire Wire Line
	9350 1650 9750 1650
$Comp
L Device:R R101
U 1 1 63B2611A
P 9450 1000
F 0 "R101" V 9400 1300 50  0000 R CNN
F 1 "4K7 0.125W" V 9450 1000 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9380 1000 50  0001 C CNN
F 3 "~" H 9450 1000 50  0001 C CNN
	1    9450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2700 8850 2250
Wire Wire Line
	10650 750  11000 750 
$Comp
L power:+5V #PWR0105
U 1 1 63D83162
P 8150 750
F 0 "#PWR0105" H 8150 600 50  0001 C CNN
F 1 "+5V" V 8150 900 50  0000 L CNN
F 2 "" H 8150 750 50  0001 C CNN
F 3 "" H 8150 750 50  0001 C CNN
	1    8150 750 
	0    -1   -1   0   
$EndComp
Connection ~ 9450 1950
Wire Wire Line
	9350 1250 10150 1250
Wire Wire Line
	9450 1150 9450 1950
Connection ~ 9550 1850
Wire Wire Line
	9350 1350 10050 1350
Wire Wire Line
	9550 1150 9550 1850
Connection ~ 9650 1750
Wire Wire Line
	9350 1450 9950 1450
Wire Wire Line
	9650 1150 9650 1750
Connection ~ 9750 1650
Wire Wire Line
	9350 1550 9850 1550
Wire Wire Line
	9750 1150 9750 1650
Connection ~ 9850 1550
Wire Wire Line
	9850 1550 10250 1550
Wire Wire Line
	9750 1650 10250 1650
Connection ~ 9950 1450
Wire Wire Line
	9950 1450 10250 1450
Wire Wire Line
	9650 1750 10250 1750
Connection ~ 10050 1350
Wire Wire Line
	10050 1350 10250 1350
Wire Wire Line
	9550 1850 10250 1850
Connection ~ 10150 1250
Wire Wire Line
	10150 1250 10250 1250
Wire Wire Line
	9450 1950 10250 1950
Wire Wire Line
	9450 850  9450 750 
Connection ~ 9450 750 
Wire Wire Line
	9450 750  8850 750 
Wire Wire Line
	9550 850  9550 750 
Connection ~ 9550 750 
Wire Wire Line
	9550 750  9450 750 
Wire Wire Line
	9650 850  9650 750 
Connection ~ 9650 750 
Wire Wire Line
	9650 750  9550 750 
Wire Wire Line
	9750 850  9750 750 
Connection ~ 9750 750 
Wire Wire Line
	9750 750  9650 750 
Wire Wire Line
	9850 850  9850 750 
Connection ~ 9850 750 
Wire Wire Line
	9850 750  9750 750 
Wire Wire Line
	9950 850  9950 750 
Connection ~ 9950 750 
Wire Wire Line
	9950 750  9850 750 
Wire Wire Line
	10050 850  10050 750 
Connection ~ 10050 750 
Wire Wire Line
	10050 750  9950 750 
Wire Wire Line
	10150 850  10150 750 
Connection ~ 10150 750 
Wire Wire Line
	10150 750  10050 750 
NoConn ~ 2300 2000
NoConn ~ 2300 2100
NoConn ~ 2300 2200
NoConn ~ 2300 2300
Wire Wire Line
	9300 4600 11000 4600
Wire Wire Line
	11000 4800 11000 4600
Connection ~ 11000 4800
Wire Wire Line
	9300 4600 8800 4600
Connection ~ 9300 4600
Connection ~ 8800 4600
Connection ~ 11000 2500
Wire Wire Line
	11000 2500 11000 2700
Wire Wire Line
	11000 1950 11000 2400
Connection ~ 11000 2400
Wire Wire Line
	11000 2400 11000 2500
Wire Wire Line
	10750 2400 11000 2400
Wire Wire Line
	10750 2500 11000 2500
Connection ~ 8850 2700
Wire Wire Line
	8850 2700 8150 2700
Connection ~ 3550 7600
Wire Wire Line
	4350 6750 4550 6750
Connection ~ 4350 6750
Wire Wire Line
	4850 6750 4950 6750
Wire Wire Line
	4050 6750 4350 6750
Wire Wire Line
	5650 6950 5650 6750
Wire Wire Line
	5650 6750 5550 6750
Wire Wire Line
	4450 6950 5650 6950
Connection ~ 4450 6950
Wire Wire Line
	4050 6950 4450 6950
Wire Wire Line
	4850 5850 4850 6650
Wire Wire Line
	4850 6650 4950 6650
Wire Wire Line
	4850 5850 5050 5850
Wire Wire Line
	5550 6650 5750 6650
Wire Wire Line
	5750 6650 5750 7600
Wire Wire Line
	3550 7600 5750 7600
Connection ~ 11000 4600
$Comp
L power:GND #PWR0104
U 1 1 63BB85EE
P 5900 750
F 0 "#PWR0104" H 5900 500 50  0001 C CNN
F 1 "GND" V 5900 550 50  0000 C CNN
F 2 "" H 5900 750 50  0001 C CNN
F 3 "" H 5900 750 50  0001 C CNN
	1    5900 750 
	0    -1   1    0   
$EndComp
NoConn ~ 8350 1250
NoConn ~ 8350 1950
Wire Wire Line
	5650 750  5900 750 
$EndSCHEMATC
