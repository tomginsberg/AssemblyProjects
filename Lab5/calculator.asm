$MODDE0CV
org 0000H
   ljmp forever

dseg at 30h

x:		ds	4
y:		ds	4
bcd:	ds	5

bseg

mf:		dbit 1

$include(math32.asm)

forever:
	sjmp forever