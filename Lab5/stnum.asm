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
	ljmp Main

Delay:
		mov R2, #180
	L3:	mov R1, #250
	L2:	mov R0, #250
	L1: djnz R0, L1 
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

Main:
    jnp SW.0, ZeroFalse
    jmp ZeroTrue

ZeroTrue:

    jnp SW.1, OneFalse0
    jmp OneTrue0

    OneTrue0:

        jnp SW.2, TwoFalse0
        jmp TwoTrue0

        TwoTrue0:
            ljmp Task7

        TwoFalse0:
            ljmp Task6

    OneFalse0:

        jnp SW.2, TwoFalse1
        jmp TwoTrue1

        TwoTrue1:
            ljmp Task5

        TwoFalse1:
            ljmp Task4

ZeroFalse:

    jnp SW.1, OneFalse1
    jmp OneTrue1

    OneTrue1:

        jnp SW.2, TwoFalse2
        jmp TwoTrue2

        TwoTrue2:
            ljmp Task4

        TwoFalse2:
            ljmp Task3

    OneFalse1:

        jnp SW.2, TwoFalse3
        jmp TwoTrue3

        TwoTrue3:
            ljmp Task1
        
        TwoFalse3:
            ljmp Task0


Task0:
	mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    jmp main

Task1:
    mov HEX5, BLANK
    mov HEX4, BLANK
    mov HEX3, BLANK
    mov HEX2, BLANK
    mov HEX1, SIX
    mov HEX0, THREE
    jmp main

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
    jmp main

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
    ljmp main

Task4:
    mov HEX5, FOUR
    mov HEX4, THREE
    mov HEX3, FOUR
    mov HEX2, SIX
    mov HEX1, FOUR
    mov HEX0, ONE
    lcall Blink
    ljmp main

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
    ljmp main

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
    ljmp main
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
    ljmp main
  
 END