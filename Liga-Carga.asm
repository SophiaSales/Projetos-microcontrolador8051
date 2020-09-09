;Primeiro programa em Assembly
;Ligar uma carga
;24/08/20-TDM2

chave   bit   P1.0   ;definiçao devariaveis 
saida   bit   p1.7   ;definiçao devariaveis 
        org 0h       ;origem do codigo
		mov p1,#81h
			
volta:
        mov c,chave   ;estado da chave
		mov saida,c   ;estado chave esta escrito na saida
		jmp volta     ;verificando chave 
		end