
$MODDE0CV

THREE equ #0110000B
FIVE  equ #0010010B
ZERO  equ #1000000B
SEVEN equ #1111000B
TWO   equ #0100100B
ONE   equ #1111001B
DASH  equ #0111111B
SPACE equ #1111111B

org 0000H
	ljmp myprogram 
	
;For a 33.33MHz clock takes 30ns

WaitHalfSec:
	mov R2, #90
L3:	mov R1, #250
L2:	mov R0, #250
L1: djnz R0, L1 ;3 Machince cycles 
	djnz R1, L2
	djnz R2, L3 
	ret
	
myprogram:
	mov SP, #7FH
	mov LEDRA, #0
	mov LEDRB, #0
	
M0:
	mov HEX0, THREE
	lcall WaitHalfSec
	
	mov HEX1, THREE
	mov HEX0, FIVE
	lcall WaitHalfSec

	mov HEX2, THREE
	mov HEX1, FIVE
	mov HEX0, ZERO
	lcall WaitHalfSec

	mov HEX3, THREE
	mov HEX2, FIVE
	mov HEX1, ZERO
	mov HEX0, SEVEN
	lcall WaitHalfSec

	mov HEX4, THREE
	mov HEX3, FIVE
	mov HEX2, ZERO

M1:

	mov HEX5, THREE
	mov HEX4, FIVE
	mov HEX3, ZERO
	mov HEX2, SEVEN
	mov HEX1, TWO
	mov HEX0, ONE
	lcall WaitHalfSec

	mov HEX5, FIVE
	mov HEX4, ZERO
	mov HEX3, SEVEN
	mov HEX2, TWO
	mov HEX1, ONE
	mov HEX0, THREE
	lcall WaitHalfSec	

	mov HEX5, ZERO
	mov HEX4, SEVEN
	mov HEX3, TWO
	mov HEX2, ONE
	mov HEX1, THREE
	mov HEX0, ONE
	lcall WaitHalfSec

	mov HEX5, SEVEN
	mov HEX4, TWO
	mov HEX3, ONE
	mov HEX2, THREE
	mov HEX1, ONE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, TWO
	mov HEX4, ONE
	mov HEX3, THREE
	mov HEX2, ONE
	mov HEX1, SPACE
	mov HEX0, DASH
	lcall WaitHalfSec
	
	mov HEX5, ONE
	mov HEX4, THREE
	mov HEX3, ONE
	mov HEX2, SPACE
	mov HEX1, DASH
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, THREE
	mov HEX4, ONE
	mov HEX3, SPACE
	mov HEX2, DASH
	mov HEX1, SPACE 
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, ONE
	mov HEX4, SPACE
	mov HEX3, DASH
	mov HEX2, SPACE 
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, SPACE
	mov HEX4, DASH
	mov HEX3, SPACE 
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, DASH
	mov HEX4, SPACE 
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, ZERO 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, FIVE 
	mov HEX4, ZERO
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, THREE 
	mov HEX4, FIVE
	mov HEX3, ZERO
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, THREE 
	mov HEX4, FIVE
	mov HEX3, ZERO
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SEVEN
	lcall WaitHalfSec
	
	mov HEX5, THREE 
	mov HEX4, FIVE
	mov HEX3, ZERO
	mov HEX2, SPACE
	mov HEX1, SEVEN
	mov HEX0, TWO
	lcall WaitHalfSec
	
	mov HEX5, THREE
	mov HEX4, FIVE
	mov HEX3, ZERO
	mov HEX2, SEVEN
	mov HEX1, TWO
	mov HEX0, ONE
	lcall WaitHalfSec

	mov HEX5, FIVE
	mov HEX4, ZERO
	mov HEX3, SEVEN
	mov HEX2, TWO
	mov HEX1, ONE
	mov HEX0, THREE
	lcall WaitHalfSec	

	mov HEX5, ZERO
	mov HEX4, SEVEN
	mov HEX3, TWO
	mov HEX2, ONE
	mov HEX1, THREE
	mov HEX0, ONE
	lcall WaitHalfSec

	mov HEX5, SEVEN
	mov HEX4, TWO
	mov HEX3, ONE
	mov HEX2, THREE
	mov HEX1, ONE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, TWO
	mov HEX4, ONE
	mov HEX3, THREE
	mov HEX2, ONE
	mov HEX1, SPACE
	mov HEX0, DASH
	lcall WaitHalfSec
	
	mov HEX5, ONE
	mov HEX4, THREE
	mov HEX3, ONE
	mov HEX2, SPACE
	mov HEX1, DASH
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, THREE
	mov HEX4, ONE
	mov HEX3, SPACE
	mov HEX2, DASH
	mov HEX1, SPACE 
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, ONE
	mov HEX4, SPACE
	mov HEX3, DASH
	mov HEX2, SPACE 
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, SPACE
	mov HEX4, DASH
	mov HEX3, SPACE 
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, DASH
	mov HEX4, SPACE 
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, THREE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec

	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, FIVE
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, ZERO 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, SEVEN
	lcall WaitHalfSec
	
	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, SPACE
	mov HEX1, SPACE
	mov HEX0, TWO
	lcall WaitHalfSec
	
	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, SPACE
	mov HEX2, ONE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	mov HEX5, THREE 
	mov HEX4, FIVE
	mov HEX3, ZERO
	mov HEX2, SEVEN
	mov HEX1, TWO
	mov HEX0, ONE
	lcall WaitHalfSec
	
	mov HEX5, SPACE 
	mov HEX4, SPACE
	mov HEX3, THREE
	mov HEX2, ONE
	mov HEX1, SPACE
	mov HEX0, SPACE
	lcall WaitHalfSec
	
	ljmp M1
	

END	