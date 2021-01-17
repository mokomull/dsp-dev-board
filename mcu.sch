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
Text HLabel 4150 3100 2    50   Output ~ 0
~RESET
Text HLabel 4150 3700 2    50   Output ~ 0
SCL
Text HLabel 4150 3800 2    50   BiDi ~ 0
SDA
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
Wire Wire Line
	4150 3100 3900 3100
Wire Wire Line
	4150 3700 3900 3700
Wire Wire Line
	4150 3800 3900 3800
$EndSCHEMATC
