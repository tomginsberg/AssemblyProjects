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
	ljmp Task7

Delay:
		mov R2, #180
	L3:	mov R1, #250
	L2:	mov R0, #250
	L1: djnz R0, L1 ;3 Machince cycles 
		djnz R1, L2
		djnz R2, L3 
		ret

Blink:
    mov R2, #180
	L6:	mov R1, #250
	L5:	mov R0, #25
	L4: djnz R0, L4 ;3 Machince cycles 
		djnz R1, L5
		djnz R2, L6 
		ret

Task0:
	mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE

Task1:
    mov HEX5, BLANK
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, SIX
    mov HEX0, THREE
    ljmp Task2

Task2:
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
    ljmp Task2

Task3:
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

Task4:
    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    lcall Blink
    ljmp Task4

Task5:
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

Task6:
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
Task7:
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
    ljmp Task7
  
 END