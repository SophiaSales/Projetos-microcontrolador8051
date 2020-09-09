;Projeto 2: liga/desliga
;TDM2-26/08/20
;**********************************************
;Definiçao de variaveis 

son   bit   p1.1
soff  bit   p1.0
lamp  bit   p1.5	

           org 0h         ;origem na MP
		   mov p1,#03H    ;inicializar porta P1

verON:
           jb son,verON   ;verificar se son foi ativa
		   setb lamp      ;son foi ativada 
		                  ;a saida
verOFF:
           jb soff,verOFF ;verificar se soff foi ativada
		   clr lamp       ;se for ativada lamp=0
		   jmp verON      ;verificando as chaves
           end	          ;fim 	   
