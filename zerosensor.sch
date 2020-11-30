EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Zero Sensor"
Date "2020-11-30"
Rev "V1.0"
Comp ""
Comment1 "ADC from MAX116xx Family (modified footprint fits SOT23-8 and SOIC8 chips)"
Comment2 "Bridge \"3.3V Select\" jumper to select which 3.3V source to use on assembly"
Comment3 "Bridge \"Power In\" jumper when feeding external power via \"Power MOSFET\" connector"
Comment4 "Skip power regulators if powering from USB port"
$EndDescr
$Comp
L Connector:Raspberry_Pi_2_3 J2
U 1 1 5FB020EF
P 2050 2500
F 0 "J2" H 1350 1200 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 1450 3800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Horizontal" H 2050 2500 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2050 2500 50  0001 C CNN
	1    2050 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5FB03571
P 2250 6475
F 0 "J5" H 2350 6240 50  0000 R CNN
F 1 "Strobe" H 2222 6498 50  0001 R CNN
F 2 "Connector_Phoenix_MC:PhoenixContact_MCV_1,5_3-G-3.5_1x03_P3.50mm_Vertical" H 2250 6475 50  0001 C CNN
F 3 "~" H 2250 6475 50  0001 C CNN
	1    2250 6475
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BC848 Q1
U 1 1 5FB04EBA
P 1000 6825
F 0 "Q1" H 1191 6871 50  0000 L CNN
F 1 "BC848" H 1191 6780 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1200 6925 50  0001 C CNN
F 3 "~" H 1000 6825 50  0001 C CNN
	1    1000 6825
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:SUD45P03-09 Q2
U 1 1 5FB06185
P 1500 6475
F 0 "Q2" H 1704 6429 50  0000 L CNN
F 1 "AO D4185" H 1704 6520 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 1695 6400 50  0001 L CIN
F 3 "https://www.vishay.com/docs/65595/sud45p03.pdf" H 1500 6475 50  0001 C CNN
	1    1500 6475
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5FB06C6C
P 750 6550
F 0 "R1" V 543 6550 50  0000 C CNN
F 1 "470" V 634 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 680 6550 50  0001 C CNN
F 3 "~" H 750 6550 50  0001 C CNN
	1    750  6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5FB0711B
P 1100 6175
F 0 "R3" H 1170 6221 50  0000 L CNN
F 1 "10k" H 1170 6130 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1030 6175 50  0001 C CNN
F 3 "~" H 1100 6175 50  0001 C CNN
	1    1100 6175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7025 1100 7375
Wire Wire Line
	1950 7375 1950 6575
Wire Wire Line
	1950 6575 2050 6575
Wire Wire Line
	1100 7375 1600 7375
Wire Wire Line
	1100 6325 1100 6475
Wire Wire Line
	1100 6475 1300 6475
Wire Wire Line
	1100 6475 1100 6625
Connection ~ 1100 6475
Wire Wire Line
	2050 6375 1850 6375
Wire Wire Line
	1850 6375 1850 5925
Wire Wire Line
	1850 5925 1600 5925
Wire Wire Line
	1100 5925 1100 6025
Wire Wire Line
	1600 5925 1600 6275
Connection ~ 1600 5925
Wire Wire Line
	1600 5925 1100 5925
Wire Wire Line
	2050 6475 1850 6475
Wire Wire Line
	1850 6475 1850 6775
Wire Wire Line
	1850 6775 1600 6775
Wire Wire Line
	1600 6775 1600 6675
$Comp
L power:GND #PWR010
U 1 1 5FB0BD6A
P 1100 7475
F 0 "#PWR010" H 1100 7225 50  0001 C CNN
F 1 "GND" H 1105 7302 50  0000 C CNN
F 2 "" H 1100 7475 50  0001 C CNN
F 3 "" H 1100 7475 50  0001 C CNN
	1    1100 7475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7475 1100 7375
Connection ~ 1100 7375
Text GLabel 750  6300 1    50   Input ~ 0
Strobe
$Comp
L Device:R R2
U 1 1 5FB0CBAF
P 750 7125
F 0 "R2" H 680 7079 50  0000 R CNN
F 1 "4.7k" H 680 7170 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 680 7125 50  0001 C CNN
F 3 "~" H 750 7125 50  0001 C CNN
	1    750  7125
	-1   0    0    1   
$EndComp
Wire Wire Line
	750  7275 750  7375
Wire Wire Line
	750  7375 1100 7375
Wire Wire Line
	750  6975 750  6825
Connection ~ 750  6825
Wire Wire Line
	750  6825 800  6825
$Comp
L power:+5V #PWR03
U 1 1 5FB138FB
P 1850 850
F 0 "#PWR03" H 1850 700 50  0001 C CNN
F 1 "+5V" H 1865 1023 50  0000 C CNN
F 2 "" H 1850 850 50  0001 C CNN
F 3 "" H 1850 850 50  0001 C CNN
	1    1850 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FB13D11
P 2000 4100
F 0 "#PWR04" H 2000 3850 50  0001 C CNN
F 1 "GND" H 2005 3927 50  0000 C CNN
F 2 "" H 2000 4100 50  0001 C CNN
F 3 "" H 2000 4100 50  0001 C CNN
	1    2000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 850  1850 1000
$Comp
L power:+3.3V #PWR06
U 1 1 5FB1709E
P 4800 3850
F 0 "#PWR06" H 4800 3700 50  0001 C CNN
F 1 "+3.3V" H 4815 4023 50  0000 C CNN
F 2 "" H 4800 3850 50  0001 C CNN
F 3 "" H 4800 3850 50  0001 C CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
Text GLabel 3050 3200 2    50   Output ~ 0
Strobe
Wire Wire Line
	2000 3950 2000 4100
Connection ~ 2000 3950
Wire Wire Line
	2350 3950 2350 3800
Wire Wire Line
	2850 3200 3050 3200
Text GLabel 1100 2100 0    50   Output ~ 0
I2S_BCLK
Text GLabel 1100 2300 0    50   Output ~ 0
I2S_LRCLK
Text GLabel 1100 2400 0    50   Input ~ 0
I2S_DOUT
Wire Wire Line
	1100 2100 1250 2100
Wire Wire Line
	1100 2300 1250 2300
Wire Wire Line
	1100 2400 1250 2400
Text GLabel 1100 2700 0    50   Input ~ 0
Button1
Text GLabel 1100 2800 0    50   Input ~ 0
Button2
Text GLabel 3050 2200 2    50   Output ~ 0
LED
$Comp
L Device:R R6
U 1 1 5FBE87F9
P 1900 4875
F 0 "R6" H 1830 4829 50  0000 R CNN
F 1 "10k" H 1830 4920 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1830 4875 50  0001 C CNN
F 3 "~" H 1900 4875 50  0001 C CNN
	1    1900 4875
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5FBE91E6
P 1750 4875
F 0 "R5" H 1600 4925 50  0000 L CNN
F 1 "10k" H 1550 4825 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1680 4875 50  0001 C CNN
F 3 "~" H 1750 4875 50  0001 C CNN
	1    1750 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5025 1750 5100
Wire Wire Line
	1900 5025 1900 5200
Wire Wire Line
	1750 4725 1750 4675
Wire Wire Line
	1750 4675 1900 4675
Wire Wire Line
	1900 4675 1900 4725
$Comp
L power:+3.3V #PWR013
U 1 1 5FC017F7
P 1900 4600
F 0 "#PWR013" H 1900 4450 50  0001 C CNN
F 1 "+3.3V" H 2050 4625 50  0000 C CNN
F 2 "" H 1900 4600 50  0001 C CNN
F 3 "" H 1900 4600 50  0001 C CNN
	1    1900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4600 1900 4675
Connection ~ 1900 4675
$Comp
L Device:R R4
U 1 1 5FC25B2F
P 875 5250
F 0 "R4" H 725 5300 50  0000 L CNN
F 1 "91" H 725 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 805 5250 50  0001 C CNN
F 3 "~" H 875 5250 50  0001 C CNN
	1    875  5250
	1    0    0    -1  
$EndComp
Text GLabel 875  4700 1    50   Input ~ 0
LED
$Comp
L power:GND #PWR012
U 1 1 5FC2E773
P 875 5450
F 0 "#PWR012" H 875 5200 50  0001 C CNN
F 1 "GND" H 880 5277 50  0000 C CNN
F 2 "" H 875 5450 50  0001 C CNN
F 3 "" H 875 5450 50  0001 C CNN
	1    875  5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male I2S1
U 1 1 5FC563AC
P 4325 7025
F 0 "I2S1" H 4433 7406 50  0000 C CNN
F 1 "I2S" H 4433 7315 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 4325 7025 50  0001 C CNN
F 3 "~" H 4325 7025 50  0001 C CNN
	1    4325 7025
	1    0    0    -1  
$EndComp
Text GLabel 4825 7025 2    50   Input ~ 0
I2S_BCLK
Text GLabel 4825 6825 2    50   Input ~ 0
I2S_LRCLK
Text GLabel 4825 6925 2    50   Output ~ 0
I2S_DOUT
Wire Wire Line
	4525 6825 4825 6825
Wire Wire Line
	4525 6925 4825 6925
Wire Wire Line
	4525 7025 4825 7025
Wire Wire Line
	4525 7125 4825 7125
$Comp
L power:GND #PWR0101
U 1 1 5FC6F465
P 4825 7325
F 0 "#PWR0101" H 4825 7075 50  0001 C CNN
F 1 "GND" H 4830 7152 50  0000 C CNN
F 2 "" H 4825 7325 50  0001 C CNN
F 3 "" H 4825 7325 50  0001 C CNN
	1    4825 7325
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5FC6F953
P 4675 6675
F 0 "#PWR0102" H 4675 6525 50  0001 C CNN
F 1 "+3.3V" H 4690 6848 50  0000 C CNN
F 2 "" H 4675 6675 50  0001 C CNN
F 3 "" H 4675 6675 50  0001 C CNN
	1    4675 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 7125 4825 7325
Wire Wire Line
	4675 6675 4675 7225
Wire Wire Line
	4675 7225 4525 7225
NoConn ~ 1250 1900
NoConn ~ 1250 2000
NoConn ~ 1250 2900
NoConn ~ 1250 3000
NoConn ~ 1250 3100
NoConn ~ 1250 3200
NoConn ~ 2850 2400
NoConn ~ 2850 2300
Wire Wire Line
	2000 3950 2050 3950
Text GLabel 2950 1900 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 2950 2000 2    50   Output ~ 0
I2C_SCL
Wire Wire Line
	2850 1900 2950 1900
Wire Wire Line
	2850 2000 2950 2000
Text GLabel 4750 4500 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 4750 4400 0    50   Input ~ 0
I2C_SCL
Text GLabel 5900 1500 0    50   Input ~ 0
I2C_SCL
Text GLabel 5900 1950 0    50   BiDi ~ 0
I2C_SDA
$Comp
L power:+3.3V #PWR0103
U 1 1 5FD19CCD
P 6500 800
F 0 "#PWR0103" H 6500 650 50  0001 C CNN
F 1 "+3.3V" H 6515 973 50  0000 C CNN
F 2 "" H 6500 800 50  0001 C CNN
F 3 "" H 6500 800 50  0001 C CNN
	1    6500 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FD1A628
P 6750 2450
F 0 "#PWR0104" H 6750 2200 50  0001 C CNN
F 1 "GND" H 6755 2277 50  0000 C CNN
F 2 "" H 6750 2450 50  0001 C CNN
F 3 "" H 6750 2450 50  0001 C CNN
	1    6750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1025 6750 1100
$Comp
L Device:R R7
U 1 1 5FD22F53
P 6400 6875
F 0 "R7" H 6600 6825 50  0000 R CNN
F 1 "1.5k" H 6650 6925 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6330 6875 50  0001 C CNN
F 3 "~" H 6400 6875 50  0001 C CNN
	1    6400 6875
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5FD23BAD
P 6400 7025
F 0 "R8" H 6330 6979 50  0000 R CNN
F 1 "1.5k" H 6330 7070 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6330 7025 50  0001 C CNN
F 3 "~" H 6400 7025 50  0001 C CNN
	1    6400 7025
	0    -1   -1   0   
$EndComp
Connection ~ 6750 1100
Connection ~ 6750 2350
Wire Wire Line
	6750 2350 6750 2450
Wire Wire Line
	9250 2100 9250 2350
Text GLabel 3050 2700 2    50   Output ~ 0
SPI_CE0
Text GLabel 3050 2600 2    50   Output ~ 0
SPI_CE1
Text GLabel 3050 2800 2    50   Input ~ 0
SPI_MISO
Text GLabel 3050 2900 2    50   Output ~ 0
SPI_MOSI
Text GLabel 3050 3000 2    50   Output ~ 0
SPI_SCLK
Wire Wire Line
	2850 2600 3050 2600
Wire Wire Line
	2850 2700 3050 2700
Wire Wire Line
	2850 2800 3050 2800
Wire Wire Line
	2850 2900 3050 2900
Wire Wire Line
	2850 3000 3050 3000
Wire Wire Line
	1100 2700 1250 2700
Wire Wire Line
	1100 2800 1250 2800
Text GLabel 1975 5100 2    50   Output ~ 0
Button1
Text GLabel 1975 5200 2    50   Output ~ 0
Button2
Wire Wire Line
	1750 5100 1975 5100
Wire Wire Line
	1900 5200 1975 5200
Wire Wire Line
	1625 5100 1750 5100
Connection ~ 1750 5100
Wire Wire Line
	1625 5200 1900 5200
Connection ~ 1900 5200
Text GLabel 1100 1700 0    50   Input ~ 0
UART_RX
Text GLabel 1100 1600 0    50   Output ~ 0
UART_TX
Wire Wire Line
	1250 1600 1100 1600
Wire Wire Line
	1250 1700 1100 1700
Text GLabel 4750 4800 0    50   Output ~ 0
UART_RX
Text GLabel 4750 4900 0    50   Input ~ 0
UART_TX
Text GLabel 8525 4975 0    50   Input ~ 0
SPI_CE0
Text GLabel 8525 4575 0    50   Input ~ 0
SPI_CE1
Text GLabel 8525 4275 0    50   Output ~ 0
SPI_MISO
Text GLabel 8525 4375 0    50   Input ~ 0
SPI_MOSI
Text GLabel 8525 4475 0    50   Input ~ 0
SPI_SCLK
Text GLabel 8525 4675 0    50   Output ~ 0
SPI_MISO
Text GLabel 8525 4775 0    50   Input ~ 0
SPI_MOSI
Text GLabel 8525 4875 0    50   Input ~ 0
SPI_SCLK
NoConn ~ 1250 2500
$Comp
L Device:LED D1
U 1 1 600D91AA
P 875 4900
F 0 "D1" V 914 4782 50  0000 R CNN
F 1 "LED" V 823 4782 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 875 4900 50  0001 C CNN
F 3 "~" H 875 4900 50  0001 C CNN
	1    875  4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	875  4700 875  4750
Wire Wire Line
	875  5050 875  5100
Wire Wire Line
	875  5400 875  5450
$Comp
L Switch:SW_Push SW2
U 1 1 600F7B5A
P 1425 5400
F 0 "SW2" H 1425 5600 50  0000 C CNN
F 1 "SW_Push" H 1425 5594 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1425 5600 50  0001 C CNN
F 3 "~" H 1425 5600 50  0001 C CNN
	1    1425 5400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 600F8E31
P 1425 5100
F 0 "SW1" H 1425 5300 50  0000 C CNN
F 1 "SW_Push" H 1425 5294 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1425 5300 50  0001 C CNN
F 3 "~" H 1425 5300 50  0001 C CNN
	1    1425 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 5400 1625 5200
Wire Wire Line
	1225 5100 1150 5100
Wire Wire Line
	1150 5100 1150 5400
Wire Wire Line
	1150 5400 1225 5400
Wire Wire Line
	1150 5400 1150 5450
Connection ~ 1150 5400
$Comp
L power:GND #PWR0111
U 1 1 60110C3F
P 1150 5450
F 0 "#PWR0111" H 1150 5200 50  0001 C CNN
F 1 "GND" H 1155 5277 50  0000 C CNN
F 2 "" H 1150 5450 50  0001 C CNN
F 3 "" H 1150 5450 50  0001 C CNN
	1    1150 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1200 1950 1000
Wire Wire Line
	1950 1000 1850 1000
Connection ~ 1850 1000
Wire Wire Line
	1850 1000 1850 1200
Wire Wire Line
	1650 3800 1650 3950
Wire Wire Line
	2050 3800 2050 3950
Connection ~ 2050 3950
NoConn ~ 1750 3800
Wire Wire Line
	1650 3950 1950 3950
NoConn ~ 1850 3800
$Comp
L Device:R R11
U 1 1 6044916F
P 8800 1400
F 0 "R11" V 8800 1400 50  0000 C CNN
F 1 "a" V 8900 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8730 1400 50  0001 C CNN
F 3 "~" H 8800 1400 50  0001 C CNN
	1    8800 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 6044974A
P 7400 1950
F 0 "R9" V 7400 2050 50  0000 R CNN
F 1 "b" H 7525 1950 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7330 1950 50  0001 C CNN
F 3 "~" H 7400 1950 50  0001 C CNN
	1    7400 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 604731F3
P 8800 1500
F 0 "R12" V 8800 1500 50  0000 C CNN
F 1 "a" V 8600 1500 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8730 1500 50  0001 C CNN
F 3 "~" H 8800 1500 50  0001 C CNN
	1    8800 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 6047391F
P 7500 1950
F 0 "R10" V 7500 2050 50  0000 R CNN
F 1 "b" H 7400 2050 50  0001 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7430 1950 50  0001 C CNN
F 3 "~" H 7500 1950 50  0001 C CNN
	1    7500 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 1500 7500 1800
Connection ~ 7500 1500
Wire Wire Line
	7500 1500 7250 1500
Wire Wire Line
	7400 1400 7400 1800
Connection ~ 7400 1400
Wire Wire Line
	7400 1400 7250 1400
Wire Wire Line
	7400 2100 7400 2350
Connection ~ 7400 2350
Wire Wire Line
	7400 2350 6750 2350
Wire Wire Line
	7500 2100 7500 2350
Connection ~ 7500 2350
Wire Wire Line
	7500 2350 7400 2350
Wire Wire Line
	9250 2000 9350 2000
Wire Wire Line
	9250 2100 9350 2100
$Comp
L Connector:Conn_01x04_Male I2C1
U 1 1 5FB8A048
P 7050 4600
F 0 "I2C1" H 7022 4482 50  0000 R CNN
F 1 "I2C" H 7022 4573 50  0001 R CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 7050 4600 50  0001 C CNN
F 3 "~" H 7050 4600 50  0001 C CNN
	1    7050 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5FC081D7
P 5400 1650
F 0 "C1" H 5515 1696 50  0000 L CNN
F 1 "100n" H 5515 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5438 1500 50  0001 C CNN
F 3 "~" H 5400 1650 50  0001 C CNN
	1    5400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1100 5400 1500
Wire Wire Line
	5400 1800 5400 2350
Wire Wire Line
	5400 2350 6000 2350
Wire Wire Line
	1950 3800 1950 3950
Connection ~ 1950 3950
Wire Wire Line
	1950 3950 2000 3950
$Comp
L Analog_ADC:MAX11613 U1
U 1 1 5FDC9910
P 6750 1600
F 0 "U1" H 7100 2000 50  0000 C CNN
F 1 "MAX116xx" H 6500 2000 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 7200 1250 50  0001 L CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX11612-MAX11617.pdf" H 6850 2100 50  0001 C CNN
	1    6750 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 1100 6750 1200
Wire Wire Line
	6750 2100 6750 2350
$Comp
L Levelshifter-LSF0108:LSF0108 U2
U 1 1 5FF5C356
P 5400 4700
F 0 "U2" H 5100 5500 50  0000 C CNN
F 1 "LSF0108" V 5400 4750 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 5500 3800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/LSF0108.pdf" H 5500 4400 50  0001 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FF5D5E6
P 5400 5550
F 0 "#PWR07" H 5400 5300 50  0001 C CNN
F 1 "GND" H 5405 5377 50  0000 C CNN
F 2 "" H 5400 5550 50  0001 C CNN
F 3 "" H 5400 5550 50  0001 C CNN
	1    5400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5450 5400 5500
Wire Wire Line
	4800 3850 4800 4200
Wire Wire Line
	4800 4200 4900 4200
$Comp
L power:+5V #PWR011
U 1 1 5FF6ECA4
P 6350 3300
F 0 "#PWR011" H 6350 3150 50  0001 C CNN
F 1 "+5V" H 6365 3473 50  0000 C CNN
F 2 "" H 6350 3300 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4200 5850 4200
Wire Wire Line
	5400 5500 6250 5500
Wire Wire Line
	6700 5500 6700 5100
Wire Wire Line
	6700 4700 6850 4700
Connection ~ 5400 5500
Wire Wire Line
	5400 5500 5400 5550
Wire Wire Line
	6600 4600 6850 4600
$Comp
L power:+3.3V #PWR014
U 1 1 5FFBEA2D
P 6850 3300
F 0 "#PWR014" H 6850 3150 50  0001 C CNN
F 1 "+3.3V" H 6865 3473 50  0000 C CNN
F 2 "" H 6850 3300 50  0001 C CNN
F 3 "" H 6850 3300 50  0001 C CNN
	1    6850 3300
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 5FFC8B22
P 6600 3450
F 0 "JP1" H 6600 3654 50  0001 C CNN
F 1 "I2C UART Volt" H 6950 3250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6600 3450 50  0001 C CNN
F 3 "~" H 6600 3450 50  0001 C CNN
	1    6600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3750 6600 4600
Wire Wire Line
	6850 3450 6850 3300
Wire Wire Line
	5850 4500 6225 4500
Wire Wire Line
	5850 4400 6350 4400
Wire Wire Line
	4750 4400 4900 4400
Wire Wire Line
	4750 4500 4900 4500
$Comp
L Device:R R13
U 1 1 60029E9E
P 6225 4150
F 0 "R13" H 6425 4100 50  0000 R CNN
F 1 "1.5k" H 6475 4200 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6155 4150 50  0001 C CNN
F 3 "~" H 6225 4150 50  0001 C CNN
	1    6225 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 6002A818
P 6350 4150
F 0 "R14" H 6280 4104 50  0000 R CNN
F 1 "1.5k" H 6280 4195 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6280 4150 50  0001 C CNN
F 3 "~" H 6350 4150 50  0001 C CNN
	1    6350 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6225 4300 6225 4500
Connection ~ 6225 4500
Wire Wire Line
	6225 4500 6850 4500
Wire Wire Line
	6350 4300 6350 4400
Connection ~ 6350 4400
Wire Wire Line
	6350 4400 6850 4400
Wire Wire Line
	6350 4000 6350 3750
Wire Wire Line
	6350 3750 6600 3750
Wire Wire Line
	6225 4000 6225 3750
Wire Wire Line
	6225 3750 6350 3750
Connection ~ 6350 3750
Wire Wire Line
	4750 4800 4900 4800
Wire Wire Line
	4750 4900 4900 4900
$Comp
L Connector:Conn_01x04_Male UART1
U 1 1 600EE58C
P 7050 5000
F 0 "UART1" H 7022 4882 50  0000 R CNN
F 1 "UART" H 7022 4973 50  0001 R CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 7050 5000 50  0001 C CNN
F 3 "~" H 7050 5000 50  0001 C CNN
	1    7050 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 5100 6700 5100
Connection ~ 6700 5100
Wire Wire Line
	6700 5100 6700 4700
Wire Wire Line
	5850 4800 6850 4800
Wire Wire Line
	5850 4900 6850 4900
Wire Wire Line
	5950 3750 5400 3750
Wire Wire Line
	5400 3750 5400 3900
$Comp
L Levelshifter-LSF0108:LSF0108 U3
U 1 1 602425A6
P 9325 4575
F 0 "U3" H 9025 5375 50  0000 C CNN
F 1 "LSF0108" V 9325 4575 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 9425 3675 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/LSF0108.pdf" H 9425 4275 50  0001 C CNN
	1    9325 4575
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male SPI2
U 1 1 5FF03E51
P 10775 5525
F 0 "SPI2" H 10747 5407 50  0000 R CNN
F 1 "SPI2" H 10747 5498 50  0001 R CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 10775 5525 50  0001 C CNN
F 3 "~" H 10775 5525 50  0001 C CNN
	1    10775 5525
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x06_Male SPI1
U 1 1 5FD7D3F0
P 10775 4075
F 0 "SPI1" H 10747 3957 50  0000 R CNN
F 1 "SPI1" H 10747 4048 50  0001 R CNN
F 2 "Connector_JST:JST_XH_B6B-XH-A_1x06_P2.50mm_Vertical" H 10775 4075 50  0001 C CNN
F 3 "~" H 10775 4075 50  0001 C CNN
	1    10775 4075
	-1   0    0    1   
$EndComp
$Comp
L Jumper:Jumper_3_Bridged12 JP3
U 1 1 602549C2
P 10375 3425
F 0 "JP3" H 10375 3629 50  0001 C CNN
F 1 "SPI Volt" H 10375 3538 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 10375 3425 50  0001 C CNN
F 3 "~" H 10375 3425 50  0001 C CNN
	1    10375 3425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8525 4275 8825 4275
Wire Wire Line
	8525 4375 8825 4375
Wire Wire Line
	8525 4475 8825 4475
Wire Wire Line
	8525 4575 8825 4575
Wire Wire Line
	8525 4675 8825 4675
Wire Wire Line
	8525 4775 8825 4775
Wire Wire Line
	8525 4875 8825 4875
Wire Wire Line
	8525 4975 8825 4975
Wire Wire Line
	9775 4275 9975 4275
Wire Wire Line
	9975 4275 9975 3775
Wire Wire Line
	9975 3775 10575 3775
Wire Wire Line
	9775 4375 10075 4375
Wire Wire Line
	10075 4375 10075 3875
Wire Wire Line
	10075 3875 10575 3875
Wire Wire Line
	9775 4475 10175 4475
Wire Wire Line
	10175 4475 10175 3975
Wire Wire Line
	10175 3975 10575 3975
Wire Wire Line
	9775 4575 10275 4575
Wire Wire Line
	10275 4575 10275 4075
Wire Wire Line
	10275 4075 10575 4075
Wire Wire Line
	9775 4675 10275 4675
Wire Wire Line
	10275 4675 10275 5225
Wire Wire Line
	10275 5225 10575 5225
Wire Wire Line
	9775 4775 10175 4775
Wire Wire Line
	10175 4775 10175 5325
Wire Wire Line
	10175 5325 10575 5325
Wire Wire Line
	9775 4875 10075 4875
Wire Wire Line
	10075 4875 10075 5425
Wire Wire Line
	10075 5425 10575 5425
Wire Wire Line
	9775 4975 9975 4975
Wire Wire Line
	9975 4975 9975 5525
Wire Wire Line
	9975 5525 10575 5525
$Comp
L power:GND #PWR02
U 1 1 6031EA28
P 9325 5475
F 0 "#PWR02" H 9325 5225 50  0001 C CNN
F 1 "GND" H 9330 5302 50  0000 C CNN
F 2 "" H 9325 5475 50  0001 C CNN
F 3 "" H 9325 5475 50  0001 C CNN
	1    9325 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	9325 5325 9325 5375
$Comp
L power:GND #PWR018
U 1 1 6032935C
P 10475 5825
F 0 "#PWR018" H 10475 5575 50  0001 C CNN
F 1 "GND" H 10480 5652 50  0000 C CNN
F 2 "" H 10475 5825 50  0001 C CNN
F 3 "" H 10475 5825 50  0001 C CNN
	1    10475 5825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60329872
P 10475 4375
F 0 "#PWR017" H 10475 4125 50  0001 C CNN
F 1 "GND" H 10480 4202 50  0000 C CNN
F 2 "" H 10475 4375 50  0001 C CNN
F 3 "" H 10475 4375 50  0001 C CNN
	1    10475 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	10575 4275 10475 4275
Wire Wire Line
	10475 4275 10475 4375
Wire Wire Line
	10575 5725 10475 5725
Wire Wire Line
	10475 5725 10475 5825
Wire Wire Line
	10575 4175 10375 4175
Wire Wire Line
	10375 4175 10375 3675
$Comp
L power:+5V #PWR019
U 1 1 6039756C
P 10625 3275
F 0 "#PWR019" H 10625 3125 50  0001 C CNN
F 1 "+5V" H 10640 3448 50  0000 C CNN
F 2 "" H 10625 3275 50  0001 C CNN
F 3 "" H 10625 3275 50  0001 C CNN
	1    10625 3275
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 60399217
P 10125 3275
F 0 "#PWR09" H 10125 3125 50  0001 C CNN
F 1 "+3.3V" H 10140 3448 50  0000 C CNN
F 2 "" H 10125 3275 50  0001 C CNN
F 3 "" H 10125 3275 50  0001 C CNN
	1    10125 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	10125 3275 10125 3425
Wire Wire Line
	10625 3275 10625 3425
$Comp
L power:+3.3V #PWR01
U 1 1 603C5323
P 8725 3625
F 0 "#PWR01" H 8725 3475 50  0001 C CNN
F 1 "+3.3V" H 8740 3798 50  0000 C CNN
F 2 "" H 8725 3625 50  0001 C CNN
F 3 "" H 8725 3625 50  0001 C CNN
	1    8725 3625
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 3625 8725 4075
Wire Wire Line
	8725 4075 8825 4075
Wire Wire Line
	9875 4075 9775 4075
Wire Wire Line
	9325 3775 9325 3675
Wire Wire Line
	9325 3675 9875 3675
Connection ~ 9875 3675
Wire Wire Line
	9875 3675 9875 4075
Wire Wire Line
	10375 4175 10375 4625
Connection ~ 10375 4175
Wire Wire Line
	10375 5625 10575 5625
Wire Wire Line
	9875 3675 10375 3675
Connection ~ 10375 3675
Wire Wire Line
	10375 3675 10375 3575
Wire Wire Line
	6350 3450 6350 3300
Wire Wire Line
	6600 3750 6600 3600
Connection ~ 6600 3750
Wire Wire Line
	6225 3750 5950 3750
Connection ~ 6225 3750
Connection ~ 5950 3750
Wire Wire Line
	5950 3750 5950 4200
Wire Wire Line
	6600 5000 6600 4600
Wire Wire Line
	6600 5000 6850 5000
Connection ~ 6600 4600
$Comp
L Connector:Conn_01x03_Male AIN2
U 1 1 6052F0B2
P 10550 2000
F 0 "AIN2" H 10725 1775 50  0000 R CNN
F 1 "AIN2" H 10522 2023 50  0001 R CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 10550 2000 50  0001 C CNN
F 3 "~" H 10550 2000 50  0001 C CNN
	1    10550 2000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male AIN1
U 1 1 6052FD55
P 11050 2000
F 0 "AIN1" H 11200 1775 50  0000 R CNN
F 1 "AIN1" H 11022 2023 50  0001 R CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 11050 2000 50  0001 C CNN
F 3 "~" H 11050 2000 50  0001 C CNN
	1    11050 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 2350 9750 2350
Wire Wire Line
	9750 2350 9750 2100
Wire Wire Line
	9750 2100 9850 2100
Wire Wire Line
	9250 1250 9750 1250
Wire Wire Line
	9750 1250 9750 2000
Wire Wire Line
	9750 2000 9850 2000
Wire Wire Line
	9250 1250 9250 2000
$Comp
L Connector:Conn_01x03_Male AIN3
U 1 1 605EAE58
P 10050 2000
F 0 "AIN3" H 10225 1775 50  0000 R CNN
F 1 "AIN3" H 10022 2023 50  0001 R CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 10050 2000 50  0001 C CNN
F 3 "~" H 10050 2000 50  0001 C CNN
	1    10050 2000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male AIN4
U 1 1 605EC15C
P 9550 2000
F 0 "AIN4" H 9725 1775 50  0000 R CNN
F 1 "AIN4" H 9522 2023 50  0001 R CNN
F 2 "Connector_JST:JST_PH_B3B-PH-K_1x03_P2.00mm_Vertical" H 9550 2000 50  0001 C CNN
F 3 "~" H 9550 2000 50  0001 C CNN
	1    9550 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 1250 10250 1250
Wire Wire Line
	10250 1250 10250 2000
Wire Wire Line
	10250 2000 10350 2000
Connection ~ 9750 1250
Wire Wire Line
	10250 1250 10750 1250
Wire Wire Line
	10750 1250 10750 2000
Wire Wire Line
	10750 2000 10850 2000
Connection ~ 10250 1250
Wire Wire Line
	9750 2350 10250 2350
Wire Wire Line
	10250 2350 10250 2100
Wire Wire Line
	10250 2100 10350 2100
Connection ~ 9750 2350
Wire Wire Line
	10250 2350 10750 2350
Wire Wire Line
	10750 2350 10750 2100
Wire Wire Line
	10750 2100 10850 2100
Connection ~ 10250 2350
$Comp
L Device:R R15
U 1 1 60674DBE
P 7600 1950
F 0 "R15" V 7600 2050 50  0000 R CNN
F 1 "b" H 7500 2050 50  0001 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7530 1950 50  0001 C CNN
F 3 "~" H 7600 1950 50  0001 C CNN
	1    7600 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 60674FE1
P 7700 1950
F 0 "R16" V 7700 2050 50  0000 R CNN
F 1 "b" H 7600 2050 50  0001 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7630 1950 50  0001 C CNN
F 3 "~" H 7700 1950 50  0001 C CNN
	1    7700 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 606751DB
P 8800 1600
F 0 "R17" V 8800 1600 50  0000 C CNN
F 1 "a" V 8600 1600 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8730 1600 50  0001 C CNN
F 3 "~" H 8800 1600 50  0001 C CNN
	1    8800 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R18
U 1 1 606753FB
P 8800 1700
F 0 "R18" V 8800 1700 50  0000 C CNN
F 1 "a" V 8600 1700 50  0001 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8730 1700 50  0001 C CNN
F 3 "~" H 8800 1700 50  0001 C CNN
	1    8800 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 1600 7600 1600
Wire Wire Line
	7250 1700 7700 1700
Wire Wire Line
	7600 1600 7600 1800
Connection ~ 7600 1600
Wire Wire Line
	7700 1700 7700 1800
Connection ~ 7700 1700
Wire Wire Line
	7600 2100 7600 2350
Connection ~ 7600 2350
Wire Wire Line
	7600 2350 7500 2350
Wire Wire Line
	7700 2100 7700 2350
Connection ~ 7700 2350
Wire Wire Line
	7700 2350 7600 2350
Wire Wire Line
	10650 1900 10850 1900
$Comp
L Device:C C4
U 1 1 6070D3F9
P 7825 4575
F 0 "C4" H 7940 4621 50  0000 L CNN
F 1 "100n" H 7940 4530 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7863 4425 50  0001 C CNN
F 3 "~" H 7825 4575 50  0001 C CNN
	1    7825 4575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6070DF67
P 4250 4650
F 0 "C2" H 4365 4696 50  0000 L CNN
F 1 "100n" H 4365 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4288 4500 50  0001 C CNN
F 3 "~" H 4250 4650 50  0001 C CNN
	1    4250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 4075 7825 4075
Wire Wire Line
	7825 4075 7825 4425
Connection ~ 8725 4075
Wire Wire Line
	7825 4725 7825 5375
Wire Wire Line
	7825 5375 9325 5375
Connection ~ 9325 5375
Wire Wire Line
	9325 5375 9325 5475
Wire Wire Line
	4800 4200 4250 4200
Wire Wire Line
	4250 4200 4250 4500
Connection ~ 4800 4200
Wire Wire Line
	4250 4800 4250 5500
Wire Wire Line
	4250 5500 5400 5500
$Comp
L Device:C C3
U 1 1 6074CE8D
P 6250 5250
F 0 "C3" H 6365 5296 50  0000 L CNN
F 1 "100n" H 6365 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6288 5100 50  0001 C CNN
F 3 "~" H 6250 5250 50  0001 C CNN
	1    6250 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6074DD47
P 10475 4875
F 0 "C5" H 10590 4921 50  0000 L CNN
F 1 "100n" H 10590 4830 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10513 4725 50  0001 C CNN
F 3 "~" H 10475 4875 50  0001 C CNN
	1    10475 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	10375 4625 10475 4625
Wire Wire Line
	10475 4625 10475 4725
Connection ~ 10375 4625
Wire Wire Line
	10375 4625 10375 5625
Wire Wire Line
	10475 5025 10475 5725
Connection ~ 10475 5725
Wire Wire Line
	6250 5100 6250 5000
Wire Wire Line
	6250 5000 6600 5000
Connection ~ 6600 5000
Wire Wire Line
	6250 5400 6250 5500
Connection ~ 6250 5500
Wire Wire Line
	6250 5500 6700 5500
Wire Wire Line
	2850 2200 3050 2200
NoConn ~ 2850 3300
$Comp
L Jumper:Jumper_2_Open JP2
U 1 1 608BC0A6
P 3575 6425
F 0 "JP2" H 3575 6536 50  0001 C CNN
F 1 "Power In" H 3550 6575 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 3575 6425 50  0001 C CNN
F 3 "~" H 3575 6425 50  0001 C CNN
	1    3575 6425
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:NCP1117-5.0_SOT223 U4
U 1 1 608BCE3F
P 3225 6725
F 0 "U4" H 3225 6967 50  0000 C CNN
F 1 "NCP1117-5.0" H 3225 6876 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3225 6925 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 3325 6475 50  0001 C CNN
	1    3225 6725
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 6725 2925 6725
Wire Wire Line
	3225 7400 3225 7025
$Comp
L power:+5V #PWR0105
U 1 1 609393BB
P 3575 6125
F 0 "#PWR0105" H 3575 5975 50  0001 C CNN
F 1 "+5V" H 3590 6298 50  0000 C CNN
F 2 "" H 3575 6125 50  0001 C CNN
F 3 "" H 3575 6125 50  0001 C CNN
	1    3575 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 6725 3575 6725
$Comp
L Device:CP C6
U 1 1 609D8B56
P 2825 7125
F 0 "C6" H 2943 7171 50  0000 L CNN
F 1 "10u" H 2943 7080 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2863 6975 50  0001 C CNN
F 3 "~" H 2825 7125 50  0001 C CNN
	1    2825 7125
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 609D9F37
P 3575 7125
F 0 "C7" H 3693 7171 50  0000 L CNN
F 1 "10u" H 3693 7080 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3613 6975 50  0001 C CNN
F 3 "~" H 3575 7125 50  0001 C CNN
	1    3575 7125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2825 6975 2825 6725
Wire Wire Line
	2825 7275 2825 7400
Wire Wire Line
	2825 7400 3225 7400
Wire Wire Line
	3575 7275 3575 7400
Wire Wire Line
	3575 7400 3225 7400
Connection ~ 3225 7400
Wire Wire Line
	3575 6975 3575 6725
Connection ~ 3575 6725
$Comp
L Diode:ZMMxx D2
U 1 1 60A8C773
P 8050 2000
F 0 "D2" V 8000 1800 50  0000 L CNN
F 1 "3.6V" V 8100 1750 50  0000 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 8050 1825 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/zmm1.pdf" H 8050 2000 50  0001 C CNN
	1    8050 2000
	0    1    1    0   
$EndComp
$Comp
L Diode:ZMMxx D3
U 1 1 60A9FEFA
P 8200 2000
F 0 "D3" V 8154 2080 50  0001 L CNN
F 1 "3.6V" V 8245 2080 50  0001 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 8200 1825 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/zmm1.pdf" H 8200 2000 50  0001 C CNN
	1    8200 2000
	0    1    1    0   
$EndComp
$Comp
L Diode:ZMMxx D4
U 1 1 60AA019F
P 8350 2000
F 0 "D4" V 8304 2080 50  0001 L CNN
F 1 "3.6V" V 8395 2080 50  0001 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 8350 1825 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/zmm1.pdf" H 8350 2000 50  0001 C CNN
	1    8350 2000
	0    1    1    0   
$EndComp
$Comp
L Diode:ZMMxx D5
U 1 1 60AA0449
P 8500 2000
F 0 "D5" V 8454 2080 50  0001 L CNN
F 1 "3.6V" V 8545 2080 50  0001 L CNN
F 2 "Diode_SMD:D_MiniMELF" H 8500 1825 50  0001 C CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/zmm1.pdf" H 8500 2000 50  0001 C CNN
	1    8500 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 2350 8050 2350
Connection ~ 9250 2350
Wire Wire Line
	7400 1400 8050 1400
Wire Wire Line
	7500 1500 8200 1500
Wire Wire Line
	7600 1600 8350 1600
Wire Wire Line
	7700 1700 8500 1700
Wire Wire Line
	8050 2150 8050 2350
Connection ~ 8050 2350
Wire Wire Line
	8050 2350 8200 2350
Wire Wire Line
	8200 2150 8200 2350
Connection ~ 8200 2350
Wire Wire Line
	8200 2350 8350 2350
Wire Wire Line
	8350 2150 8350 2350
Connection ~ 8350 2350
Wire Wire Line
	8350 2350 8500 2350
Wire Wire Line
	8500 2150 8500 2350
Connection ~ 8500 2350
Wire Wire Line
	8500 2350 9250 2350
Wire Wire Line
	8050 1850 8050 1400
Connection ~ 8050 1400
Wire Wire Line
	8050 1400 8650 1400
Wire Wire Line
	8200 1850 8200 1500
Connection ~ 8200 1500
Wire Wire Line
	8200 1500 8650 1500
Wire Wire Line
	8350 1850 8350 1600
Connection ~ 8350 1600
Wire Wire Line
	8350 1600 8650 1600
Wire Wire Line
	8500 1850 8500 1700
Connection ~ 8500 1700
Wire Wire Line
	8500 1700 8650 1700
$Comp
L Diode:BAT43W-V D6
U 1 1 60C9B4F4
P 1600 7025
F 0 "D6" V 1625 6825 50  0000 L CNN
F 1 "BAT43W-V" V 1750 6625 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 1600 6850 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85660/bat42.pdf" H 1600 7025 50  0001 C CNN
	1    1600 7025
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 6875 1600 6775
Connection ~ 1600 6775
Wire Wire Line
	1600 7175 1600 7375
Connection ~ 1600 7375
Wire Wire Line
	1600 7375 1950 7375
Wire Wire Line
	2050 3950 2350 3950
NoConn ~ 2150 3800
NoConn ~ 2250 3800
$Comp
L Regulator_Linear:NCP1117-3.3_SOT223 U5
U 1 1 60F89D78
P 3175 5225
F 0 "U5" H 3175 5467 50  0000 C CNN
F 1 "NCP1117-3.3" H 3175 5376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3175 5425 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NCP1117-D.PDF" H 3275 4975 50  0001 C CNN
	1    3175 5225
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C9
U 1 1 60F8B19F
P 3575 5575
F 0 "C9" H 3693 5621 50  0000 L CNN
F 1 "10u" H 3693 5530 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3613 5425 50  0001 C CNN
F 3 "~" H 3575 5575 50  0001 C CNN
	1    3575 5575
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 60F8BA13
P 2775 5575
F 0 "C8" H 2893 5621 50  0000 L CNN
F 1 "10u" H 2893 5530 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2813 5425 50  0001 C CNN
F 3 "~" H 2775 5575 50  0001 C CNN
	1    2775 5575
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 60F8D0F6
P 2650 750
F 0 "#PWR015" H 2650 600 50  0001 C CNN
F 1 "+3.3V" H 2665 923 50  0000 C CNN
F 2 "" H 2650 750 50  0001 C CNN
F 3 "" H 2650 750 50  0001 C CNN
	1    2650 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 60F8DCAD
P 2775 4925
F 0 "#PWR05" H 2775 4775 50  0001 C CNN
F 1 "+5V" H 2790 5098 50  0000 C CNN
F 2 "" H 2775 4925 50  0001 C CNN
F 3 "" H 2775 4925 50  0001 C CNN
	1    2775 4925
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60F8F45C
P 3175 5925
F 0 "#PWR08" H 3175 5675 50  0001 C CNN
F 1 "GND" H 3180 5752 50  0000 C CNN
F 2 "" H 3175 5925 50  0001 C CNN
F 3 "" H 3175 5925 50  0001 C CNN
	1    3175 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 4925 2775 5225
Wire Wire Line
	2875 5225 2775 5225
Connection ~ 2775 5225
Wire Wire Line
	2775 5225 2775 5425
Wire Wire Line
	3475 5225 3575 5225
Wire Wire Line
	3575 5225 3575 5075
Wire Wire Line
	3575 5225 3575 5425
Connection ~ 3575 5225
Wire Wire Line
	3175 5525 3175 5825
Wire Wire Line
	2775 5725 2775 5825
Wire Wire Line
	2775 5825 3175 5825
Connection ~ 3175 5825
Wire Wire Line
	3175 5825 3175 5925
Wire Wire Line
	3575 5725 3575 5825
Wire Wire Line
	3575 5825 3175 5825
$Comp
L Jumper:Jumper_3_Bridged12 JP4
U 1 1 6110436C
P 2650 1000
F 0 "JP4" H 2650 1204 50  0001 C CNN
F 1 "3.3V Select" H 2300 800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2650 1000 50  0001 C CNN
F 3 "~" H 2650 1000 50  0001 C CNN
	1    2650 1000
	-1   0    0    1   
$EndComp
Text GLabel 3575 5075 1    50   UnSpc ~ 0
3V3_Regulator
Text GLabel 3050 1000 2    50   UnSpc ~ 0
3V3_Regulator
Wire Wire Line
	2150 1200 2150 1000
Wire Wire Line
	2650 750  2650 850 
Wire Wire Line
	2900 1000 3050 1000
$Comp
L power:GND #PWR0106
U 1 1 612D8F3E
P 3950 2450
F 0 "#PWR0106" H 3950 2200 50  0001 C CNN
F 1 "GND" H 3955 2277 50  0000 C CNN
F 2 "" H 3950 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0001 C CNN
	1    3950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2000 3950 2400
NoConn ~ 4350 1600
NoConn ~ 4350 1700
NoConn ~ 4350 1800
Wire Wire Line
	3550 1800 3450 1800
Wire Wire Line
	3450 1800 3450 1900
$Comp
L Device:R R19
U 1 1 6147F309
P 3100 1350
F 0 "R19" H 3300 1300 50  0000 R CNN
F 1 "3.9k" H 3350 1400 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3030 1350 50  0001 C CNN
F 3 "~" H 3100 1350 50  0001 C CNN
	1    3100 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R20
U 1 1 6148001B
P 3200 1350
F 0 "R20" H 3400 1300 50  0001 R CNN
F 1 "3.9k" H 3450 1400 50  0001 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3130 1350 50  0001 C CNN
F 3 "~" H 3200 1350 50  0001 C CNN
	1    3200 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 614807B7
P 3450 1350
F 0 "R21" H 3650 1300 50  0000 R CNN
F 1 "1k" H 3650 1400 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3380 1350 50  0001 C CNN
F 3 "~" H 3450 1350 50  0001 C CNN
	1    3450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1600 3100 1600
Wire Wire Line
	2850 1700 3200 1700
Wire Wire Line
	3100 1500 3100 1600
Connection ~ 3100 1600
Wire Wire Line
	3100 1600 3550 1600
Wire Wire Line
	3200 1500 3200 1700
Connection ~ 3200 1700
Wire Wire Line
	3200 1700 3550 1700
Wire Wire Line
	3450 1500 3450 1800
Connection ~ 3450 1800
$Comp
L Connector:TestPoint_2Pole TP1
U 1 1 6153DD33
P 3450 2100
F 0 "TP1" V 3404 2158 50  0000 L CNN
F 1 "Write" V 3495 2158 50  0000 L CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch2.54mm_Drill0.8mm" H 3450 2100 50  0001 C CNN
F 3 "~" H 3450 2100 50  0001 C CNN
	1    3450 2100
	0    1    1    0   
$EndComp
$Comp
L Memory_EEPROM:24LC32 U6
U 1 1 612BEA44
P 3950 1700
F 0 "U6" H 4150 2000 50  0000 C CNN
F 1 "24LC32" H 3750 2000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3950 1700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21072G.pdf" H 3950 1700 50  0001 C CNN
	1    3950 1700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 2300 3450 2400
Wire Wire Line
	3450 2400 3950 2400
Connection ~ 3950 2400
Wire Wire Line
	3950 2400 3950 2450
Wire Wire Line
	2150 1000 2400 1000
Wire Wire Line
	2250 1200 2250 1100
Wire Wire Line
	2250 1100 3100 1100
Wire Wire Line
	3950 1100 3950 1400
Wire Wire Line
	3450 1200 3450 1100
Connection ~ 3450 1100
Wire Wire Line
	3450 1100 3950 1100
Wire Wire Line
	3200 1200 3200 1100
Connection ~ 3200 1100
Wire Wire Line
	3200 1100 3450 1100
Wire Wire Line
	3100 1200 3100 1100
Connection ~ 3100 1100
Wire Wire Line
	3100 1100 3200 1100
$Comp
L Jumper:Jumper_3_Bridged12 JP5
U 1 1 5FE02332
P 6750 875
F 0 "JP5" H 6750 1079 50  0001 C CNN
F 1 "ADC Voltage" H 6750 975 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 6750 875 50  0001 C CNN
F 3 "~" H 6750 875 50  0001 C CNN
	1    6750 875 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5FE0477C
P 7000 800
F 0 "#PWR016" H 7000 650 50  0001 C CNN
F 1 "+5V" H 7015 973 50  0000 C CNN
F 2 "" H 7000 800 50  0001 C CNN
F 3 "" H 7000 800 50  0001 C CNN
	1    7000 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 800  6500 875 
Wire Wire Line
	7000 800  7000 875 
Wire Wire Line
	9250 800  9250 1250
Connection ~ 9250 1250
$Comp
L Device:R R22
U 1 1 5FF66772
P 6000 1750
F 0 "R22" H 5930 1704 50  0000 R CNN
F 1 "1k" H 5930 1795 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 5930 1750 50  0001 C CNN
F 3 "~" H 6000 1750 50  0001 C CNN
	1    6000 1750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R23
U 1 1 5FF671EE
P 6000 2150
F 0 "R23" H 5930 2104 50  0000 R CNN
F 1 "1.8k" H 5930 2195 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 5930 2150 50  0001 C CNN
F 3 "~" H 6000 2150 50  0001 C CNN
	1    6000 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 1900 6000 1950
Wire Wire Line
	6000 2300 6000 2350
Connection ~ 6000 2350
Wire Wire Line
	6000 2350 6750 2350
Wire Wire Line
	5900 1950 6000 1950
Connection ~ 6000 1950
Wire Wire Line
	6000 1950 6000 2000
Text Notes 5600 2650 0    50   ~ 0
R22/23 calculated for 5V,\nskip R23 and replace R22\nwith 0 Ohm link for 3.3V
Text GLabel 6150 6875 0    50   Input ~ 0
I2C_SCL
Text GLabel 6150 7025 0    50   BiDi ~ 0
I2C_SDA
Wire Wire Line
	5900 1500 6250 1500
Wire Wire Line
	6000 1600 6250 1600
Wire Wire Line
	5400 1100 6750 1100
$Comp
L power:+3.3V #PWR0107
U 1 1 5FFE1A22
P 6700 6775
F 0 "#PWR0107" H 6700 6625 50  0001 C CNN
F 1 "+3.3V" H 6715 6948 50  0000 C CNN
F 2 "" H 6700 6775 50  0001 C CNN
F 3 "" H 6700 6775 50  0001 C CNN
	1    6700 6775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6875 6250 6875
Wire Wire Line
	6150 7025 6250 7025
Wire Wire Line
	6550 6875 6700 6875
Wire Wire Line
	6700 6875 6700 6775
Wire Wire Line
	6550 7025 6700 7025
Wire Wire Line
	6700 7025 6700 6875
Connection ~ 6700 6875
$Comp
L power:+5V #PWR0108
U 1 1 600E1D6B
P 9250 800
F 0 "#PWR0108" H 9250 650 50  0001 C CNN
F 1 "+5V" H 9265 973 50  0000 C CNN
F 2 "" H 9250 800 50  0001 C CNN
F 3 "" H 9250 800 50  0001 C CNN
	1    9250 800 
	1    0    0    -1  
$EndComp
Text Notes 7400 2650 0    50   ~ 0
Voltage divider for reference Voltage:\n2.048 V: a = 24k, b = 15k\n4.096 V: a = 47k, b = 150k
Text GLabel 1900 5925 2    50   UnSpc ~ 0
Ext_Supply
Wire Wire Line
	1850 5925 1900 5925
Connection ~ 1850 5925
Text GLabel 2825 6575 1    50   UnSpc ~ 0
Ext_Supply
Wire Wire Line
	2825 6575 2825 6725
Connection ~ 2825 6725
Wire Wire Line
	3575 6625 3575 6725
Wire Wire Line
	3575 6125 3575 6225
$Comp
L power:GND #PWR0109
U 1 1 604A9608
P 3225 7500
F 0 "#PWR0109" H 3225 7250 50  0001 C CNN
F 1 "GND" H 3230 7327 50  0000 C CNN
F 2 "" H 3225 7500 50  0001 C CNN
F 3 "" H 3225 7500 50  0001 C CNN
	1    3225 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3225 7400 3225 7500
Wire Wire Line
	750  6300 750  6400
Wire Wire Line
	750  6700 750  6825
Wire Wire Line
	8950 1700 9175 1700
Wire Wire Line
	9175 1700 9175 1900
Wire Wire Line
	9175 1900 9350 1900
Wire Wire Line
	8950 1600 9650 1600
Wire Wire Line
	9650 1600 9650 1900
Wire Wire Line
	9650 1900 9850 1900
Wire Wire Line
	8950 1500 10150 1500
Wire Wire Line
	10150 1500 10150 1900
Wire Wire Line
	10150 1900 10350 1900
Wire Wire Line
	8950 1400 10650 1400
Wire Wire Line
	10650 1400 10650 1900
Wire Notes Line
	4900 550  4900 2825
Wire Notes Line
	4900 2825 11175 2825
Text Notes 5025 2750 1    50   ~ 0
Analog Input
Wire Notes Line
	7550 2875 7550 6150
Wire Notes Line
	7550 6150 11150 6150
Text Notes 7675 6075 1    50   ~ 0
SPI
Wire Notes Line
	4850 2825 3950 2825
Wire Notes Line
	3950 2825 3950 6150
Wire Notes Line
	3950 6150 7500 6150
Text Notes 4075 6075 1    50   ~ 0
I2C / UART
Wire Notes Line
	550  4450 3875 4450
Text Notes 725  4350 1    50   ~ 0
Raspberry Pi header\n& HAT EEPROM
Wire Notes Line
	3950 6200 3950 7725
Wire Notes Line
	2500 4500 2500 7725
Text Notes 2625 7700 1    50   ~ 0
Power Regulators
Wire Notes Line
	525  5700 2425 5700
Text Notes 625  7700 1    50   ~ 0
Power MOSFET
Text Notes 625  5625 1    50   ~ 0
User Interface
Text Notes 4075 7675 1    50   ~ 0
I2S
Text Notes 5575 7650 1    50   ~ 0
I2C Pullup
Wire Notes Line
	5450 6200 5450 7725
Text Notes 7220 920  0    50   ~ 0
Select ADC Voltage based on used ADC chip\non assembly and modify voltage dividers\naccordingly
Text Notes 6120 3290 2    50   ~ 0
Leave I2C/UART voltage select\njumper open for user of sensor board\nto configure to specification
Text Notes 9890 3260 2    50   ~ 0
Leave SPI voltage select jumper\nopen for user of sensor board\nto configure to specification
Text Notes 3890 1000 0    50   ~ 0
I2C EEPROM may be\nleft out on manufacture\nbut auto-configuration\nwill not be available in \nthat case
$EndSCHEMATC
