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
P 3000 3800
F 0 "U3" H 3000 911 50  0000 C CNN
F 1 "STM32F407VETx" H 3000 820 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 2300 1200 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 3000 3800 50  0001 C CNN
	1    3000 3800
	1    0    0    -1  
$EndComp
Text HLabel 4100 5700 2    50   Output ~ 0
MCLK
Text HLabel 4150 4100 2    50   Input ~ 0
BCLK
Text HLabel 4150 4000 2    50   Input ~ 0
WCLK
Text HLabel 4100 5100 2    50   Output ~ 0
I2S_SD
Text HLabel 4100 5000 2    50   Input ~ 0
I2Sext_SD
Wire Wire Line
	4100 5100 3900 5100
Wire Wire Line
	4100 5000 3900 5000
Wire Wire Line
	4100 5700 3900 5700
Text Notes 4400 5700 0    50   ~ 0
MCO2
Text Notes 4550 5000 0    50   ~ 0
data in
Text Notes 4550 5100 0    50   ~ 0
data out
Wire Wire Line
	4150 4000 3900 4000
Wire Wire Line
	4150 4100 3900 4100
Text Label 6350 3150 2    50   ~ 0
SWDIO
Wire Wire Line
	6350 3150 6450 3150
Text Label 6350 3250 2    50   ~ 0
SWCLK
Text Label 6350 3550 2    50   ~ 0
JTDI
Text Label 6350 3350 2    50   ~ 0
TRACESWO
Wire Wire Line
	6350 3250 6450 3250
Wire Wire Line
	6350 3650 6450 3650
Text Label 6350 3450 2    50   ~ 0
NJTRST
Wire Wire Line
	6350 3450 6450 3450
Wire Wire Line
	6350 3350 6450 3350
Wire Wire Line
	6350 3550 6450 3550
Text GLabel 6350 3650 0    50   Output ~ 0
3.3V
$Comp
L power:GND #PWR010
U 1 1 60166405
P 6350 3750
F 0 "#PWR010" H 6350 3500 50  0001 C CNN
F 1 "GND" H 6355 3577 50  0000 C CNN
F 2 "" H 6350 3750 50  0001 C CNN
F 3 "" H 6350 3750 50  0001 C CNN
	1    6350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3750 6450 3750
$Comp
L Connector_Generic:Conn_01x07 J4
U 1 1 601675AC
P 6650 3450
F 0 "J4" H 6730 3492 50  0000 L CNN
F 1 "debug" H 6730 3401 50  0000 L CNN
F 2 "" H 6650 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	1    0    0    -1  
$EndComp
Text Label 4150 2700 0    50   ~ 0
SWDIO
Wire Wire Line
	4150 2700 3900 2700
Text Label 4150 2800 0    50   ~ 0
SWCLK
Wire Wire Line
	4150 2800 3900 2800
Text Label 4150 2900 0    50   ~ 0
JTDI
Wire Wire Line
	4150 2900 3900 2900
Text Label 4150 3400 0    50   ~ 0
TRACESWO
Wire Wire Line
	4150 3400 3900 3400
Text Label 4150 3500 0    50   ~ 0
NJTRST
Wire Wire Line
	4150 3500 3900 3500
Text HLabel 4100 5800 2    50   Output ~ 0
SCLK
Text HLabel 4100 5900 2    50   Output ~ 0
~CSB
Text HLabel 4100 6000 2    50   Output ~ 0
SDOUT
Wire Wire Line
	4100 6000 3900 6000
Wire Wire Line
	4100 5800 3900 5800
Wire Wire Line
	4100 5900 3900 5900
$EndSCHEMATC
