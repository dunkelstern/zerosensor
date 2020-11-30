# Raspberry Pi Zero Sensor breakout board

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

- 2 Level-Shifted SPI Ports
- 1 Level-Shifted I2C Port (Stemma/Grove/Quiic compatible)
- 1 Level-Shifted UART Port
- 4 Analog Inputs with onboard I2C ADC (MAX116xx-Series)
- 1 I2S Port (3.3V only)
- 2 Buttons on GPIO Pins
- 1 LED on GPIO Pin
- Power MOSFET on PWM Pin (Max 20V 8.5A)
- (optional) External Power In via Power MOSFET Screw-Terminal with 5V Regulator
- (optional) Extra 3.3V LDO to avoid introducing fault current into Raspi 3.3V rail
- (optional) Hat EEPROM for auto-configuration

## Before use

**Please read this document before use, you have to set some solder jumpers to use the board!**

- [BOM](bom.html)
- Gerbers are in `gerber` sub-directory
- SVG renders for manual UV exposing copper plated boards for etching yourself are in `svg` (be aware: this PCB has 86 vias and all through holes are supposed to be plated through!)
- Assembly files with values of resistors, etc are in `assembly`
- You can find a STEP file in `assembly` too

## SPI

There are 2 SPI ports broken out, they share MISO, MOSI and SCK lines and the chip enable
pins of the Raspberry PI (CE0 and CE1) are split between the ports. I used bigger connectors
here to differenciate the Ports from the smaller I2C and UART ports.

You have to select the voltage level on these ports by bridging the "SPI" solder jumper to
the desired voltage.

## I2C

The I2C port is Stemma/Grove/Quiic kompatible all lines are level-translated to the voltage
selected with the "I2C/UART" solder jumper.

## UART

The UART is connected to the first UART of the Raspberry Pi, usually you get a debug console
on that port, but you can use it for other things too, you just have to disable the `Getty`
process on the UART. The UART shares the voltage selection with the I2C port, so if you need
power from the UART socket you'll have to bridge that solder jumper to the correct voltage.

## Analog Inputs

The PCB footprint has been modified to accept any chips from the MAX116xx-Series.
You can use any SOIC8 or SOT23-8 chip from the series, both will fit the board.
The power supply for the chip is configurable via solder jumper "ADC Voltage" (3.3V or 5V) on
the back side of the PCB.

The analog inputs are clamped to 3.6V with Zener diodes to avoid bricking the ADC when
connecting something wrong or using long cables and getting voltage spikes.

**Attention**: Modify values of the voltage dividers accordingly!

### Voltage dividers for Analog Inputs

R22/23 (1k and 1.8k) are calculated for 5V, leave R23 open and replace R22 with zero Ohm link
for 3.3V supply.

Select the voltage divider for the inputs based on the reference voltage of the used ADC chip:

- 2.048 V: a = 24k, b = 15k
- 4.096 V: a = 47k, b = 150k

Group A is R11, R12, R17, R18, group B is R9, R10, R15, R16.

## I2S

I2S is a digital audio bus, it can support two channels and up to 48kHz samplerate. This
port has been broken out for use with an I2S MEMS microphone. It supports only 3.3V.

## Buttons

Two buttons on GPIO ports 22 and 23 are supplied. They have pull-up resistors on board, so the
read level is inverse: GPIO high = button not pressed!

## LED

The LED is on GPIO port 4, use a low power LED here, the resistor is calculated for 15 mA.

## Power MOSFET

The Power MOSFET is a P-Channel mosfet with a NPN transistor for voltage amplification. The PCB
traces are laid out for 8.5A (thermal limit! traces will heat up to 60 degrees Celsius with that
amount of power) but the MOSFET may switch 35A maximum (add cooling!). Be aware the Terminal block
might be the limiting factor as it is only specified for 5A continous load.

The NPN transistor as well as the optional LDO (see below) can only handle 20V so be aware to not
connect anything above that.

There is a small reverse clamping diode (max. 4A) if you want to switch a small inductive load like
a relay.

The Power MOSFET Terminal block may be used to power the Raspberry Pi, for more information see below.

## External Power

If you can not power the Raspberry Pi from an USB power supply you can install the 5V LDO
(U4, C6, C7) and bridge the "Ext Power" solder jumper to "reverse"-power the PI from the
Power MOSFET terminal block.

**Attention**: The LDO can only handle up to 1A of current (it will get hot in that case!) and a maximum of 20V. The minimum voltage to supply to run stable is about 6.5V.

The Raspberry Pi will use 250mA of the 1A power budget, so you have approximately 700mA to power
your sensors and actuators.

## 3.3V LDO

If you want to isolate your sensors/actuators from the Raspberry Pi 3.3V power rail to avoid
putting garbage on those voltage rails (probably crashing the Pi) or if you need a clean supply
that is not influenced by the Pi that much you can add the 3.3V LDO (Parts U5, C8, C9) and bridge
the "3.3V Select" solder jumber to "Reg" to use that regulator instead of the one on the Raspberry
Pi board.

If you want to use the internal regulator of the Pi, bridge this jumper to "Pi", else you will not
have any 3.3V supply on the board and no port will be functioning as the Level-shifters and the
ADC will use the 3.3V supply.

The LDO has a capacity of 1A, but you will not be able to use that much power neither from the Pi (250mA will be used by the Pi itself, ca 700mA are available) nor from the external LDO (this
depends on the 5V supply, if you're using External Power the 3.3V LDO is behind the 5V LDO, so both
share the 700mA that are available from that, if you're using USB power it depends on what that
power source is capable of).

## Hat EEPROM

There is an optional Hat EEPROM for autoconfiguration on the I2C0 bus of the Raspberry Pi, on boot
the Pi reads the contents of that EEPROM chip to pre-configure the GPIO header and load drivers.

If you want to use this you'll have to program the EEPROM using the Raspberry Pi itself. On top of
the PCB you can see two test-points with the letters "WR" beside them. If you bridge those the EEPROM
will get writeable. You'll just have to activate the I2C0 bus and use the
[Raspberry Pi Hat utilities](https://github.com/raspberrypi/hats/tree/master/eepromutils) to create
a ROM image for the chip.