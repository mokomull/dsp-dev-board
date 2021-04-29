EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4300 7050 2    50   ~ 0
SWDIO
Text Label 4300 6850 2    50   ~ 0
SWCLK
Text Label 4300 7250 2    50   ~ 0
TRACESWO
Wire Wire Line
	4300 6850 4400 6850
Wire Wire Line
	4300 7250 4400 7250
Wire Wire Line
	4300 7050 4400 7050
Wire Wire Line
	4300 7150 4400 7150
$Comp
L power:GND #PWR018
U 1 1 60166405
P 3750 6950
F 0 "#PWR018" H 3750 6700 50  0001 C CNN
F 1 "GND" H 3755 6777 50  0000 C CNN
F 2 "" H 3750 6950 50  0001 C CNN
F 3 "" H 3750 6950 50  0001 C CNN
	1    3750 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 60087CEC
P 5350 2300
F 0 "C7" H 5465 2346 50  0000 L CNN
F 1 "100n" H 5465 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5388 2150 50  0001 C CNN
F 3 "~" H 5350 2300 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60089379
P 5350 2550
F 0 "#PWR020" H 5350 2300 50  0001 C CNN
F 1 "GND" H 5355 2377 50  0000 C CNN
F 2 "" H 5350 2550 50  0001 C CNN
F 3 "" H 5350 2550 50  0001 C CNN
	1    5350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2550 5350 2500
$Comp
L Device:C C11
U 1 1 6008AD87
P 5800 2300
F 0 "C11" H 5915 2346 50  0000 L CNN
F 1 "100n" H 5915 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 2150 50  0001 C CNN
F 3 "~" H 5800 2300 50  0001 C CNN
	1    5800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 6008BC6A
P 6250 2300
F 0 "C14" H 6365 2346 50  0000 L CNN
F 1 "100n" H 6365 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6288 2150 50  0001 C CNN
F 3 "~" H 6250 2300 50  0001 C CNN
	1    6250 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 6008CAA6
P 6700 2300
F 0 "C16" H 6815 2346 50  0000 L CNN
F 1 "100n" H 6815 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6738 2150 50  0001 C CNN
F 3 "~" H 6700 2300 50  0001 C CNN
	1    6700 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 6008D87B
P 7150 2300
F 0 "C18" H 7265 2346 50  0000 L CNN
F 1 "100n" H 7265 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7188 2150 50  0001 C CNN
F 3 "~" H 7150 2300 50  0001 C CNN
	1    7150 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2500 5800 2500
Wire Wire Line
	5800 2500 5800 2450
Connection ~ 5350 2500
Wire Wire Line
	5350 2500 5350 2450
Wire Wire Line
	5800 2500 6250 2500
Wire Wire Line
	6250 2500 6250 2450
Connection ~ 5800 2500
Wire Wire Line
	6250 2500 6700 2500
Wire Wire Line
	6700 2500 6700 2450
Connection ~ 6250 2500
Wire Wire Line
	6700 2500 7150 2500
Wire Wire Line
	7150 2500 7150 2450
Connection ~ 6700 2500
Text GLabel 5350 2000 1    50   Input ~ 0
3.3V
Wire Wire Line
	5350 2000 5350 2100
Wire Wire Line
	5350 2100 5800 2100
Wire Wire Line
	5800 2100 5800 2150
Connection ~ 5350 2100
Wire Wire Line
	5350 2100 5350 2150
Wire Wire Line
	5800 2100 6250 2100
Wire Wire Line
	6250 2100 6250 2150
Connection ~ 5800 2100
Wire Wire Line
	6250 2100 6700 2100
Wire Wire Line
	6700 2100 6700 2150
Connection ~ 6250 2100
Wire Wire Line
	6700 2100 7150 2100
Wire Wire Line
	7150 2100 7150 2150
Connection ~ 6700 2100
$Comp
L Device:C C8
U 1 1 600AC578
P 5350 3350
F 0 "C8" H 5465 3396 50  0000 L CNN
F 1 "10u" H 5465 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5388 3200 50  0001 C CNN
F 3 "~" H 5350 3350 50  0001 C CNN
	1    5350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 600AC57E
P 5350 3600
F 0 "#PWR021" H 5350 3350 50  0001 C CNN
F 1 "GND" H 5355 3427 50  0000 C CNN
F 2 "" H 5350 3600 50  0001 C CNN
F 3 "" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3600 5350 3550
$Comp
L Device:C C12
U 1 1 600AC585
P 5800 3350
F 0 "C12" H 5915 3396 50  0000 L CNN
F 1 "10u" H 5915 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5838 3200 50  0001 C CNN
F 3 "~" H 5800 3350 50  0001 C CNN
	1    5800 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 600AC58B
P 6250 3350
F 0 "C15" H 6365 3396 50  0000 L CNN
F 1 "10u" H 6365 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6288 3200 50  0001 C CNN
F 3 "~" H 6250 3350 50  0001 C CNN
	1    6250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3550 5800 3550
Wire Wire Line
	5800 3550 5800 3500
Connection ~ 5350 3550
Wire Wire Line
	5350 3550 5350 3500
Wire Wire Line
	5800 3550 6250 3550
Wire Wire Line
	6250 3550 6250 3500
Connection ~ 5800 3550
Text GLabel 5350 3050 1    50   Input ~ 0
3.3V
Wire Wire Line
	5350 3050 5350 3150
Wire Wire Line
	5350 3150 5800 3150
Wire Wire Line
	5800 3150 5800 3200
Connection ~ 5350 3150
Wire Wire Line
	5350 3150 5350 3200
Wire Wire Line
	5800 3150 6250 3150
Wire Wire Line
	6250 3150 6250 3200
Connection ~ 5800 3150
$Comp
L Device:C C9
U 1 1 600EA749
P 5350 6900
F 0 "C9" H 5465 6946 50  0000 L CNN
F 1 "20pf" H 5465 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5388 6750 50  0001 C CNN
F 3 "~" H 5350 6900 50  0001 C CNN
	1    5350 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 600EB2AF
P 6100 6900
F 0 "C13" H 6215 6946 50  0000 L CNN
F 1 "20pf" H 6215 6855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6138 6750 50  0001 C CNN
F 3 "~" H 6100 6900 50  0001 C CNN
	1    6100 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 6750 6100 6600
Wire Wire Line
	6100 6600 5900 6600
Wire Wire Line
	5350 6750 5350 6600
Wire Wire Line
	5350 6600 5600 6600
Wire Wire Line
	5350 7050 5350 7150
Wire Wire Line
	5350 7150 5750 7150
Wire Wire Line
	6100 7150 6100 7050
$Comp
L power:GND #PWR024
U 1 1 600F5882
P 5750 7150
F 0 "#PWR024" H 5750 6900 50  0001 C CNN
F 1 "GND" H 5755 6977 50  0000 C CNN
F 2 "" H 5750 7150 50  0001 C CNN
F 3 "" H 5750 7150 50  0001 C CNN
	1    5750 7150
	1    0    0    -1  
$EndComp
Connection ~ 5750 7150
Wire Wire Line
	5750 7150 6100 7150
Wire Wire Line
	5350 6600 5350 6150
Connection ~ 5350 6600
Wire Wire Line
	6100 6600 6100 6150
Connection ~ 6100 6600
Text Label 6100 6150 0    50   ~ 0
osc_out
Text Label 5350 6150 0    50   ~ 0
osc_in
$Comp
L Device:LED D5
U 1 1 601FF073
P 10400 3950
F 0 "D5" H 10393 3695 50  0000 C CNN
F 1 "LED" H 10393 3786 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10400 3950 50  0001 C CNN
F 3 "~" H 10400 3950 50  0001 C CNN
	1    10400 3950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR036
U 1 1 601FFB05
P 10700 4050
F 0 "#PWR036" H 10700 3800 50  0001 C CNN
F 1 "GND" H 10705 3877 50  0000 C CNN
F 2 "" H 10700 4050 50  0001 C CNN
F 3 "" H 10700 4050 50  0001 C CNN
	1    10700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 4050 10700 3950
Wire Wire Line
	10700 3950 10550 3950
$Comp
L Device:R R15
U 1 1 60213E93
P 10000 3950
F 0 "R15" V 9793 3950 50  0000 C CNN
F 1 "120" V 9884 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9930 3950 50  0001 C CNN
F 3 "~" H 10000 3950 50  0001 C CNN
	1    10000 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 3950 10250 3950
Text Label 9750 3950 2    50   ~ 0
led1
Wire Wire Line
	9750 3950 9850 3950
$Comp
L Device:LED D6
U 1 1 6022517D
P 10450 4600
F 0 "D6" H 10443 4345 50  0000 C CNN
F 1 "LED" H 10443 4436 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10450 4600 50  0001 C CNN
F 3 "~" H 10450 4600 50  0001 C CNN
	1    10450 4600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR037
U 1 1 60225183
P 10750 4700
F 0 "#PWR037" H 10750 4450 50  0001 C CNN
F 1 "GND" H 10755 4527 50  0000 C CNN
F 2 "" H 10750 4700 50  0001 C CNN
F 3 "" H 10750 4700 50  0001 C CNN
	1    10750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 4700 10750 4600
Wire Wire Line
	10750 4600 10600 4600
$Comp
L Device:R R16
U 1 1 6022518B
P 10050 4600
F 0 "R16" V 9843 4600 50  0000 C CNN
F 1 "120" V 9934 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9980 4600 50  0001 C CNN
F 3 "~" H 10050 4600 50  0001 C CNN
	1    10050 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 4600 10300 4600
Text Label 9800 4600 2    50   ~ 0
led2
Wire Wire Line
	9800 4600 9900 4600
$Comp
L Device:LED D7
U 1 1 6022CDB1
P 10450 5250
F 0 "D7" H 10443 4995 50  0000 C CNN
F 1 "LED" H 10443 5086 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10450 5250 50  0001 C CNN
F 3 "~" H 10450 5250 50  0001 C CNN
	1    10450 5250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR038
U 1 1 6022CDB7
P 10750 5350
F 0 "#PWR038" H 10750 5100 50  0001 C CNN
F 1 "GND" H 10755 5177 50  0000 C CNN
F 2 "" H 10750 5350 50  0001 C CNN
F 3 "" H 10750 5350 50  0001 C CNN
	1    10750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 5350 10750 5250
Wire Wire Line
	10750 5250 10600 5250
$Comp
L Device:R R17
U 1 1 6022CDBF
P 10050 5250
F 0 "R17" V 9843 5250 50  0000 C CNN
F 1 "120" V 9934 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9980 5250 50  0001 C CNN
F 3 "~" H 10050 5250 50  0001 C CNN
	1    10050 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 5250 10300 5250
Text Label 9800 5250 2    50   ~ 0
led3
Wire Wire Line
	9800 5250 9900 5250
$Comp
L Device:LED D8
U 1 1 60234D57
P 10450 5900
F 0 "D8" H 10443 5645 50  0000 C CNN
F 1 "LED" H 10443 5736 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 10450 5900 50  0001 C CNN
F 3 "~" H 10450 5900 50  0001 C CNN
	1    10450 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR039
U 1 1 60234D5D
P 10750 6000
F 0 "#PWR039" H 10750 5750 50  0001 C CNN
F 1 "GND" H 10755 5827 50  0000 C CNN
F 2 "" H 10750 6000 50  0001 C CNN
F 3 "" H 10750 6000 50  0001 C CNN
	1    10750 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 6000 10750 5900
Wire Wire Line
	10750 5900 10600 5900
$Comp
L Device:R R18
U 1 1 60234D65
P 10050 5900
F 0 "R18" V 9843 5900 50  0000 C CNN
F 1 "120" V 9934 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9980 5900 50  0001 C CNN
F 3 "~" H 10050 5900 50  0001 C CNN
	1    10050 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 5900 10300 5900
Text Label 9800 5900 2    50   ~ 0
led4
Wire Wire Line
	9800 5900 9900 5900
Text GLabel 8000 4000 2    50   Output ~ 0
VBUS
Wire Wire Line
	7800 4200 7800 4000
Wire Wire Line
	7800 4000 8000 4000
$Comp
L Device:R R14
U 1 1 60234B64
P 7800 4700
F 0 "R14" H 7870 4746 50  0000 L CNN
F 1 "1M" H 7870 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 4700 50  0001 C CNN
F 3 "~" H 7800 4700 50  0001 C CNN
	1    7800 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6023573F
P 7800 4950
F 0 "#PWR027" H 7800 4700 50  0001 C CNN
F 1 "GND" H 7805 4777 50  0000 C CNN
F 2 "" H 7800 4950 50  0001 C CNN
F 3 "" H 7800 4950 50  0001 C CNN
	1    7800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4950 7800 4850
Wire Wire Line
	7800 4550 7800 4200
Connection ~ 7800 4200
Text GLabel 1300 4250 1    50   Input ~ 0
3.3V
Text Label 7850 6200 2    50   ~ 0
NRST
Text GLabel 8650 5800 2    50   Input ~ 0
3.3V
Wire Wire Line
	3750 6950 4400 6950
Text Label 4300 7150 2    50   ~ 0
NRST
NoConn ~ 4400 6750
$Comp
L Connector_Generic:Conn_01x06 J9
U 1 1 603F4BC1
P 4600 6950
F 0 "J9" H 4680 6942 50  0000 L CNN
F 1 "debug" H 4680 6851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4600 6950 50  0001 C CNN
F 3 "~" H 4600 6950 50  0001 C CNN
	1    4600 6950
	1    0    0    -1  
$EndComp
Text HLabel 9700 2200 0    50   Input ~ 0
I2Sext_SD
Text HLabel 9700 2300 0    50   Output ~ 0
I2S_SD
Text HLabel 9700 1700 0    50   Output ~ 0
SCLK
Text HLabel 9700 1500 0    50   Output ~ 0
~CSB
Text HLabel 9700 2400 0    50   Input ~ 0
WCLK
Text HLabel 9700 2100 0    50   Input ~ 0
BCLK
Text HLabel 9700 2500 0    50   Output ~ 0
I2S2_MCK
$Comp
L Device:Crystal Y1
U 1 1 600E34F2
P 5750 6600
F 0 "Y1" H 5750 6868 50  0000 C CNN
F 1 "8Mhz" H 5750 6777 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 5750 6600 50  0001 C CNN
F 3 "~" H 5750 6600 50  0001 C CNN
	1    5750 6600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J7
U 1 1 605BF3D9
P 4450 2000
F 0 "J7" H 4650 2100 50  0000 C CNN
F 1 "digital" H 4650 2000 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4450 2000 50  0001 C CNN
F 3 "~" H 4450 2000 50  0001 C CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
Text HLabel 2000 2500 0    50   Output ~ 0
I2S2_MCK
Text Label 700  4700 2    50   ~ 0
NRST
$Comp
L Device:R R10
U 1 1 6033844B
P 1300 4500
F 0 "R10" H 1370 4546 50  0000 L CNN
F 1 "10k" H 1370 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1230 4500 50  0001 C CNN
F 3 "~" H 1300 4500 50  0001 C CNN
	1    1300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3200 2100 3200
Text Label 1000 3200 2    50   ~ 0
BOOT0
Wire Wire Line
	1000 3200 1000 3350
Wire Wire Line
	1000 3650 1000 3700
$Comp
L Device:R R11
U 1 1 602B1BCD
P 1000 3500
F 0 "R11" H 1070 3546 50  0000 L CNN
F 1 "10k" H 1070 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 930 3500 50  0001 C CNN
F 3 "~" H 1000 3500 50  0001 C CNN
	1    1000 3500
	1    0    0    -1  
$EndComp
Text Label 2000 4200 2    50   ~ 0
OTG_FS_DP
Text Label 2000 4100 2    50   ~ 0
OTG_FS_DM
Text Label 4000 3200 0    50   ~ 0
led4
Text Label 4000 3100 0    50   ~ 0
led3
Text Label 4000 3000 0    50   ~ 0
led2
Text Label 4000 2900 0    50   ~ 0
led1
Text Label 4000 3600 0    50   ~ 0
osc_out
Wire Wire Line
	4000 3600 3900 3600
$Comp
L power:GND #PWR016
U 1 1 6007ECDF
P 1000 3700
F 0 "#PWR016" H 1000 3450 50  0001 C CNN
F 1 "GND" H 1005 3527 50  0000 C CNN
F 2 "" H 1000 3700 50  0001 C CNN
F 3 "" H 1000 3700 50  0001 C CNN
	1    1000 3700
	1    0    0    -1  
$EndComp
Connection ~ 3200 1150
Wire Wire Line
	2900 1150 3000 1150
Wire Wire Line
	2900 1150 2900 1200
Wire Wire Line
	3000 1150 3100 1150
Connection ~ 3000 1150
Wire Wire Line
	3000 1150 3000 1200
Wire Wire Line
	3100 1150 3200 1150
Connection ~ 3100 1150
Wire Wire Line
	3100 1150 3100 1200
Wire Wire Line
	3200 1150 3200 1200
Text GLabel 3300 1050 1    50   Input ~ 0
3.3V
Text HLabel 2000 3300 0    50   Output ~ 0
SDOUT
Text HLabel 2000 3500 0    50   Output ~ 0
~CSB
Text HLabel 2000 3400 0    50   Output ~ 0
SCLK
Text Label 4000 3700 0    50   ~ 0
TRACESWO
Text Label 2000 4400 2    50   ~ 0
SWCLK
Text Label 2000 4500 2    50   ~ 0
SWDIO
Text Notes 1650 2800 2    50   ~ 0
data out
Text Notes 4450 2700 0    50   ~ 0
data in
Text HLabel 4000 2700 2    50   Input ~ 0
I2Sext_SD
Text HLabel 2000 2800 0    50   Output ~ 0
I2S_SD
Text HLabel 2000 2600 0    50   Output ~ 0
WCLK
Text HLabel 2000 2700 0    50   Output ~ 0
BCLK
Text HLabel 9700 1600 0    50   Output ~ 0
SDOUT
$Comp
L TactileSwitch:TS-1187A-B-A-B S2
U 1 1 60C15961
P 8250 6200
F 0 "S2" H 8250 6449 50  0000 C CNN
F 1 "TS-1187A-B-A-B" H 8250 6358 50  0000 C CNN
F 2 "TactileSwitch:SW_TS-1187A-B-A-B" H 8250 6200 50  0001 L BNN
F 3 "" H 8250 6200 50  0001 L BNN
F 4 "XKB Industrial Precision" H 8250 6200 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer Recommendations" H 8250 6200 50  0001 L BNN "STANDARD"
F 6 "1.5mm" H 8250 6200 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "A0" H 8250 6200 50  0001 L BNN "PARTREV"
	1    8250 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 6200 7950 6200
Wire Wire Line
	8650 6200 8550 6200
$Comp
L Device:R R12
U 1 1 60C897BC
P 5400 5050
F 0 "R12" H 5470 5096 50  0000 L CNN
F 1 "5.1k" H 5470 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5330 5050 50  0001 C CNN
F 3 "~" H 5400 5050 50  0001 C CNN
	1    5400 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60C89E1B
P 6100 5050
F 0 "R13" H 6170 5096 50  0000 L CNN
F 1 "5.1k" H 6170 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6030 5050 50  0001 C CNN
F 3 "~" H 6100 5050 50  0001 C CNN
	1    6100 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 60C8A899
P 6100 5250
F 0 "#PWR025" H 6100 5000 50  0001 C CNN
F 1 "GND" H 6105 5077 50  0000 C CNN
F 2 "" H 6100 5250 50  0001 C CNN
F 3 "" H 6100 5250 50  0001 C CNN
	1    6100 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 60C8AE11
P 5400 5250
F 0 "#PWR022" H 5400 5000 50  0001 C CNN
F 1 "GND" H 5405 5077 50  0000 C CNN
F 2 "" H 5400 5250 50  0001 C CNN
F 3 "" H 5400 5250 50  0001 C CNN
	1    5400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5250 5400 5200
Wire Wire Line
	6100 5250 6100 5200
Wire Wire Line
	6100 4900 6100 4800
Wire Wire Line
	6100 4800 6250 4800
Wire Wire Line
	5400 4300 6250 4300
Text Label 6150 4500 2    50   ~ 0
OTG_FS_DM
Wire Wire Line
	6150 4500 6250 4500
Text Label 6150 4600 2    50   ~ 0
OTG_FS_DP
Wire Wire Line
	6150 4600 6250 4600
NoConn ~ 6250 4700
NoConn ~ 6250 4400
Wire Wire Line
	7450 4200 7800 4200
Wire Wire Line
	5400 4300 5400 4900
$Comp
L power:GND #PWR026
U 1 1 60D64D4E
P 7550 4950
F 0 "#PWR026" H 7550 4700 50  0001 C CNN
F 1 "GND" H 7555 4777 50  0000 C CNN
F 2 "" H 7550 4950 50  0001 C CNN
F 3 "" H 7550 4950 50  0001 C CNN
	1    7550 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4950 7550 4900
Wire Wire Line
	7550 4800 7450 4800
Wire Wire Line
	7450 4900 7550 4900
Connection ~ 7550 4900
Wire Wire Line
	7550 4900 7550 4800
$Comp
L dsp_dev_board-rescue:DX07S016JA1R1500-USB_C J10
U 1 1 60D8F7D7
P 6850 4500
AR Path="/60D8F7D7" Ref="J10"  Part="1" 
AR Path="/60038522/60D8F7D7" Ref="J10"  Part="1" 
F 0 "J10" H 6850 5067 50  0000 C CNN
F 1 "DX07S016JA1R1500" H 6850 4976 50  0000 C CNN
F 2 "USB_C:JAE_DX07S016JA1R1500" H 6850 4500 50  0001 L BNN
F 3 "" H 6850 4500 50  0001 L BNN
F 4 "3.31 mm" H 6850 4500 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 5 "Manufacturer Recommendations" H 6850 4500 50  0001 L BNN "STANDARD"
F 6 "JAE Industry Ltd." H 6850 4500 50  0001 L BNN "MANUFACTURER"
F 7 "1" H 6850 4500 50  0001 L BNN "PARTREV"
	1    6850 4500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J8
U 1 1 60E25F3D
P 1200 2000
F 0 "J8" H 1550 2100 50  0000 C CNN
F 1 "analog" H 1600 1950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1200 2000 50  0001 C CNN
F 3 "~" H 1200 2000 50  0001 C CNN
	1    1200 2000
	-1   0    0    -1  
$EndComp
Connection ~ 10300 1800
$Comp
L power:GND #PWR028
U 1 1 604BFE47
P 10550 1800
F 0 "#PWR028" H 10550 1550 50  0001 C CNN
F 1 "GND" H 10555 1627 50  0000 C CNN
F 2 "" H 10550 1800 50  0001 C CNN
F 3 "" H 10550 1800 50  0001 C CNN
	1    10550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 1800 10300 1800
Wire Wire Line
	9700 2200 9800 2200
Wire Wire Line
	9700 2100 9800 2100
Wire Wire Line
	9800 2000 9700 2000
Wire Wire Line
	9700 1900 9800 1900
Wire Wire Line
	9800 1800 9700 1800
Wire Wire Line
	9700 1700 9800 1700
Wire Wire Line
	9800 1600 9700 1600
Wire Wire Line
	9700 1500 9800 1500
Wire Wire Line
	1300 4650 1300 4700
$Comp
L TactileSwitch:TS-1187A-B-A-B S1
U 1 1 60C1533E
P 8250 5800
F 0 "S1" H 8250 6049 50  0000 C CNN
F 1 "TS-1187A-B-A-B" H 8250 5958 50  0000 C CNN
F 2 "TactileSwitch:SW_TS-1187A-B-A-B" H 8250 5800 50  0001 L BNN
F 3 "" H 8250 5800 50  0001 L BNN
F 4 "XKB Industrial Precision" H 8250 5800 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer Recommendations" H 8250 5800 50  0001 L BNN "STANDARD"
F 6 "1.5mm" H 8250 5800 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "A0" H 8250 5800 50  0001 L BNN "PARTREV"
	1    8250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 5800 8650 5800
Wire Wire Line
	7850 5800 7950 5800
Text Label 7850 5800 2    50   ~ 0
BOOT0
$Comp
L power:GND #PWR015
U 1 1 60338445
P 8650 6250
F 0 "#PWR015" H 8650 6000 50  0001 C CNN
F 1 "GND" H 8655 6077 50  0000 C CNN
F 2 "" H 8650 6250 50  0001 C CNN
F 3 "" H 8650 6250 50  0001 C CNN
	1    8650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 6200 8650 6250
Connection ~ 1300 4700
Wire Wire Line
	1300 4700 2100 4700
Wire Wire Line
	1300 4350 1300 4250
NoConn ~ 2600 1200
Wire Wire Line
	3200 1150 3300 1150
Wire Wire Line
	3400 1150 3400 1200
Wire Wire Line
	3300 1050 3300 1150
Connection ~ 3300 1150
Wire Wire Line
	3300 1150 3400 1150
Wire Wire Line
	2700 1200 2700 600 
Wire Wire Line
	2700 600  2350 600 
$Comp
L Device:C C6
U 1 1 607D2887
P 1900 750
F 0 "C6" H 2015 796 50  0000 L CNN
F 1 "10u" H 2015 705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1938 600 50  0001 C CNN
F 3 "~" H 1900 750 50  0001 C CNN
	1    1900 750 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 607D33FC
P 2350 750
F 0 "C10" H 2465 796 50  0000 L CNN
F 1 "100n" H 2465 705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2388 600 50  0001 C CNN
F 3 "~" H 2350 750 50  0001 C CNN
	1    2350 750 
	1    0    0    -1  
$EndComp
Connection ~ 2350 600 
Wire Wire Line
	2350 600  1900 600 
Wire Wire Line
	1900 900  1900 950 
Wire Wire Line
	1900 950  2150 950 
Wire Wire Line
	2350 950  2350 900 
$Comp
L power:GND #PWR019
U 1 1 607DD17E
P 2150 950
F 0 "#PWR019" H 2150 700 50  0001 C CNN
F 1 "GND" H 2155 777 50  0000 C CNN
F 2 "" H 2150 950 50  0001 C CNN
F 3 "" H 2150 950 50  0001 C CNN
	1    2150 950 
	1    0    0    -1  
$EndComp
Connection ~ 2150 950 
Wire Wire Line
	2150 950  2350 950 
Text Notes 5800 2000 0    50   ~ 0
one for each VDD* pin
Text Notes 5800 3050 0    50   ~ 0
one for VDDIO, VDDIOB, VDDANA
Wire Wire Line
	3000 5000 3000 5050
Wire Wire Line
	3000 5050 3100 5050
Wire Wire Line
	3100 5050 3100 5000
$Comp
L power:GND #PWR023
U 1 1 6082BD57
P 3100 5050
F 0 "#PWR023" H 3100 4800 50  0001 C CNN
F 1 "GND" H 3105 4877 50  0000 C CNN
F 2 "" H 3100 5050 50  0001 C CNN
F 3 "" H 3100 5050 50  0001 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
Connection ~ 3100 5050
Wire Wire Line
	2000 4100 2100 4100
Wire Wire Line
	2100 4200 2000 4200
Wire Wire Line
	2000 4400 2100 4400
Wire Wire Line
	2000 4500 2100 4500
Wire Wire Line
	4000 3700 3900 3700
Wire Wire Line
	2100 2500 2000 2500
Wire Wire Line
	2100 2600 2000 2600
Wire Wire Line
	2100 2700 2000 2700
Wire Wire Line
	2100 2800 2000 2800
Wire Wire Line
	4000 2700 3900 2700
Text Label 4000 3500 0    50   ~ 0
osc_in
Wire Wire Line
	3900 3500 4000 3500
Wire Wire Line
	1400 2400 2100 2400
Wire Wire Line
	2100 2300 1400 2300
Wire Wire Line
	1400 2200 2100 2200
Wire Wire Line
	2100 2100 1400 2100
Wire Wire Line
	1400 2000 2100 2000
Wire Wire Line
	2100 1900 1400 1900
Wire Wire Line
	4000 2500 3900 2500
Wire Wire Line
	4000 2600 3900 2600
Wire Wire Line
	1500 1700 1400 1700
Wire Wire Line
	1500 1800 1400 1800
Text Label 2050 1900 2    50   ~ 0
PA02
Text Label 2050 2000 2    50   ~ 0
PA03
Text Label 2050 2100 2    50   ~ 0
PA04
Text Label 2050 2200 2    50   ~ 0
PA05
Text Label 2050 2300 2    50   ~ 0
PA06
Text Label 2050 2400 2    50   ~ 0
PA07
Text Label 4000 2600 0    50   ~ 0
PB09
Text Label 4000 2500 0    50   ~ 0
PB08
Text Label 1500 1800 0    50   ~ 0
PB09
Text Label 1500 1700 0    50   ~ 0
PB08
Wire Wire Line
	3900 1700 4250 1700
Wire Wire Line
	3900 1800 4250 1800
Wire Wire Line
	3900 1900 4250 1900
Wire Wire Line
	3900 2000 4250 2000
Wire Wire Line
	3900 2100 4250 2100
Wire Wire Line
	3900 2200 4250 2200
Wire Wire Line
	3900 2300 4250 2300
Wire Wire Line
	3900 2400 4250 2400
Wire Wire Line
	4000 2900 3900 2900
Wire Wire Line
	4000 3000 3900 3000
Wire Wire Line
	4000 3100 3900 3100
Wire Wire Line
	4000 3200 3900 3200
NoConn ~ 2100 4300
NoConn ~ 2100 4000
NoConn ~ 2100 3900
NoConn ~ 2100 3800
NoConn ~ 2100 3700
NoConn ~ 2100 3600
NoConn ~ 2100 1700
NoConn ~ 2100 1800
NoConn ~ 3900 2800
NoConn ~ 3900 3300
NoConn ~ 3900 3400
NoConn ~ 3900 3800
Wire Wire Line
	2100 3400 2000 3400
Wire Wire Line
	2000 3500 2100 3500
Wire Wire Line
	2100 3300 2000 3300
Text Notes 1650 3450 2    50   ~ 0
SERCOM 1\nIOSET 1
Text HLabel 2000 2900 0    50   BiDi ~ 0
SDA
Text HLabel 2000 3000 0    50   Output ~ 0
SCL
Wire Wire Line
	2000 2900 2100 2900
Wire Wire Line
	2100 3000 2000 3000
Text HLabel 2000 3100 0    50   Output ~ 0
~CODEC_RST
Wire Wire Line
	2100 3100 2000 3100
Text Label 4000 1700 0    50   ~ 0
PB00
Text Label 4000 1800 0    50   ~ 0
PB01
Text Label 4000 1900 0    50   ~ 0
PB02
Text Label 4000 2000 0    50   ~ 0
PB03
Text Label 4000 2100 0    50   ~ 0
PB04
Text Label 4000 2200 0    50   ~ 0
PB05
Text Label 4000 2300 0    50   ~ 0
PB06
Text Label 4000 2400 0    50   ~ 0
PB07
Text Notes 1750 3000 2    50   ~ 0
SERCOM 2\nIOSET 1
Text HLabel 9700 2000 0    50   BiDi ~ 0
SDA
Text HLabel 9700 1900 0    50   Output ~ 0
SCL
Text HLabel 9700 1800 0    50   Output ~ 0
~CODEC_RST
Wire Wire Line
	10300 1800 10300 1900
$Comp
L Connector_Generic:Conn_02x11_Odd_Even J11
U 1 1 6092653D
P 10000 2000
F 0 "J11" H 10050 2717 50  0000 C CNN
F 1 "Conn_02x11_Odd_Even" H 10050 2626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x11_P2.54mm_Vertical" H 10000 2000 50  0001 C CNN
F 3 "~" H 10000 2000 50  0001 C CNN
	1    10000 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1700 10300 1800
Wire Wire Line
	10300 1500 10300 1600
Connection ~ 10300 1600
Wire Wire Line
	10300 1600 10300 1700
Connection ~ 10300 1700
Connection ~ 10300 1900
Wire Wire Line
	10300 1900 10300 2000
Connection ~ 10300 2000
Wire Wire Line
	10300 2000 10300 2100
Connection ~ 10300 2100
Wire Wire Line
	10300 2100 10300 2200
Connection ~ 10300 2200
Wire Wire Line
	10300 2200 10300 2300
Connection ~ 10300 2300
Wire Wire Line
	10300 2300 10300 2400
Connection ~ 10300 2400
Wire Wire Line
	10300 2400 10300 2500
Wire Wire Line
	9700 2300 9800 2300
Wire Wire Line
	9800 2400 9700 2400
Wire Wire Line
	9800 2500 9700 2500
$Comp
L Device:C C38
U 1 1 60959C93
P 1300 4900
F 0 "C38" H 1415 4946 50  0000 L CNN
F 1 "100n" H 1415 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1338 4750 50  0001 C CNN
F 3 "~" H 1300 4900 50  0001 C CNN
	1    1300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4700 1300 4750
$Comp
L power:GND #PWR032
U 1 1 609640C5
P 1300 5100
F 0 "#PWR032" H 1300 4850 50  0001 C CNN
F 1 "GND" H 1305 4927 50  0000 C CNN
F 2 "" H 1300 5100 50  0001 C CNN
F 3 "" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5050 1300 5100
$Comp
L Device:R R22
U 1 1 60972B76
P 1000 4700
F 0 "R22" V 793 4700 50  0000 C CNN
F 1 "330" V 884 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 930 4700 50  0001 C CNN
F 3 "~" H 1000 4700 50  0001 C CNN
	1    1000 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	700  4700 850  4700
Wire Wire Line
	1150 4700 1300 4700
$Comp
L MCU_Microchip_SAME:ATSAME51J20A-A U3
U 1 1 6088AEBB
P 3000 3100
F 0 "U3" H 3000 1111 50  0000 C CNN
F 1 "ATSAME51J20A-A" H 3000 1020 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 4300 5000 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/60001507E.pdf" H 3000 3100 50  0001 C CNN
	1    3000 3100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
