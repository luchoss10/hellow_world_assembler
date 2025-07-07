
section .data             ;1: fichero.asm 
    msg db "Hola Mundo",10  ;2: Inicio de la seccion de datos
                            ;3: El 10 corresponde al código ASCII del salto de linea.
                            ;4:
section .text               ;5: Inicio De la seccion de codigo
  global main               ;6: Esta directiva es para hacer visible 
                            ;7: una etiqueta para el compilador de c.
                            ;8:
main:                       ;9: Por defecto el compilador de c reconoce como
                            ;10: punto de inicio del programa la etiqueta main.
  mov rax,4                 ;11: Mostrar un mensaje
                            ;12: Pone el valor 4 en el registro rax, qpara hacer la llamada a la función write (sys_write).
  mov rbx,1                 ;13: Pone el valor 1 en el registro rbx, para indicar el descriptor que hace referencia
                            ;14: a la salida estándar (stdout).
                            ;15:
  mov rcx,msg               ;16: Pone la dirección de la variable msg en el registro rcx
                            ;17:
  mov rdx,6                 ;18: Pone la longitud del mensaje incluido el 10
                            ;19: del final en el registro rdx.
  int 80h                   ;20: Llama al sistema operativo
                            ;21: devuelve el control al terminal del sistema operativo.
  mov rax,1                 ;22: Pone el valor 1 en el registro rax
                            ;23: para hacer la llamada a la función exit (sys_exit).
  mov rbx,0                 ;24: Pone el valor 0 en el registro rbx
                            ;25: para indicar el código de retorno (0= sin errores).
  int 80h                   ;26: Llama al sistema operativo
                            ;27: 
