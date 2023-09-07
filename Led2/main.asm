;
; AssemblerApplication8.asm
;
; Created: 1/9/2021 18:40:54
; Author : Administrador
;
.include "./m328Pdef.inc"
.org 0x00 ;aca arranca el programa
; Replace with your application code
setup: ; configuro los puerto y pongo valores incinales
ldi r16,0b00111100; 
out DDRB,r16; configuro el puerto para para que los pines 5 al 2 sean salida
ldi r16,0b00000000; ;
out PORTB,r16;

start:


;PRENDIDO

prendo1:
	ldi r16,0b00111000; prendemos el led 1
	out PORTB,r16; le ponemos como salida
	call delay; vamos a delay 0 con esos valores de registro previamente cargados 
	rjmp apago1; 
apago1:
	ldi r16,0b00111100; apago el que estaba prendido
	out PORTB,r16; 
	call delay;
	rjmp prendo2;
prendo2:
	ldi r16,0b00110100; prendo el led 2
	out PORTB,r16;
	call delay;
	rjmp apago2; 
apago2:
	ldi r16,0b00111100; apago led 2
	out PORTB,r16; le ponemos como salida
	call delay; vamos a delay 0 con esos valores de registro previamente cargados 
	rjmp prendo3; 
prendo3:
	ldi r16,0b00101100; prendo led 3
	out PORTB,r16;
	call delay;
    rjmp apago3;
apago3:
	ldi r16,0b00111100; apago led 3
	out PORTB,r16;
	call delay;
    rjmp prendo4;
prendo4:
	ldi r16,0b00011100; prendo led 4
	out PORTB,r16;
	call delay;
    rjmp apago4;
apago4:
	ldi r16,0b00111100; apago led 4
	out PORTB,r16;
	call delay;
    rjmp prendo3_1;

prendo3_1:
	ldi r16,0b00101100; prendo led 3
	out PORTB,r16;
	call delay;
    rjmp apago3_1;
apago3_1:
	ldi r16,0b00111100; apago led 3
	out PORTB,r16;
	call delay;
    rjmp prendo2_1;
prendo2_1:
	ldi r16,0b00110100; prendo el led 2
	out PORTB,r16;
	call delay;
	rjmp apago2_1; 
apago2_1:
	ldi r16,0b00111100; apago led 2
	out PORTB,r16; le ponemos como salida
	call delay; vamos a delay 0 con esos valores de registro previamente cargados 
	rjmp prendo1;

delay:	    
	ldi  r18, 15 ;un segundo de delay ldi  r18, 21
	ldi  r19, 75
	ldi  r20, 189
L1: 
	dec  r20; 1
	brne L1
	jmp L2

L2:
	dec  r19 //1
	brne L1
	jmp L3
L3:
	dec  r18
	brne L1 

	RET 