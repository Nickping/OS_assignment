org 0x7c00
[BITS 16]

START:   
mov		ax, 0xb800
mov		es, ax
mov		ax, 0x00
mov		bx, 0
mov		cx, 80*25*2
mov		si, 0

CLS:
mov		[es:bx], ax
add		bx, 1
loop 	CLS


INTER:
mov		ah, 0x04
int 	0x1a


CENTURY:
mov		bh, ch
shr		bh, 4
add		bh, 0x30
mov		bl, ch
and		bl, 0x0f
add		bl, 0x30
mov		ax, bx
mov		bx, 0
mov     byte[es:bx], ah
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1
mov     byte[es:bx], al
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1

mov		si, bx
mov		bx, 0
YEAR:
mov		bh, cl
shr		bh, 4
add		bh, 0x30
mov		bl, cl
and		bl, 0x0f
add		bl, 0x30
mov		ax, bx
mov		bx, 0
mov		bx, si
mov     byte[es:bx], ah
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1
mov     byte[es:bx], al
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1

mov		si, bx
mov		bx, 0

MONTH:
mov		bh, dh
shr		bh, 4
add		bh, 0x30
mov		bl, dh
and		bl, 0x0f
add		bl, 0x30
mov		ax, bx
mov		bx, 0
mov		bx, si
mov     byte[es:bx], ah
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1
mov     byte[es:bx], al
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1

mov		si, bx
mov		bx, 0 


DAY:
mov		bh, dl
shr		bh, 4
add		bh, 0x30
mov		bl, dl
and		bl, 0x0f
add		bl, 0x30
mov		ax, bx
mov		bx, 0
mov		bx, si
mov     byte[es:bx], ah
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1
mov     byte[es:bx], al
add     bx, 1
mov     byte[es:bx], 0x0e
add     bx, 1

mov		si, bx
mov		bx, 0
