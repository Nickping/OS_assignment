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


mov	bx, 0

PRINT:
mov 	dl, byte[msg+si]
mov		byte[es:bx], dl
add		bx, 1
add		si, 1
mov		byte[es:bx], 0x07
add		bx, 1
cmp		dl, 0
jne		PRINT


msg db "Hello euijoon's world", 0
