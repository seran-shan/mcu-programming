# MCU - programming

This repository contains the MCU programming part of the course TDT4160. 

The used MCU:
```
EFM32™ Gecko 32-bit Microcontroller
````

## Task 1
Using assembly code, the microcontroller should be able to perform the following:
```
1. When the PB0 button is pressed, the LED0 must be turned on.

2. When the button is released, turn off the LED.


It should be possible to do this as many times as you want without restarting the machine.
```

## Task 2
Using assembly write code for the microcontroller to implement a stopwatch:
```
1. The clock should start counting when the PB0 button is pressed

2. For every second that elapses while the clock is counting, the LED0 should flash.

3. Stops when the same button is pressed again.
```

## Task 3
Using C, write a program that will constitute an alarm clock:
```
1. The alarm clock shall be set to a number of seconds, minutes and hours and shall then count downwards.

2. When the countdown hits 0, turn on the LED0 to simulate an alarm.
```