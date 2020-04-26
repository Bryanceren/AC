
;;;;;;;;;;;;;;;;EJERCICIO 1 ;;;;;;;;;;;;;;;;

    org    100h
    

;carnet 00139817
section	.text
	mov	cx, 0000h
    mov bx, 0000h

	mov	ax, 3d

	add	ax, 9d

	add	ax, 8d

	add	ax, 1d

	add	ax, 7d

	mov	bx, 5d

	div	bx

	mov	di, 0d
	mov	cx, [len]

write	mov	bl, [comnt+di]
	mov	[di+200h], bl
	inc	di

	loop	write

section.data
    comnt      db      "En el segundo"
    len         equ     $-comnt


;;;;;;;;;;;;;;;;;;;EJERCICIO2

mov	    cx, 0000h
    mov     ax, 0000h
    mov	    bx, 0000h
	mov	    di, 0d
	mov	    bx, 2d
	mov	    ax, 4d
    mov     cx, 0011d

lupita2: mov	[di+210h], ax
    mul	bx
	
	inc	di

	loop	lupita2


