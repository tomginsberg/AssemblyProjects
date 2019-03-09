$MODDE0CV

; numbers
ZERO equ #0x40
ONE equ #0x79
TWO equ #0x24
THREE equ #0x30
FOUR equ #0x19
FIVE equ #0x12
SIX equ #0x02
SEVEN equ #0x78


; letters
LETTER_H equ #0x09
LETTER_E equ #0x06
LETTER_L equ #0x47
LETTER_O equ #0x40
LETTER_C equ #0x46
LETTER_P equ #0x0c
LETTER_N equ #0x2b
BLANK equ #0xff


org 0000H
	ljmp myprogram 

Delay:
    mov R2, #90 L2: mov R1, #250 L1: mov R0, #494
    L0: djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us djnz R1, L1 ; 22.5us*250=5.625ms
    djnz R2, L2 ; 5.625ms*90=0.506s (approximately) ret 1.00035 s

Blink:
    mov R2, #90 L2: mov R1, #250 L1: mov R0, #500
    L0: djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us djnz R1, L1 ; 22.5us*500=11.25ms

T0:
	mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE

T1:
    mov HEX5, BLANK
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, SIX
    mov HEX0, THREE

T2:
    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    lcall Delay

    mov HEX5, THREE
    mov HEX4, FOUR
    mov HEX3, SIX
    mov HEX2, FOUR
    mov HEX1, ONE
    mov HEX0, SIX
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, SIX
    mov HEX3, FOUR
    mov HEX2, ONE
    mov HEX1, SIX
    mov HEX0, THREE
    lcall Delay

    mov HEX5, SIX
    mov HEX4, FOUR
    mov HEX3, ONE
    mov HEX2, SIX
    mov HEX1, THREE
    mov HEX0, FOUR
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, ONE
    mov HEX3, SIX
    mov HEX2, THREE
    mov HEX1, FOUR
    mov HEX0, THREE
    lcall Delay

    mov HEX5, ONE
    mov HEX4, SIX
    mov HEX3, THREE
    mov HEX2, FOUR
    mov HEX1, THREE
    mov HEX0, FOUR
    lcall Delay

    mov HEX5, SIX
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, THREE
    mov HEX1, FOUR
    mov HEX0, SIX
    lcall Delay

    mov HEX5, THREE
    mov HEX4, FOUR
    mov HEX3, THREE
    mov HEX2, FOUR
    mov HEX1, SIX
    mov HEX0, FOUR
    lcall Delay

T3:
    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    lcall Delay

    mov HEX5, THREE
    mov HEX4, FOUR
    mov HEX3, THREE
    mov HEX2, FOUR
    mov HEX1, SIX
    mov HEX0, FOUR
    lcall Delay

    mov HEX5, SIX
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, THREE
    mov HEX1, FOUR
    mov HEX0, SIX
    lcall Delay

    mov HEX5, ONE
    mov HEX4, SIX
    mov HEX3, THREE
    mov HEX2, FOUR
    mov HEX1, THREE
    mov HEX0, FOUR
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, ONE
    mov HEX3, SIX
    mov HEX2, THREE
    mov HEX1, FOUR
    mov HEX0, THREE
    lcall Delay

    mov HEX5, SIX
    mov HEX4, FOUR
    mov HEX3, ONE
    mov HEX2, SIX
    mov HEX1, THREE
    mov HEX0, FOUR
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, SIX
    mov HEX3, FOUR
    mov HEX2, ONE
    mov HEX1, SIX
    mov HEX0, THREE
    lcall Delay

    mov HEX5, THREE
    mov HEX4, FOUR
    mov HEX3, SIX
    mov HEX2, FOUR
    mov HEX1, ONE
    mov HEX0, SIX
    lcall Delay

T4:
    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    lcall Blink
    ljmp T4

T5:
    mov HEX5, BLANK
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    lcall Delay

T6:
    mov HEX5, LETTER_H
    mov HEX4, LETTER_E
    mov HEX3, LETTER_L
    mov HEX2, LETTER_L
    mov HEX1, LETTER_O
    mov HEX0, BLANK
    lcall Delay
    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    lcall Delay
    mov HEX5, LETTER_C
    mov HEX4, LETTER_P
    mov HEX3, LETTER_N
    mov HEX2, THREE
    mov HEX1, ONE
    mov HEX0, TWO
    lcall Delay
T7:
    mov HEX5, BLANK
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, ONE
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, ONE
    mov HEX3, SIX
    mov HEX2, BLANK
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay

    mov HEX5, FOUR
    mov HEX4, ONE
    mov HEX3, SIX
    mov HEX2, THREE
    mov HEX1, BLANK
    mov HEX0, BLANK
    lcall Delay
    ljmp T0