  section .data             ;1: fichero.asm 
    msg db "Hola Mundo",10  ;2: Inicio de la seccion de datos
                            ;3: El 10 corresponde al código ASCII del salto de linea.
                            ;4:
section .text               ;5: 
  global main               ;6: 
                            ;7: 

main:

  mov rax,4
  mov rbx,1


  mov rcx,msg
  
  mov rdx,6

  int 80h

  mov rax,1

  mov rbx,0

  int 80h
