org 	100h

section .text

	call 	grafico	; Llamada a iniciar modo grafico 13h

	xor 	si, si
	xor 	di, di



	mov	    si, 150d ; X -> Columna
	mov 	di, 35d ; Y -> Fila
	call 	linea_d

    mov	    si, 145d ; X -> Columna
	mov 	di, 40d ; Y -> Fila
	call 	linea_ds

    mov	    si, 160d ; X -> Columna
	mov 	di, 90d ; Y -> Fila
	call 	linea_d2

    mov	    si, 155d ; X -> Columna
	mov 	di, 85d ; Y -> Fila
	call 	linea_d2s

    mov	    si, 150d ; X -> Columna
	mov 	di, 100d ; Y -> Fila
	call 	linea_d

    mov	    si, 145d ; X -> Columna
	mov 	di, 105d ; Y -> Fila
	call 	linea_ds

    mov	    si, 160d ; X -> Columna
	mov 	di, 155d ; Y -> Fila
	call 	linea_d2

    mov	    si, 155d ; X -> Columna
	mov 	di, 150d ; Y -> Fila
	call 	linea_d2s
    

	mov 	si, 100d ; X -> Columna
	mov 	di, 35d ; Y -> Fila
	call 	linea_h



    mov 	si, 100d ; X -> Columna
	mov 	di, 165d ; Y -> Fila
	call 	linea_h



    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    mov 	si, 110d ; X -> Columna
	mov 	di, 160d ; Y -> Fila
	call 	linea_h2

    mov 	si, 110d ; X -> Columna
	mov 	di, 105d ; Y -> Fila
	call 	linea_h2


    mov 	si, 110d ; X -> Columna
	mov 	di, 40d ; Y -> Fila
	call 	linea_h2

    mov 	si, 110d ; X -> Columna
	mov 	di, 95d ; Y -> Fila
	call 	linea_h2



    mov	    si, 110d ; X -> Columna
	mov 	di, 105d ; Y -> Fila
	call 	linea_v3

    mov	    si, 110d ; X -> Columna
	mov 	di, 40d ; Y -> Fila
	call 	linea_v3
;;;;;;;;;;;;;;;;;;;;;;;;








    mov	si, 100d ; X -> Columna
	mov 	di, 35d ; Y -> Fila
	call 	linea_v

    mov	    si, 160d ; X -> Columna
	mov 	di, 45d ; Y -> Fila
	call 	linea_v2

    mov	    si, 160d ; X -> Columna
	mov 	di, 110d ; Y -> Fila
	call 	linea_v2

    

     mov	si, 155d ; X -> Columna
	mov 	di, 50d ; Y -> Fila
	call 	linea_vs

     mov	si, 155d ; X -> Columna
	mov 	di, 115d ; Y -> Fila
	call 	linea_vs
	

	call 	kb		; Utilizamos espera de alguna tecla

	int 	20h

grafico:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

pixel:	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

linea_h: 
lupi_h:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 150d
	jne 	lupi_h
	ret

linea_h2: 
lupi_h2:	mov 	cx, 0d ; Columna 
	add 	cx, si
	mov	dx, di ; Fila
	call 	pixel
	inc 	si
	cmp 	si, 145d
	jne 	lupi_h2
	ret

linea_v:
lupi_v:	mov 	cx, si ; Columna 
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
	cmp 	di, 165d
	jne 	lupi_v
	ret


    
linea_v2:   mov 	cx, si; Columna
lupi_v2:	  
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 205d
	jne 	lupi_v2
	ret

linea_v3:   mov 	cx, si; Columna
lupi_v3:	  
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 165d
	jne 	lupi_v3
	ret

    
linea_vs:   mov 	cx, si; Columna
lupi_vs:	  
	mov	dx, 0d ; Fila
	add 	dx, di
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 190d
	jne 	lupi_vs
	ret



linea_d:
lupi_d:	mov 	cx, 0d ; Columna 
	mov	    dx, 0d ; Fila
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 160d
	jne 	lupi_d
    
	ret

linea_d2:
lupi_d2:	mov 	cx, 0d ; Columna 
	mov	    dx, 0d ; Fila
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    sub     si,1d
	cmp 	si, 149d
	jne 	lupi_d2
    
	ret

linea_ds:
lupi_ds:	mov 	cx, 0d ; Columna 
	mov	    dx, 0d ; Fila
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    inc     si
	cmp 	si, 155d
	jne 	lupi_ds
    
	ret

linea_d2s:
lupi_d2s:	mov 	cx, 0d ; Columna 
	mov	    dx, 0d ; Fila
	add 	dx, di
    add 	cx, si
	call 	pixel
	inc 	di
    sub     si,1d
	cmp 	si, 144d
	jne 	lupi_d2s
    
	ret



kb: 	mov	ah, 00h
	int 	16h
	ret

section .data