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
<<<<<<< HEAD
	sjmp forever
=======
      jb KEY.3, no_add
      jnb KEY.3, $
      lcall bcd2hex
      lcall copy_xy
      Load_X(0)
      lcall hex2bcd
      lcall Display
      ljmp forever
no_add:
      jb KEY.1, no_equal
      jnb KEY.1, $
      lcall bcd2hex
      lcall add32
      lcall hex2bcd
      lcall Display
      ljmp forever
no_equal:
      ; get more numbers
      lcall ReadNumber
      jnc no_new_digit
      lcall Shift_Digits
      lcall Display
      no_new_digit:
      ljmp forever
>>>>>>> 657b47108f756f507327b7bd0e38531127e85009
