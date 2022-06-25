.global setup
.global loop

.equ DDRB, 0x04 // Data Direction Register for Port B.
.equ PINB, 0x03 // pins of Port B Register.
.equ DDRB5, 5 // bit 5 of the Data Direction Register.
.equ PINB5, 5 // pin 5 of Port B.

setup:
sbi DDRB, DDRB5
ret

loop:
sbi PINB, PINB5

ldi r26, 0XFF
ldi r27, 0X69
ldi r28, 0X18

delayA:
SUBI r26, 1
SBCI r27, 0
SBCI r28, 0
brne delayA

nop
rjmp loop
