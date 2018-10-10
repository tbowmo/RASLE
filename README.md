### NerdClub RASLE board (Rpi Arcade Sound and Light Extension)

This board is an extension board for an arcade cabinet build by the members of Nerdclub.dk, main reason is to be able to make propper shutdown of the arcade cabinet / rpi, and for making easy light control during startup / shutdown sequences.

Features of the board:
* Atmega328 for controlling the board, with the following "peripherals"
 * 3 x 12V PWM channels for LED strips
 * 1 x 5V PWM channel for the onboard FAN
 * header for WS2812B strip (including level converter from 3v3 to 5v)
 * Port for external relay board (for switching mains power)
 * 1 button input routed to the atmeaga328
* RaspberryPI connected things
 * 4 button inputs routed directly to the RPI GPIO header
 * stereo channel I2S 3W class D amplifier (2 x MAX98357)
 * I2C HAT eeprom for configuration

Atmega <-> RPI connections:
* Standard serial port
* SPI / ISP (rpi can reprogram the atmega directly via GPIO)
* I2C HAT eeprom (you could emulate RPI HAT eeprom in the atmega if wanted)
* Reset signal from RPI -> ATmega (disabled via jumper)

