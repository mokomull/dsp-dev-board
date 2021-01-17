EESchema Schematic File Version 4
EELAYER 30 0
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
L Amplifier_Operational:TL072 U101
U 1 1 5FFB8A7E
P 8300 1800
F 0 "U101" H 8300 2167 50  0000 C CNN
F 1 "TL072" H 8300 2076 50  0000 C CNN
F 2 "" H 8300 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8300 1800 50  0001 C CNN
	1    8300 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R101
U 1 1 5FFBB5A8
P 9400 1800
F 0 "R101" V 9193 1800 50  0000 C CNN
F 1 "47" V 9284 1800 50  0000 C CNN
F 2 "" V 9330 1800 50  0001 C CNN
F 3 "~" H 9400 1800 50  0001 C CNN
	1    9400 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FFBC04C
P 9850 2300
F 0 "#PWR0101" H 9850 2050 50  0001 C CNN
F 1 "GND" H 9855 2127 50  0000 C CNN
F 2 "" H 9850 2300 50  0001 C CNN
F 3 "" H 9850 2300 50  0001 C CNN
	1    9850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2300 9850 2200
$Comp
L Device:D_Schottky D102
U 1 1 5FFC1783
P 9850 2050
F 0 "D102" V 9804 2129 50  0000 L CNN
F 1 "SS14" V 9895 2129 50  0000 L CNN
F 2 "" H 9850 2050 50  0001 C CNN
F 3 "~" H 9850 2050 50  0001 C CNN
	1    9850 2050
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U102
U 1 1 5FFC29B1
P 2050 2200
F 0 "U102" H 2050 2442 50  0000 C CNN
F 1 "AMS1117-3.3" H 2050 2351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2050 2400 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2150 1950 50  0001 C CNN
	1    2050 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FFC34F5
P 2050 2550
F 0 "#PWR0103" H 2050 2300 50  0001 C CNN
F 1 "GND" H 2055 2377 50  0000 C CNN
F 2 "" H 2050 2550 50  0001 C CNN
F 3 "" H 2050 2550 50  0001 C CNN
	1    2050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2550 2050 2500
Text GLabel 2750 2200 2    50   Output ~ 0
3.3V
Wire Wire Line
	2750 2200 2550 2200
Text GLabel 1650 2200 0    50   Input ~ 0
9V
Wire Wire Line
	1750 2200 1650 2200
Text GLabel 9850 1350 1    50   Input ~ 0
3.3V
Wire Wire Line
	9850 1350 9850 1400
$Comp
L Device:D_Schottky D101
U 1 1 5FFC2017
P 9850 1550
F 0 "D101" V 9804 1629 50  0000 L CNN
F 1 "SS14" V 9895 1629 50  0000 L CNN
F 2 "" H 9850 1550 50  0001 C CNN
F 3 "~" H 9850 1550 50  0001 C CNN
	1    9850 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 1700 9850 1800
Wire Wire Line
	9550 1800 9850 1800
Connection ~ 9850 1800
Wire Wire Line
	9850 1800 9850 1900
$Comp
L Device:C C101
U 1 1 5FFCB053
P 8950 1800
F 0 "C101" V 8698 1800 50  0000 C CNN
F 1 "1u" V 8789 1800 50  0000 C CNN
F 2 "" H 8988 1650 50  0001 C CNN
F 3 "~" H 8950 1800 50  0001 C CNN
	1    8950 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 1800 9250 1800
Wire Wire Line
	8800 1800 8650 1800
$Comp
L Device:C C102
U 1 1 5FFF9DB5
P 1450 3500
F 0 "C102" H 1565 3546 50  0000 L CNN
F 1 "0.1u" H 1565 3455 50  0000 L CNN
F 2 "" H 1488 3350 50  0001 C CNN
F 3 "~" H 1450 3500 50  0001 C CNN
	1    1450 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FFFA625
P 1450 3700
F 0 "#PWR0102" H 1450 3450 50  0001 C CNN
F 1 "GND" H 1455 3527 50  0000 C CNN
F 2 "" H 1450 3700 50  0001 C CNN
F 3 "" H 1450 3700 50  0001 C CNN
	1    1450 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3700 1450 3650
$Comp
L Device:R R102
U 1 1 5FFFAD1A
P 2050 3950
F 0 "R102" H 2120 3996 50  0000 L CNN
F 1 "3.3k" H 2120 3905 50  0000 L CNN
F 2 "" V 1980 3950 50  0001 C CNN
F 3 "~" H 2050 3950 50  0001 C CNN
	1    2050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3800 2050 3650
$Comp
L power:GND #PWR0104
U 1 1 5FFFB4CC
P 2050 4150
F 0 "#PWR0104" H 2050 3900 50  0001 C CNN
F 1 "GND" H 2055 3977 50  0000 C CNN
F 2 "" H 2050 4150 50  0001 C CNN
F 3 "" H 2050 4150 50  0001 C CNN
	1    2050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4150 2050 4100
Wire Wire Line
	1450 3350 1450 3250
Wire Wire Line
	1450 3250 1750 3250
Text GLabel 1200 3250 0    50   Input ~ 0
9V
Wire Wire Line
	1200 3250 1450 3250
Connection ~ 1450 3250
$Comp
L Device:R R103
U 1 1 5FFFC6B4
P 2500 3650
F 0 "R103" V 2293 3650 50  0000 C CNN
F 1 "10k" V 2384 3650 50  0000 C CNN
F 2 "" V 2430 3650 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 3650 2050 3650
Wire Wire Line
	2050 3650 2050 3550
Connection ~ 2050 3650
Wire Wire Line
	2350 3250 2800 3250
Wire Wire Line
	2800 3250 2800 3650
Wire Wire Line
	2800 3650 2650 3650
$Comp
L Device:C C103
U 1 1 600014A5
P 3150 3500
F 0 "C103" H 3265 3546 50  0000 L CNN
F 1 "0.1u" H 3265 3455 50  0000 L CNN
F 2 "" H 3188 3350 50  0001 C CNN
F 3 "~" H 3150 3500 50  0001 C CNN
	1    3150 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 600014AB
P 3150 3700
F 0 "#PWR0105" H 3150 3450 50  0001 C CNN
F 1 "GND" H 3155 3527 50  0000 C CNN
F 2 "" H 3150 3700 50  0001 C CNN
F 3 "" H 3150 3700 50  0001 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 3700 3150 3650
Wire Wire Line
	2800 3250 3150 3250
Wire Wire Line
	3150 3250 3150 3350
Connection ~ 2800 3250
Text GLabel 3400 3250 2    50   Output ~ 0
1.8V
Wire Wire Line
	3400 3250 3150 3250
Connection ~ 3150 3250
$Comp
L Connector:Barrel_Jack J1
U 1 1 60004038
P 2050 1500
F 0 "J1" H 2107 1825 50  0000 C CNN
F 1 "Barrel_Jack" H 2107 1734 50  0000 C CNN
F 2 "" H 2100 1460 50  0001 C CNN
F 3 "~" H 2100 1460 50  0001 C CNN
	1    2050 1500
	1    0    0    -1  
$EndComp
Text GLabel 2500 1400 2    50   Output ~ 0
9V
Wire Wire Line
	2500 1400 2350 1400
$Comp
L power:GND #PWR03
U 1 1 60005258
P 2500 1700
F 0 "#PWR03" H 2500 1450 50  0001 C CNN
F 1 "GND" H 2505 1527 50  0000 C CNN
F 2 "" H 2500 1700 50  0001 C CNN
F 3 "" H 2500 1700 50  0001 C CNN
	1    2500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1700 2500 1600
Wire Wire Line
	2500 1600 2350 1600
$Comp
L Device:C C1
U 1 1 60006D71
P 2550 2450
F 0 "C1" H 2665 2496 50  0000 L CNN
F 1 "0.1u" H 2665 2405 50  0000 L CNN
F 2 "" H 2588 2300 50  0001 C CNN
F 3 "~" H 2550 2450 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60006D77
P 2550 2650
F 0 "#PWR04" H 2550 2400 50  0001 C CNN
F 1 "GND" H 2555 2477 50  0000 C CNN
F 2 "" H 2550 2650 50  0001 C CNN
F 3 "" H 2550 2650 50  0001 C CNN
	1    2550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2650 2550 2600
Wire Wire Line
	2550 2200 2550 2300
Text Notes 7400 7500 0    50   ~ 0
audio dev board
$Comp
L Regulator_Linear:LM317A U2
U 1 1 6000926A
P 2050 3300
F 0 "U2" H 2050 3615 50  0000 C CNN
F 1 "LM317A" H 2050 3524 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 2100 3350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Unisonic-Tech-LM317AG-TN3-R_C75510.pdf" H 2100 3350 50  0001 C CNN
	1    2050 3300
	1    0    0    -1  
$EndComp
Connection ~ 2550 2200
Wire Wire Line
	2550 2200 2350 2200
Text Notes 950  950  0    50   ~ 10
Power!
$Comp
L Connector:AudioJack2 J2
U 1 1 6002B25D
P 4300 1800
F 0 "J2" H 4332 2125 50  0000 C CNN
F 1 "AudioJack2" H 4332 2034 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "~" H 4300 1800 50  0001 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6002C64C
P 4800 1500
F 0 "#PWR05" H 4800 1250 50  0001 C CNN
F 1 "GND" H 4805 1327 50  0000 C CNN
F 2 "" H 4800 1500 50  0001 C CNN
F 3 "" H 4800 1500 50  0001 C CNN
	1    4800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1500 4800 1450
Wire Wire Line
	4800 1450 4600 1450
Wire Wire Line
	4600 1450 4600 1700
Wire Wire Line
	4600 1700 4500 1700
Text GLabel 4600 1800 2    50   Output ~ 10
jack_in
Wire Wire Line
	4600 1800 4500 1800
$Comp
L Connector:AudioJack2 J3
U 1 1 6003364D
P 4300 2400
F 0 "J3" H 4332 2725 50  0000 C CNN
F 1 "AudioJack2" H 4332 2634 50  0000 C CNN
F 2 "" H 4300 2400 50  0001 C CNN
F 3 "~" H 4300 2400 50  0001 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60033653
P 4800 2100
F 0 "#PWR06" H 4800 1850 50  0001 C CNN
F 1 "GND" H 4805 1927 50  0000 C CNN
F 2 "" H 4800 2100 50  0001 C CNN
F 3 "" H 4800 2100 50  0001 C CNN
	1    4800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2100 4800 2050
Wire Wire Line
	4800 2050 4600 2050
Wire Wire Line
	4600 2050 4600 2300
Wire Wire Line
	4600 2300 4500 2300
Text GLabel 4600 2400 2    50   Input ~ 10
jack_out
Wire Wire Line
	4600 2400 4500 2400
Text Notes 3900 1150 0    50   ~ 10
Audio IO!
$Sheet
S 6150 5000 750  1000
U 60038522
F0 "MCU" 50
F1 "mcu.sch" 50
F2 "MCLK" O R 6900 5200 50 
F3 "BCLK" I R 6900 5500 50 
F4 "WCLK" I R 6900 5600 50 
F5 "~RESET" O R 6900 5100 50 
F6 "SCL" O R 6900 5800 50 
F7 "SDA" B R 6900 5900 50 
F8 "I2S_SD" O R 6900 5400 50 
F9 "I2Sext_SD" I R 6900 5300 50 
$EndSheet
$Sheet
S 7550 4850 900  1150
U 60041F8F
F0 "Codec" 50
F1 "codec.sch" 50
F2 "audio_in" I L 7550 4950 50 
F3 "audio_out" O R 8450 4950 50 
F4 "~RESET" I L 7550 5100 50 
F5 "MCLK" I L 7550 5200 50 
F6 "DOUT" O L 7550 5300 50 
F7 "DIN" I L 7550 5400 50 
F8 "BCLK" I L 7550 5500 50 
F9 "WCLK" I L 7550 5600 50 
F10 "SCL" I L 7550 5800 50 
F11 "SDA" B L 7550 5900 50 
$EndSheet
Text Label 10250 1800 0    50   ~ 0
audio_in
Wire Wire Line
	10250 1800 9850 1800
Text Label 7400 4950 2    50   ~ 0
audio_in
Wire Wire Line
	7400 4950 7550 4950
$Comp
L Device:R R5
U 1 1 60086C44
P 8250 2350
F 0 "R5" V 8043 2350 50  0000 C CNN
F 1 "10k" V 8134 2350 50  0000 C CNN
F 2 "" V 8180 2350 50  0001 C CNN
F 3 "~" H 8250 2350 50  0001 C CNN
	1    8250 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 2350 8650 2350
Wire Wire Line
	8650 2350 8650 1800
Connection ~ 8650 1800
Wire Wire Line
	8650 1800 8600 1800
Text GLabel 6850 1900 0    50   Input ~ 10
jack_in
$Comp
L Device:C C2
U 1 1 6009770B
P 7200 1900
F 0 "C2" V 6948 1900 50  0000 C CNN
F 1 "1u" V 7039 1900 50  0000 C CNN
F 2 "" H 7238 1750 50  0001 C CNN
F 3 "~" H 7200 1900 50  0001 C CNN
	1    7200 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1900 7050 1900
Text GLabel 2050 4750 1    50   Input ~ 0
9V
$Comp
L Device:R R1
U 1 1 600A09B1
P 2050 5050
F 0 "R1" H 2120 5096 50  0000 L CNN
F 1 "10k" H 2120 5005 50  0000 L CNN
F 2 "" V 1980 5050 50  0001 C CNN
F 3 "~" H 2050 5050 50  0001 C CNN
	1    2050 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 600A106D
P 2050 5500
F 0 "R2" H 2120 5546 50  0000 L CNN
F 1 "10k" H 2120 5455 50  0000 L CNN
F 2 "" V 1980 5500 50  0001 C CNN
F 3 "~" H 2050 5500 50  0001 C CNN
	1    2050 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5200 2050 5300
$Comp
L power:GND #PWR02
U 1 1 600A2818
P 2050 5750
F 0 "#PWR02" H 2050 5500 50  0001 C CNN
F 1 "GND" H 2055 5577 50  0000 C CNN
F 2 "" H 2050 5750 50  0001 C CNN
F 3 "" H 2050 5750 50  0001 C CNN
	1    2050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 5750 2050 5650
Wire Wire Line
	2050 4750 2050 4900
Wire Wire Line
	2050 5300 2400 5300
Connection ~ 2050 5300
Wire Wire Line
	2050 5300 2050 5350
Text GLabel 2400 5300 2    50   Output ~ 0
4.5V
Text GLabel 7950 1700 0    50   Input ~ 0
4.5V
Wire Wire Line
	7350 1900 7400 1900
Wire Wire Line
	8000 1900 7850 1900
$Comp
L Device:R R3
U 1 1 60088EB7
P 7550 1900
F 0 "R3" V 7343 1900 50  0000 C CNN
F 1 "10k" V 7434 1900 50  0000 C CNN
F 2 "" V 7480 1900 50  0001 C CNN
F 3 "~" H 7550 1900 50  0001 C CNN
	1    7550 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 1900 7850 2350
Wire Wire Line
	7850 2350 8100 2350
Connection ~ 7850 1900
Wire Wire Line
	7850 1900 7700 1900
Wire Wire Line
	7950 1700 8000 1700
Wire Wire Line
	8800 3050 8650 3050
$Comp
L Device:R R6
U 1 1 600B8877
P 8250 3600
F 0 "R6" V 8043 3600 50  0000 C CNN
F 1 "10k" V 8134 3600 50  0000 C CNN
F 2 "" V 8180 3600 50  0001 C CNN
F 3 "~" H 8250 3600 50  0001 C CNN
	1    8250 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 3600 8650 3600
Wire Wire Line
	8650 3600 8650 3050
Connection ~ 8650 3050
Wire Wire Line
	8650 3050 8600 3050
$Comp
L Device:C C3
U 1 1 600B8881
P 7200 3150
F 0 "C3" V 6948 3150 50  0000 C CNN
F 1 "1u" V 7039 3150 50  0000 C CNN
F 2 "" H 7238 3000 50  0001 C CNN
F 3 "~" H 7200 3150 50  0001 C CNN
	1    7200 3150
	0    1    1    0   
$EndComp
Text GLabel 7950 2950 0    50   Input ~ 0
4.5V
Wire Wire Line
	7350 3150 7400 3150
Wire Wire Line
	8000 3150 7850 3150
$Comp
L Device:R R4
U 1 1 600B888A
P 7550 3150
F 0 "R4" V 7343 3150 50  0000 C CNN
F 1 "10k" V 7434 3150 50  0000 C CNN
F 2 "" V 7480 3150 50  0001 C CNN
F 3 "~" H 7550 3150 50  0001 C CNN
	1    7550 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3150 7850 3600
Wire Wire Line
	7850 3600 8100 3600
Connection ~ 7850 3150
Wire Wire Line
	7850 3150 7700 3150
Wire Wire Line
	7950 2950 8000 2950
$Comp
L Amplifier_Operational:TL072 U1
U 2 1 600BA0CD
P 8300 3050
F 0 "U1" H 8300 3417 50  0000 C CNN
F 1 "TL072" H 8300 3326 50  0000 C CNN
F 2 "" H 8300 3050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8300 3050 50  0001 C CNN
	2    8300 3050
	1    0    0    -1  
$EndComp
Text Label 6750 3150 2    50   ~ 0
audio_out
Wire Wire Line
	6750 3150 7050 3150
Text GLabel 8800 3050 2    50   Output ~ 0
jack_out
Text Label 8600 4950 0    50   ~ 0
audio_out
Wire Wire Line
	8600 4950 8450 4950
$Comp
L Amplifier_Operational:TL072 U1
U 3 1 600C8CB7
P 1250 5300
F 0 "U1" H 1208 5346 50  0000 L CNN
F 1 "TL072" H 1208 5255 50  0000 L CNN
F 2 "" H 1250 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1250 5300 50  0001 C CNN
	3    1250 5300
	1    0    0    -1  
$EndComp
Text GLabel 1150 4850 1    50   Input ~ 0
9V
Wire Wire Line
	1150 4850 1150 5000
$Comp
L power:GND #PWR01
U 1 1 600D21C7
P 1150 5700
F 0 "#PWR01" H 1150 5450 50  0001 C CNN
F 1 "GND" H 1155 5527 50  0000 C CNN
F 2 "" H 1150 5700 50  0001 C CNN
F 3 "" H 1150 5700 50  0001 C CNN
	1    1150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5700 1150 5600
Wire Wire Line
	6900 5100 7550 5100
Wire Wire Line
	6900 5200 7550 5200
Wire Wire Line
	6900 5300 7550 5300
Wire Wire Line
	6900 5400 7550 5400
Wire Wire Line
	6900 5500 7550 5500
Wire Wire Line
	6900 5600 7550 5600
Wire Wire Line
	6900 5800 7550 5800
Wire Wire Line
	6900 5900 7550 5900
$EndSCHEMATC
