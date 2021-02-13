EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L MCU_ST_STM32F4:STM32F407VETx U3
U 1 1 60038CE5
P 2850 3550
F 0 "U3" H 1850 6250 50  0000 C CNN
F 1 "STM32F407VETx" H 2100 6150 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 2150 950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 2850 3550 50  0001 C CNN
	1    2850 3550
	1    0    0    -1  
$EndComp
Text HLabel 4000 3850 2    50   Input ~ 0
BCLK
Text HLabel 4000 3750 2    50   Input ~ 0
WCLK
Text HLabel 3950 4850 2    50   Output ~ 0
I2S_SD
Text HLabel 3950 4750 2    50   Input ~ 0
I2Sext_SD
Wire Wire Line
	3950 4850 3750 4850
Wire Wire Line
	3950 4750 3750 4750
Text Notes 4400 4750 0    50   ~ 0
data in
Text Notes 4400 4850 0    50   ~ 0
data out
Wire Wire Line
	4000 3750 3750 3750
Wire Wire Line
	4000 3850 3750 3850
Text Label 6000 3050 2    50   ~ 0
SWDIO
Text Label 6000 2850 2    50   ~ 0
SWCLK
Text Label 6000 3250 2    50   ~ 0
TRACESWO
Wire Wire Line
	6000 2850 6100 2850
Wire Wire Line
	6000 3250 6100 3250
Wire Wire Line
	6000 3050 6100 3050
Wire Wire Line
	6000 3150 6100 3150
$Comp
L power:GND #PWR018
U 1 1 60166405
P 5450 2950
F 0 "#PWR018" H 5450 2700 50  0001 C CNN
F 1 "GND" H 5455 2777 50  0000 C CNN
F 2 "" H 5450 2950 50  0001 C CNN
F 3 "" H 5450 2950 50  0001 C CNN
	1    5450 2950
	1    0    0    -1  
$EndComp
Text Label 4000 2450 0    50   ~ 0
SWDIO
Wire Wire Line
	4000 2450 3750 2450
Text Label 4000 2550 0    50   ~ 0
SWCLK
Wire Wire Line
	4000 2550 3750 2550
Text Label 4000 3150 0    50   ~ 0
TRACESWO
Wire Wire Line
	4000 3150 3750 3150
Text HLabel 3950 5550 2    50   Output ~ 0
SCLK
Text HLabel 3950 5650 2    50   Output ~ 0
~CSB
Text HLabel 3950 5750 2    50   Output ~ 0
SDOUT
Wire Wire Line
	3950 5750 3750 5750
Wire Wire Line
	3950 5550 3750 5550
Wire Wire Line
	3950 5650 3750 5650
$Comp
L Device:C C9
U 1 1 6007C8E0
P 6150 1650
F 0 "C9" H 6265 1696 50  0000 L CNN
F 1 "2.2u" H 6265 1605 50  0000 L CNN
F 2 "" H 6188 1500 50  0001 C CNN
F 3 "~" H 6150 1650 50  0001 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 6007D719
P 6150 1850
F 0 "#PWR021" H 6150 1600 50  0001 C CNN
F 1 "GND" H 6155 1677 50  0000 C CNN
F 2 "" H 6150 1850 50  0001 C CNN
F 3 "" H 6150 1850 50  0001 C CNN
	1    6150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1500 6150 1450
Wire Wire Line
	6150 1800 6150 1850
Text Label 6150 1450 1    50   ~ 0
VCAP_2
$Comp
L Device:C C7
U 1 1 600829C5
P 5700 1650
F 0 "C7" H 5815 1696 50  0000 L CNN
F 1 "2.2u" H 5815 1605 50  0000 L CNN
F 2 "" H 5738 1500 50  0001 C CNN
F 3 "~" H 5700 1650 50  0001 C CNN
	1    5700 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 600829CB
P 5700 1850
F 0 "#PWR019" H 5700 1600 50  0001 C CNN
F 1 "GND" H 5705 1677 50  0000 C CNN
F 2 "" H 5700 1850 50  0001 C CNN
F 3 "" H 5700 1850 50  0001 C CNN
	1    5700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1500 5700 1450
Wire Wire Line
	5700 1800 5700 1850
Text Label 5700 1450 1    50   ~ 0
VCAP_1
Text Label 1850 1650 2    50   ~ 0
VCAP_2
Wire Wire Line
	1850 1650 1950 1650
Text Label 1850 1550 2    50   ~ 0
VCAP_1
Wire Wire Line
	1850 1550 1950 1550
$Comp
L Device:C C10
U 1 1 60087CEC
P 7250 1500
F 0 "C10" H 7365 1546 50  0000 L CNN
F 1 "100n" H 7365 1455 50  0000 L CNN
F 2 "" H 7288 1350 50  0001 C CNN
F 3 "~" H 7250 1500 50  0001 C CNN
	1    7250 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 60089379
P 7250 1750
F 0 "#PWR023" H 7250 1500 50  0001 C CNN
F 1 "GND" H 7255 1577 50  0000 C CNN
F 2 "" H 7250 1750 50  0001 C CNN
F 3 "" H 7250 1750 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1750 7250 1700
$Comp
L Device:C C12
U 1 1 6008AD87
P 7700 1500
F 0 "C12" H 7815 1546 50  0000 L CNN
F 1 "100n" H 7815 1455 50  0000 L CNN
F 2 "" H 7738 1350 50  0001 C CNN
F 3 "~" H 7700 1500 50  0001 C CNN
	1    7700 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 6008BC6A
P 8150 1500
F 0 "C14" H 8265 1546 50  0000 L CNN
F 1 "100n" H 8265 1455 50  0000 L CNN
F 2 "" H 8188 1350 50  0001 C CNN
F 3 "~" H 8150 1500 50  0001 C CNN
	1    8150 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 6008CAA6
P 8600 1500
F 0 "C16" H 8715 1546 50  0000 L CNN
F 1 "100n" H 8715 1455 50  0000 L CNN
F 2 "" H 8638 1350 50  0001 C CNN
F 3 "~" H 8600 1500 50  0001 C CNN
	1    8600 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 6008D87B
P 9050 1500
F 0 "C18" H 9165 1546 50  0000 L CNN
F 1 "100n" H 9165 1455 50  0000 L CNN
F 2 "" H 9088 1350 50  0001 C CNN
F 3 "~" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C19
U 1 1 6008E580
P 9500 1500
F 0 "C19" H 9615 1546 50  0000 L CNN
F 1 "100n" H 9615 1455 50  0000 L CNN
F 2 "" H 9538 1350 50  0001 C CNN
F 3 "~" H 9500 1500 50  0001 C CNN
	1    9500 1500
	1    0    0    -1  
$EndComp
Text GLabel 2550 750  1    50   Input ~ 0
3.3V
Wire Wire Line
	2550 750  2550 800 
Wire Wire Line
	2650 800  2750 800 
Wire Wire Line
	3150 800  3150 850 
Wire Wire Line
	2650 800  2650 850 
Wire Wire Line
	3050 800  3050 850 
Connection ~ 3050 800 
Wire Wire Line
	3050 800  3150 800 
Wire Wire Line
	2950 800  2950 850 
Connection ~ 2950 800 
Wire Wire Line
	2950 800  3050 800 
Wire Wire Line
	2850 800  2850 850 
Connection ~ 2850 800 
Wire Wire Line
	2850 800  2950 800 
Wire Wire Line
	2750 850  2750 800 
Connection ~ 2750 800 
Wire Wire Line
	2750 800  2850 800 
Wire Wire Line
	7250 1700 7700 1700
Wire Wire Line
	7700 1700 7700 1650
Connection ~ 7250 1700
Wire Wire Line
	7250 1700 7250 1650
Wire Wire Line
	7700 1700 8150 1700
Wire Wire Line
	8150 1700 8150 1650
Connection ~ 7700 1700
Wire Wire Line
	8150 1700 8600 1700
Wire Wire Line
	8600 1700 8600 1650
Connection ~ 8150 1700
Wire Wire Line
	8600 1700 9050 1700
Wire Wire Line
	9050 1700 9050 1650
Connection ~ 8600 1700
Wire Wire Line
	9050 1700 9500 1700
Wire Wire Line
	9500 1700 9500 1650
Connection ~ 9050 1700
Text GLabel 7250 1200 1    50   Input ~ 0
3.3V
Wire Wire Line
	7250 1200 7250 1300
Wire Wire Line
	7250 1300 7700 1300
Wire Wire Line
	7700 1300 7700 1350
Connection ~ 7250 1300
Wire Wire Line
	7250 1300 7250 1350
Wire Wire Line
	7700 1300 8150 1300
Wire Wire Line
	8150 1300 8150 1350
Connection ~ 7700 1300
Wire Wire Line
	8150 1300 8600 1300
Wire Wire Line
	8600 1300 8600 1350
Connection ~ 8150 1300
Wire Wire Line
	8600 1300 9050 1300
Wire Wire Line
	9050 1300 9050 1350
Connection ~ 8600 1300
Wire Wire Line
	9050 1300 9500 1300
Wire Wire Line
	9500 1300 9500 1350
Connection ~ 9050 1300
$Comp
L Device:C C20
U 1 1 600A01DC
P 9950 1500
F 0 "C20" H 10065 1546 50  0000 L CNN
F 1 "4.7u" H 10065 1455 50  0000 L CNN
F 2 "" H 9988 1350 50  0001 C CNN
F 3 "~" H 9950 1500 50  0001 C CNN
	1    9950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1700 9950 1700
Wire Wire Line
	9950 1700 9950 1650
Connection ~ 9500 1700
Wire Wire Line
	9500 1300 9950 1300
Wire Wire Line
	9950 1300 9950 1350
Connection ~ 9500 1300
$Comp
L power:GND #PWR017
U 1 1 600A342F
P 2650 6450
F 0 "#PWR017" H 2650 6200 50  0001 C CNN
F 1 "GND" H 2655 6277 50  0000 C CNN
F 2 "" H 2650 6450 50  0001 C CNN
F 3 "" H 2650 6450 50  0001 C CNN
	1    2650 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6450 2650 6400
Wire Wire Line
	2650 6400 2750 6400
Wire Wire Line
	3050 6400 3050 6350
Connection ~ 2650 6400
Wire Wire Line
	2650 6400 2650 6350
Wire Wire Line
	2950 6350 2950 6400
Connection ~ 2950 6400
Wire Wire Line
	2950 6400 3050 6400
Wire Wire Line
	2850 6350 2850 6400
Connection ~ 2850 6400
Wire Wire Line
	2850 6400 2950 6400
Wire Wire Line
	2750 6350 2750 6400
Connection ~ 2750 6400
Wire Wire Line
	2750 6400 2850 6400
$Comp
L Device:C C11
U 1 1 600AC578
P 7250 2550
F 0 "C11" H 7365 2596 50  0000 L CNN
F 1 "1u" H 7365 2505 50  0000 L CNN
F 2 "" H 7288 2400 50  0001 C CNN
F 3 "~" H 7250 2550 50  0001 C CNN
	1    7250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 600AC57E
P 7250 2800
F 0 "#PWR024" H 7250 2550 50  0001 C CNN
F 1 "GND" H 7255 2627 50  0000 C CNN
F 2 "" H 7250 2800 50  0001 C CNN
F 3 "" H 7250 2800 50  0001 C CNN
	1    7250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2800 7250 2750
$Comp
L Device:C C13
U 1 1 600AC585
P 7700 2550
F 0 "C13" H 7815 2596 50  0000 L CNN
F 1 "100n" H 7815 2505 50  0000 L CNN
F 2 "" H 7738 2400 50  0001 C CNN
F 3 "~" H 7700 2550 50  0001 C CNN
	1    7700 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 600AC58B
P 8150 2550
F 0 "C15" H 8265 2596 50  0000 L CNN
F 1 "1u" H 8265 2505 50  0000 L CNN
F 2 "" H 8188 2400 50  0001 C CNN
F 3 "~" H 8150 2550 50  0001 C CNN
	1    8150 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2750 7700 2750
Wire Wire Line
	7700 2750 7700 2700
Connection ~ 7250 2750
Wire Wire Line
	7250 2750 7250 2700
Wire Wire Line
	7700 2750 8150 2750
Wire Wire Line
	8150 2750 8150 2700
Connection ~ 7700 2750
Wire Wire Line
	8150 2750 8600 2750
Connection ~ 8150 2750
Text GLabel 7250 2250 1    50   Input ~ 0
3.3V
Wire Wire Line
	7250 2250 7250 2350
Wire Wire Line
	7250 2350 7700 2350
Wire Wire Line
	7700 2350 7700 2400
Connection ~ 7250 2350
Wire Wire Line
	7250 2350 7250 2400
Wire Wire Line
	7700 2350 8150 2350
Wire Wire Line
	8150 2350 8150 2400
Connection ~ 7700 2350
Wire Wire Line
	8150 2350 8600 2350
Connection ~ 8150 2350
$Comp
L Device:C C17
U 1 1 600AE6EF
P 8600 2550
F 0 "C17" H 8715 2596 50  0000 L CNN
F 1 "100n" H 8715 2505 50  0000 L CNN
F 2 "" H 8638 2400 50  0001 C CNN
F 3 "~" H 8600 2550 50  0001 C CNN
	1    8600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2350 8600 2400
Wire Wire Line
	8600 2700 8600 2750
Wire Wire Line
	3150 800  3250 800 
Wire Wire Line
	3250 800  3250 850 
Connection ~ 3150 800 
Text GLabel 1850 1750 0    50   Input ~ 0
3.3V
Wire Wire Line
	1850 1750 1950 1750
Wire Wire Line
	2550 850  2550 800 
Wire Wire Line
	2550 800  2650 800 
Connection ~ 2550 800 
Connection ~ 2650 800 
$Comp
L power:GND #PWR015
U 1 1 6007ECDF
P 1150 1850
F 0 "#PWR015" H 1150 1600 50  0001 C CNN
F 1 "GND" H 1155 1677 50  0000 C CNN
F 2 "" H 1150 1850 50  0001 C CNN
F 3 "" H 1150 1850 50  0001 C CNN
	1    1150 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 600E34F2
P 5750 6600
F 0 "Y1" H 5750 6868 50  0000 C CNN
F 1 "12Mhz" H 5750 6777 50  0000 C CNN
F 2 "" H 5750 6600 50  0001 C CNN
F 3 "~" H 5750 6600 50  0001 C CNN
	1    5750 6600
	1    0    0    -1  
$EndComp
Text Label 1850 2550 2    50   ~ 0
osc_in
Wire Wire Line
	1850 2550 1950 2550
Wire Wire Line
	1850 2650 1950 2650
Text Label 1850 2650 2    50   ~ 0
osc_out
$Comp
L Device:C C6
U 1 1 600EA749
P 5350 6900
F 0 "C6" H 5465 6946 50  0000 L CNN
F 1 "20pf" H 5465 6855 50  0000 L CNN
F 2 "" H 5388 6750 50  0001 C CNN
F 3 "~" H 5350 6900 50  0001 C CNN
	1    5350 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 600EB2AF
P 6100 6900
F 0 "C8" H 6215 6946 50  0000 L CNN
F 1 "20pf" H 6215 6855 50  0000 L CNN
F 2 "" H 6138 6750 50  0001 C CNN
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
L power:GND #PWR020
U 1 1 600F5882
P 5750 7150
F 0 "#PWR020" H 5750 6900 50  0001 C CNN
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
Wire Wire Line
	1900 2850 1950 2850
Wire Wire Line
	1900 2950 1950 2950
Wire Wire Line
	1900 3050 1950 3050
Wire Wire Line
	1900 3150 1950 3150
Wire Wire Line
	1900 3250 1950 3250
Wire Wire Line
	1900 3350 1950 3350
Wire Wire Line
	1900 3450 1950 3450
Wire Wire Line
	1900 3550 1950 3550
$Comp
L Connector:Conn_01x16_Male J7
U 1 1 60125863
P 1700 3550
F 0 "J7" H 1300 4100 50  0000 C CNN
F 1 "Conn_01x16_Male" H 1300 4000 50  0000 C CNN
F 2 "" H 1700 3550 50  0001 C CNN
F 3 "~" H 1700 3550 50  0001 C CNN
	1    1700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3650 1950 3650
Wire Wire Line
	1900 3750 1950 3750
Wire Wire Line
	1900 3850 1950 3850
Wire Wire Line
	1900 3950 1950 3950
Wire Wire Line
	1900 4050 1950 4050
Wire Wire Line
	1900 4150 1950 4150
Wire Wire Line
	1900 4250 1950 4250
Wire Wire Line
	1900 4350 1950 4350
$Comp
L Connector:Conn_01x16_Male J8
U 1 1 60169B70
P 1700 5250
F 0 "J8" H 1300 5800 50  0000 C CNN
F 1 "Conn_01x16_Male" H 1300 5700 50  0000 C CNN
F 2 "" H 1700 5250 50  0001 C CNN
F 3 "~" H 1700 5250 50  0001 C CNN
	1    1700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4550 1950 4550
Wire Wire Line
	1900 4650 1950 4650
Wire Wire Line
	1900 4750 1950 4750
Wire Wire Line
	1900 4850 1950 4850
Wire Wire Line
	1900 4950 1950 4950
Wire Wire Line
	1900 5050 1950 5050
Wire Wire Line
	1900 5150 1950 5150
Wire Wire Line
	1900 5250 1950 5250
Wire Wire Line
	1900 5350 1950 5350
Wire Wire Line
	1900 5450 1950 5450
Wire Wire Line
	1900 5550 1950 5550
Wire Wire Line
	1900 5650 1950 5650
Wire Wire Line
	1900 5750 1950 5750
Wire Wire Line
	1900 5850 1950 5850
Wire Wire Line
	1900 5950 1950 5950
Wire Wire Line
	1900 6050 1950 6050
$Comp
L Device:LED D5
U 1 1 601FF073
P 10400 3950
F 0 "D5" H 10393 3695 50  0000 C CNN
F 1 "LED" H 10393 3786 50  0000 C CNN
F 2 "" H 10400 3950 50  0001 C CNN
F 3 "~" H 10400 3950 50  0001 C CNN
	1    10400 3950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 601FFB05
P 10700 4050
F 0 "#PWR028" H 10700 3800 50  0001 C CNN
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
F 2 "120" V 9930 3950 50  0001 C CNN
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
F 2 "" H 10450 4600 50  0001 C CNN
F 3 "~" H 10450 4600 50  0001 C CNN
	1    10450 4600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 60225183
P 10750 4700
F 0 "#PWR029" H 10750 4450 50  0001 C CNN
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
F 2 "" V 9980 4600 50  0001 C CNN
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
F 2 "" H 10450 5250 50  0001 C CNN
F 3 "~" H 10450 5250 50  0001 C CNN
	1    10450 5250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 6022CDB7
P 10750 5350
F 0 "#PWR030" H 10750 5100 50  0001 C CNN
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
F 2 "" V 9980 5250 50  0001 C CNN
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
F 2 "" H 10450 5900 50  0001 C CNN
F 3 "~" H 10450 5900 50  0001 C CNN
	1    10450 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 60234D5D
P 10750 6000
F 0 "#PWR031" H 10750 5750 50  0001 C CNN
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
F 2 "" V 9980 5900 50  0001 C CNN
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
Text Label 4000 1150 0    50   ~ 0
led1
Text Label 4000 1250 0    50   ~ 0
led2
Text Label 4000 1350 0    50   ~ 0
led3
Text Label 4000 1450 0    50   ~ 0
led4
Wire Wire Line
	4000 1150 3750 1150
Wire Wire Line
	3750 1250 4000 1250
Wire Wire Line
	3750 1350 4000 1350
Wire Wire Line
	4000 1450 3750 1450
$Comp
L power:GND #PWR022
U 1 1 600F9DDE
P 6150 5500
F 0 "#PWR022" H 6150 5250 50  0001 C CNN
F 1 "GND" H 6155 5327 50  0000 C CNN
F 2 "" H 6150 5500 50  0001 C CNN
F 3 "" H 6150 5500 50  0001 C CNN
	1    6150 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5500 6150 5450
Text Label 6850 4700 0    50   ~ 0
OTG_FS_DP
Text Label 6850 4500 0    50   ~ 0
OTG_FS_DM
Wire Wire Line
	6850 4500 6750 4500
Wire Wire Line
	6750 4700 6850 4700
Text Label 4000 2250 0    50   ~ 0
OTG_FS_DM
Wire Wire Line
	4000 2250 3750 2250
Text Label 4000 2350 0    50   ~ 0
OTG_FS_DP
Wire Wire Line
	4000 2350 3750 2350
Text Label 8450 3950 0    50   ~ 0
OTG_FS_VBUS
Wire Wire Line
	8450 3950 8300 3950
Text Label 4000 2050 0    50   ~ 0
OTG_FS_VBUS
Wire Wire Line
	4000 2050 3750 2050
$Comp
L Connector:USB_C_Receptacle_USB2.0 J9
U 1 1 60150A26
P 6150 4550
F 0 "J9" H 6257 5417 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 6257 5326 50  0000 C CNN
F 2 "" H 6300 4550 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6300 4550 50  0001 C CNN
	1    6150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4450 6750 4500
Wire Wire Line
	6750 4650 6750 4700
Connection ~ 6750 4500
Wire Wire Line
	6750 4500 6750 4550
Connection ~ 6750 4700
Wire Wire Line
	6750 4700 6750 4750
NoConn ~ 6750 5050
NoConn ~ 6750 5150
Wire Wire Line
	5850 5450 6150 5450
Connection ~ 6150 5450
Text GLabel 8500 3750 2    50   Output ~ 0
VBUS
Wire Wire Line
	8300 3950 8300 3750
Wire Wire Line
	8300 3750 8500 3750
$Comp
L Device:R R12
U 1 1 601DC33F
P 7550 4450
F 0 "R12" H 7620 4496 50  0000 L CNN
F 1 "5.1k" H 7620 4405 50  0000 L CNN
F 2 "" V 7480 4450 50  0001 C CNN
F 3 "~" H 7550 4450 50  0001 C CNN
	1    7550 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 601DC805
P 7900 4450
F 0 "R13" H 7970 4496 50  0000 L CNN
F 1 "5.1k" H 7970 4405 50  0000 L CNN
F 2 "" V 7830 4450 50  0001 C CNN
F 3 "~" H 7900 4450 50  0001 C CNN
	1    7900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4300 7550 4250
Wire Wire Line
	7550 4250 6750 4250
Wire Wire Line
	6750 4150 7900 4150
Wire Wire Line
	7900 4150 7900 4300
$Comp
L power:GND #PWR025
U 1 1 601F11CD
P 7550 4700
F 0 "#PWR025" H 7550 4450 50  0001 C CNN
F 1 "GND" H 7555 4527 50  0000 C CNN
F 2 "" H 7550 4700 50  0001 C CNN
F 3 "" H 7550 4700 50  0001 C CNN
	1    7550 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4700 7550 4600
$Comp
L power:GND #PWR026
U 1 1 601FB749
P 7900 4700
F 0 "#PWR026" H 7900 4450 50  0001 C CNN
F 1 "GND" H 7905 4527 50  0000 C CNN
F 2 "" H 7900 4700 50  0001 C CNN
F 3 "" H 7900 4700 50  0001 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4700 7900 4600
$Comp
L Device:R R14
U 1 1 60234B64
P 8300 4450
F 0 "R14" H 8370 4496 50  0000 L CNN
F 1 "1M" H 8370 4405 50  0000 L CNN
F 2 "" V 8230 4450 50  0001 C CNN
F 3 "~" H 8300 4450 50  0001 C CNN
	1    8300 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6023573F
P 8300 4700
F 0 "#PWR027" H 8300 4450 50  0001 C CNN
F 1 "GND" H 8305 4527 50  0000 C CNN
F 2 "" H 8300 4700 50  0001 C CNN
F 3 "" H 8300 4700 50  0001 C CNN
	1    8300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4700 8300 4600
Wire Wire Line
	8300 4300 8300 3950
Connection ~ 8300 3950
Wire Wire Line
	6750 3950 8300 3950
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 602AEEE9
P 7950 5700
F 0 "SW1" H 7950 6085 50  0000 C CNN
F 1 "SW_MEC_5E" H 7950 5994 50  0000 C CNN
F 2 "" H 7950 6000 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 7950 6000 50  0001 C CNN
	1    7950 5700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5E SW2
U 1 1 602B029E
P 7950 6250
F 0 "SW2" H 7950 6635 50  0000 C CNN
F 1 "SW_MEC_5E" H 7950 6544 50  0000 C CNN
F 2 "" H 7950 6550 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 7950 6550 50  0001 C CNN
	1    7950 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 602B1BCD
P 1150 1650
F 0 "R11" H 1220 1696 50  0000 L CNN
F 1 "10k" H 1220 1605 50  0000 L CNN
F 2 "" V 1080 1650 50  0001 C CNN
F 3 "~" H 1150 1650 50  0001 C CNN
	1    1150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1800 1150 1850
Wire Wire Line
	1150 1350 1150 1500
Text Label 1150 1350 2    50   ~ 0
BOOT0
Wire Wire Line
	7750 5600 7700 5600
Wire Wire Line
	7700 5600 7700 5650
Wire Wire Line
	7700 5700 7750 5700
Text Label 7600 5650 2    50   ~ 0
BOOT0
Wire Wire Line
	7600 5650 7700 5650
Connection ~ 7700 5650
Wire Wire Line
	7700 5650 7700 5700
Text GLabel 8250 5650 2    50   Input ~ 0
3.3V
Wire Wire Line
	8150 5600 8200 5600
Wire Wire Line
	8200 5600 8200 5650
Wire Wire Line
	8200 5700 8150 5700
Wire Wire Line
	8250 5650 8200 5650
Connection ~ 8200 5650
Wire Wire Line
	8200 5650 8200 5700
Wire Wire Line
	1150 1350 1950 1350
$Comp
L power:GND #PWR014
U 1 1 60338445
P 750 1850
F 0 "#PWR014" H 750 1600 50  0001 C CNN
F 1 "GND" H 755 1677 50  0000 C CNN
F 2 "" H 750 1850 50  0001 C CNN
F 3 "" H 750 1850 50  0001 C CNN
	1    750  1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6033844B
P 750 1650
F 0 "R10" H 820 1696 50  0000 L CNN
F 1 "10k" H 820 1605 50  0000 L CNN
F 2 "" V 680 1650 50  0001 C CNN
F 3 "~" H 750 1650 50  0001 C CNN
	1    750  1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1800 750  1850
Wire Wire Line
	750  1500 750  1150
Text Label 750  1150 2    50   ~ 0
NRST
Text Label 7600 6200 2    50   ~ 0
NRST
Wire Wire Line
	7600 6200 7700 6200
Wire Wire Line
	7700 6200 7700 6150
Wire Wire Line
	7700 6150 7750 6150
Wire Wire Line
	7700 6200 7700 6250
Wire Wire Line
	7700 6250 7750 6250
Connection ~ 7700 6200
Text GLabel 8250 6200 2    50   Input ~ 0
3.3V
Wire Wire Line
	8150 6150 8200 6150
Wire Wire Line
	8200 6150 8200 6200
Wire Wire Line
	8200 6250 8150 6250
Wire Wire Line
	8250 6200 8200 6200
Connection ~ 8200 6200
Wire Wire Line
	8200 6200 8200 6250
Wire Wire Line
	5450 2950 6100 2950
Text Label 6000 3150 2    50   ~ 0
NRST
NoConn ~ 6100 2750
$Comp
L Connector_Generic:Conn_01x06 J10
U 1 1 603F4BC1
P 6300 2950
F 0 "J10" H 6380 2942 50  0000 L CNN
F 1 "debug" H 6380 2851 50  0000 L CNN
F 2 "" H 6300 2950 50  0001 C CNN
F 3 "~" H 6300 2950 50  0001 C CNN
	1    6300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1150 1950 1150
$Comp
L Connector:TestPoint TP1
U 1 1 60447B1D
P 1250 6200
F 0 "TP1" V 1204 6388 50  0000 L CNN
F 1 "I2S in" V 1295 6388 50  0000 L CNN
F 2 "" H 1450 6200 50  0001 C CNN
F 3 "~" H 1450 6200 50  0001 C CNN
	1    1250 6200
	0    1    1    0   
$EndComp
Text HLabel 1150 6200 0    50   Input ~ 0
I2Sext_SD
Wire Wire Line
	1150 6200 1250 6200
$Comp
L Connector:TestPoint TP2
U 1 1 60460992
P 1250 6400
F 0 "TP2" V 1204 6588 50  0000 L CNN
F 1 "I2S out" V 1295 6588 50  0000 L CNN
F 2 "" H 1450 6400 50  0001 C CNN
F 3 "~" H 1450 6400 50  0001 C CNN
	1    1250 6400
	0    1    1    0   
$EndComp
Text HLabel 1150 6400 0    50   Output ~ 0
I2S_SD
Wire Wire Line
	1150 6400 1250 6400
Text HLabel 1150 7000 0    50   Output ~ 0
SCLK
Text HLabel 1150 6800 0    50   Output ~ 0
~CSB
Text HLabel 1150 6600 0    50   Output ~ 0
SDOUT
$Comp
L Connector:TestPoint TP3
U 1 1 60485F09
P 1250 6600
F 0 "TP3" V 1204 6788 50  0000 L CNN
F 1 "SDOUT" V 1295 6788 50  0000 L CNN
F 2 "" H 1450 6600 50  0001 C CNN
F 3 "~" H 1450 6600 50  0001 C CNN
	1    1250 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 6600 1250 6600
$Comp
L Connector:TestPoint TP4
U 1 1 604AB8F3
P 1250 6800
F 0 "TP4" V 1198 6988 50  0000 L CNN
F 1 "~CSB" V 1296 6988 50  0000 L CNN
F 2 "" H 1450 6800 50  0001 C CNN
F 3 "~" H 1450 6800 50  0001 C CNN
	1    1250 6800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 604ABD57
P 1250 7000
F 0 "TP5" V 1204 7188 50  0000 L CNN
F 1 "SCLK" V 1295 7188 50  0000 L CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "~" H 1450 7000 50  0001 C CNN
	1    1250 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 6800 1250 6800
Wire Wire Line
	1150 7000 1250 7000
$Comp
L Connector:TestPoint TP6
U 1 1 604D21B0
P 1250 7200
F 0 "TP6" V 1204 7388 50  0000 L CNN
F 1 "I2S2_MCK" V 1295 7388 50  0000 L CNN
F 2 "" H 1450 7200 50  0001 C CNN
F 3 "~" H 1450 7200 50  0001 C CNN
	1    1250 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 7200 1250 7200
$Comp
L Connector:TestPoint TP9
U 1 1 604E027E
P 2050 7200
F 0 "TP9" V 2004 7388 50  0000 L CNN
F 1 "GND" V 2095 7388 50  0000 L CNN
F 2 "" H 2250 7200 50  0001 C CNN
F 3 "~" H 2250 7200 50  0001 C CNN
	1    2050 7200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 604E12B0
P 1950 7250
F 0 "#PWR016" H 1950 7000 50  0001 C CNN
F 1 "GND" H 1955 7077 50  0000 C CNN
F 2 "" H 1950 7250 50  0001 C CNN
F 3 "" H 1950 7250 50  0001 C CNN
	1    1950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 7250 1950 7200
Wire Wire Line
	1950 7200 2050 7200
$Comp
L Connector:TestPoint TP7
U 1 1 605195E2
P 1250 7400
F 0 "TP7" V 1204 7588 50  0000 L CNN
F 1 "WCLK" V 1295 7588 50  0000 L CNN
F 2 "" H 1450 7400 50  0001 C CNN
F 3 "~" H 1450 7400 50  0001 C CNN
	1    1250 7400
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 7400 1250 7400
Text HLabel 1150 7400 0    50   Input ~ 0
WCLK
Text HLabel 1150 7600 0    50   Input ~ 0
BCLK
$Comp
L Connector:TestPoint TP8
U 1 1 605426EB
P 1250 7600
F 0 "TP8" V 1204 7788 50  0000 L CNN
F 1 "BCLK" V 1295 7788 50  0000 L CNN
F 2 "" H 1450 7600 50  0001 C CNN
F 3 "~" H 1450 7600 50  0001 C CNN
	1    1250 7600
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 7600 1250 7600
Text HLabel 3950 5150 2    50   Output ~ 0
I2S2_MCK
Wire Wire Line
	3950 5150 3750 5150
Text HLabel 1150 7200 0    50   Output ~ 0
I2S2_MCK
$EndSCHEMATC
