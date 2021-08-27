EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2050 1400 0    50   ~ 0
ALU_connect
Text Label 1550 3450 3    50   ~ 0
ALU_connect
Text Label 1400 1900 3    50   ~ 0
Ins5
Text Label 1900 1900 3    50   ~ 0
Ins0
Text Label 1800 1900 3    50   ~ 0
Ins1
Text Label 1700 1900 3    50   ~ 0
Ins2
Text Label 1600 1900 3    50   ~ 0
Ins3
Text Label 1500 1900 3    50   ~ 0
Ins4
Text Label 1450 3450 3    50   ~ 0
Ins5
Text Label 1950 3450 3    50   ~ 0
Ins0
Text Label 1850 3450 3    50   ~ 0
Ins1
Text Label 1750 3450 3    50   ~ 0
Ins2
Text Label 1650 3450 3    50   ~ 0
Ins3
$Comp
L CPU_internal_elements:OctalBuffer UI2
U 1 1 610132D8
P 3050 1300
F 0 "UI2" H 3050 1275 50  0000 C CNN
F 1 "OctalBuffer" H 3050 1184 50  0000 C CNN
F 2 "" H 3050 1300 50  0001 C CNN
F 3 "" H 3050 1300 50  0001 C CNN
	1    3050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1000 2500 1000
Wire Wire Line
	2500 1000 2500 1550
Wire Wire Line
	2500 1550 2750 1550
Wire Wire Line
	2050 1100 2450 1100
Wire Wire Line
	2450 1100 2450 1650
Wire Wire Line
	2450 1650 2750 1650
Wire Wire Line
	2050 1200 2400 1200
Wire Wire Line
	2400 1200 2400 1750
Wire Wire Line
	2400 1750 2750 1750
Wire Wire Line
	2050 1300 2350 1300
Wire Wire Line
	2350 1300 2350 1850
Wire Wire Line
	2350 1850 2750 1850
Wire Wire Line
	2100 2550 2150 2550
Wire Wire Line
	2150 2550 2150 1950
Wire Wire Line
	2150 1950 2750 1950
Wire Wire Line
	2100 2650 2200 2650
Wire Wire Line
	2200 2650 2200 2050
Wire Wire Line
	2200 2050 2750 2050
Wire Wire Line
	2100 2750 2250 2750
Wire Wire Line
	2250 2750 2250 2150
Wire Wire Line
	2250 2150 2750 2150
Wire Wire Line
	2100 2850 2300 2850
Wire Wire Line
	2300 2850 2300 2250
Wire Wire Line
	2300 2250 2750 2250
$Comp
L MAX7000CPU-Gen2-rescue:74AHC1G08-74xGxx UI?
U 1 1 6101A286
P 2750 2650
AR Path="/6101A286" Ref="UI?"  Part="1" 
AR Path="/60FFC927/6101A286" Ref="UI4"  Part="1" 
F 0 "UI4" V 2725 2520 50  0000 R CNN
F 1 "74AHC1G08" H 2725 2826 50  0001 C CNN
F 2 "" H 2750 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2750 2650 50  0001 C CNN
	1    2750 2650
	0    -1   -1   0   
$EndComp
Text Label 2800 2950 3    50   ~ 0
Ins6
Text Label 2700 2950 3    50   ~ 0
Ins7
Wire Wire Line
	2050 1500 2050 2450
Wire Wire Line
	2050 2450 2350 2450
Wire Wire Line
	2350 2450 2350 3200
Wire Wire Line
	2350 3200 2600 3200
Wire Wire Line
	2100 3050 2300 3050
Wire Wire Line
	2300 3050 2300 3300
Wire Wire Line
	2300 3300 2600 3300
$Comp
L MAX7000CPU-Gen2-rescue:74AHC1G08-74xGxx UI?
U 1 1 61022A3F
P 2900 3250
AR Path="/61022A3F" Ref="UI?"  Part="1" 
AR Path="/60FFC927/61022A3F" Ref="UI5"  Part="1" 
F 0 "UI5" H 3050 3150 50  0000 C CNN
F 1 "a" H 2950 3000 50  0001 C CNN
F 2 "" H 2900 3250 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 2900 3250 50  0001 C CNN
	1    2900 3250
	1    0    0    -1  
$EndComp
Text Label 2100 2950 0    50   ~ 0
CarryOut
Text Label 3150 3250 0    50   ~ 0
AequalB_Out
Text Label 1000 900  2    50   ~ 0
A0
Text Label 1000 1000 2    50   ~ 0
A1
Text Label 1000 1100 2    50   ~ 0
A2
Text Label 1000 1200 2    50   ~ 0
A3
Text Label 1000 1350 2    50   ~ 0
B0
Text Label 1000 1450 2    50   ~ 0
B1
Text Label 1000 1550 2    50   ~ 0
B2
Text Label 1000 1650 2    50   ~ 0
B3
$Comp
L CPU_internal_elements:74181 UI1
U 1 1 61026E63
P 1250 700
F 0 "UI1" H 1525 725 50  0000 C CNN
F 1 "74181" H 1525 634 50  0000 C CNN
F 2 "" H 1250 700 50  0001 C CNN
F 3 "" H 1250 700 50  0001 C CNN
	1    1250 700 
	1    0    0    -1  
$EndComp
$Comp
L CPU_internal_elements:74181 UI3
U 1 1 61029705
P 1300 2250
F 0 "UI3" H 1575 2275 50  0000 C CNN
F 1 "74181" H 1575 2184 50  0000 C CNN
F 2 "" H 1300 2250 50  0001 C CNN
F 3 "" H 1300 2250 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
Text Label 1050 2450 2    50   ~ 0
A4
Text Label 1050 2550 2    50   ~ 0
A5
Text Label 1050 2650 2    50   ~ 0
A6
Text Label 1050 2750 2    50   ~ 0
A7
Text Label 1050 2900 2    50   ~ 0
B4
Text Label 1050 3000 2    50   ~ 0
B5
Text Label 1050 3100 2    50   ~ 0
B6
Text Label 1050 3200 2    50   ~ 0
B7
Text Label 3350 1550 0    50   ~ 0
O0
Text Label 3350 1650 0    50   ~ 0
O1
Text Label 3350 1750 0    50   ~ 0
O2
Text Label 3350 1850 0    50   ~ 0
O3
Text Label 3350 1950 0    50   ~ 0
O4
Text Label 3350 2050 0    50   ~ 0
O5
Text Label 3350 2150 0    50   ~ 0
O6
Text Label 3350 2250 0    50   ~ 0
O7
NoConn ~ -17700 -11900
$Comp
L 4xxx:4013 UI?
U 1 1 612C16D4
P 5200 1400
F 0 "UI?" H 5200 1881 50  0000 C CNN
F 1 "4013" H 5200 1790 50  0000 C CNN
F 2 "" H 5200 1400 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 5200 1400 50  0001 C CNN
	1    5200 1400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4013 UI?
U 1 1 612C652D
P 6150 1400
F 0 "UI?" H 6150 1881 50  0000 C CNN
F 1 "4013" H 6150 1790 50  0000 C CNN
F 2 "" H 6150 1400 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 6150 1400 50  0001 C CNN
	1    6150 1400
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4013 UI?
U 1 1 612CB7A3
P 7050 1400
F 0 "UI?" H 7050 1881 50  0000 C CNN
F 1 "4013" H 7050 1790 50  0000 C CNN
F 2 "" H 7050 1400 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC14013B-D.PDF" H 7050 1400 50  0001 C CNN
	1    7050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 850  4900 1300
Wire Wire Line
	5500 1300 5600 1300
Connection ~ 5600 1300
Wire Wire Line
	5600 1300 5850 1300
Wire Wire Line
	6450 1300 6600 1300
Connection ~ 6600 1300
Wire Wire Line
	6600 1300 6750 1300
Wire Wire Line
	7350 1500 7500 1500
Wire Wire Line
	7500 1500 7500 850 
Wire Wire Line
	7500 850  4900 850 
Wire Wire Line
	7350 1300 7550 1300
Wire Wire Line
	5850 1400 5850 1750
Wire Wire Line
	5850 1750 4900 1750
Wire Wire Line
	4900 1750 4900 1550
Wire Wire Line
	5850 1750 6750 1750
Wire Wire Line
	6750 1750 6750 1400
Connection ~ 5850 1750
Wire Wire Line
	7050 1700 6150 1700
Connection ~ 5200 1700
Wire Wire Line
	5200 1700 4750 1700
Connection ~ 6150 1700
Wire Wire Line
	6150 1700 5200 1700
NoConn ~ 5200 1100
NoConn ~ 6150 1100
NoConn ~ 7050 1100
Wire Wire Line
	5500 1500 5700 1500
Wire Wire Line
	6450 1500 6700 1500
Wire Wire Line
	6700 1500 6700 1800
Wire Wire Line
	7500 1500 7650 1500
Connection ~ 7500 1500
Wire Wire Line
	7550 1800 7300 1800
Wire Wire Line
	7550 1300 7550 1800
Wire Wire Line
	7650 1850 7400 1850
Wire Wire Line
	7650 1500 7650 1850
Wire Wire Line
	6700 1800 7200 1800
Wire Wire Line
	6600 1900 7100 1900
Wire Wire Line
	6600 1300 6600 1900
Wire Wire Line
	5700 1950 7000 1950
Wire Wire Line
	5700 1500 5700 1950
Wire Wire Line
	5600 2000 6900 2000
Wire Wire Line
	5600 1300 5600 2000
Wire Wire Line
	7400 1850 7400 2050
Wire Wire Line
	7000 1950 7000 2250
Text Label 8450 2150 0    50   ~ 0
Count++
$Comp
L 4xxx:4081 UI?
U 1 1 61319D67
P 8150 2150
F 0 "UI?" H 8150 2475 50  0000 C CNN
F 1 "4081" H 8150 2384 50  0000 C CNN
F 2 "" H 8150 2150 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 8150 2150 50  0001 C CNN
	1    8150 2150
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4081 UI?
U 1 1 6131DB9C
P 8150 2700
F 0 "UI?" H 8150 3025 50  0000 C CNN
F 1 "4081" H 8150 2934 50  0000 C CNN
F 2 "" H 8150 2700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 8150 2700 50  0001 C CNN
	1    8150 2700
	1    0    0    -1  
$EndComp
Text Label 8450 2700 0    50   ~ 0
Counter_Out
Wire Wire Line
	7400 2050 7400 2600
Wire Wire Line
	7400 2600 7850 2600
Connection ~ 7400 2050
Wire Wire Line
	6900 2800 7850 2800
Wire Wire Line
	6900 2000 6900 2800
Text Label 4750 1700 2    50   ~ 0
Cycle_Reset
Wire Wire Line
	4750 1550 4750 1500
Wire Wire Line
	4750 1550 4900 1550
Connection ~ 4900 1550
Wire Wire Line
	4900 1550 4900 1400
Text Label 4750 1500 2    50   ~ 0
GlobalClock
$Comp
L 4xxx:4081 UI?
U 1 1 61327B02
P 8150 3250
F 0 "UI?" H 8150 3575 50  0000 C CNN
F 1 "4081" H 8150 3484 50  0000 C CNN
F 2 "" H 8150 3250 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 8150 3250 50  0001 C CNN
	1    8150 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2600 7400 3150
Wire Wire Line
	7400 3150 7850 3150
Connection ~ 7400 2600
Wire Wire Line
	7100 3350 7850 3350
Wire Wire Line
	7100 1900 7100 3350
Text Label 8450 3250 0    50   ~ 0
Instruction_Read
$Comp
L 4xxx:4081 UI?
U 1 1 6132F143
P 8150 3800
F 0 "UI?" H 8150 4125 50  0000 C CNN
F 1 "4081" H 8150 4034 50  0000 C CNN
F 2 "" H 8150 3800 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 8150 3800 50  0001 C CNN
	1    8150 3800
	1    0    0    -1  
$EndComp
Text Label 8450 3800 0    50   ~ 0
RamAddr_DriveBus
Wire Wire Line
	7300 3700 7850 3700
Wire Wire Line
	7300 1800 7300 3700
Wire Wire Line
	7000 2250 7000 3900
Wire Wire Line
	7000 3900 7850 3900
Connection ~ 7000 2250
Wire Wire Line
	7400 2050 7850 2050
Wire Wire Line
	7000 2250 7850 2250
$Comp
L 4xxx:4081 UI?
U 1 1 6133BDAB
P 8150 4350
F 0 "UI?" H 8150 4675 50  0000 C CNN
F 1 "4081" H 8150 4584 50  0000 C CNN
F 2 "" H 8150 4350 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4073bms-81bms-82bms.pdf" H 8150 4350 50  0001 C CNN
	1    8150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3700 7300 4250
Wire Wire Line
	7300 4250 7850 4250
Connection ~ 7300 3700
Wire Wire Line
	7200 4450 7850 4450
Wire Wire Line
	7200 1800 7200 4450
Text Label 8450 4350 0    50   ~ 0
Module_Read
$EndSCHEMATC
