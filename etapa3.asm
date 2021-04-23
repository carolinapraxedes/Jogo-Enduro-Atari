.text
main:
	addi $9,$0,4 
	lui $23,0x1001 
	addi $10,$0,176 
#INICIO DO CEU
forExterno:
	beq $10,$0,InicioMontanha
for: 
	beq $9,$0,fim	
	ori $8,$0,0x0000CD #colocando a cor	
	
	sw $8,0($23) #colocando a cor no endereço inicial			
	sw $8,4($23)			
	sw $8,8($23)	 		
	sw $8,12($23)	
	addi $23,$23,16 #para ele ir para o próximo valor
	#é 16 de distancia do valor original   
	addi $9,$9,-1
	j for
		
fim:
	addi $9,$0,4
	addi $10,$10,-1
	j forExterno

	
#FIM DO CEU
#INICIO DA MONTANHA
InicioMontanha:
	lui $23,0x1001 #colocando o endereço inicial
	addi $5,$0,21 #l(linha)
	addi $6,$0,126 #L
	addi $7,$0,60 
	jal CalculoMontanha
	
	#linha1 - montanha1
	ori $11,0xF4A460
	sw $11,0($2) 
	sw $11,4($2)
	sw $11,8($2)
	sw $11,8($2)
	sw $11,12($2)
	sw $11,16($2)
	sw $11,20($2)
	sw $11,24($2)	
	sw $11,28($2)
	sw $11,32($2)
	sw $11,36($2)
	sw $11,40($2)
	sw $11,44($2)
	sw $11,48($2)
	sw $11,52($2)
	sw $11,56($2)
	sw $11,60($2)
	sw $11,64($2)
	sw $11,68($2)
	sw $11,72($2)
	sw $11,76($2)
	sw $11,80($2)
	sw $11,84($2)
	sw $11,88($2)
	sw $11,92($2)
	
	#montanha2
	ori $11,0xb89f5f
	sw $11,284($2)
	sw $11,288($2)
	sw $11,292($2)
	sw $11,296($2)
	sw $11,300($2)
	sw $11,304($2)
	sw $11,308($2)
	sw $11,312($2)
	sw $11,316($2)
	sw $11,320($2)
	sw $11,324($2)
	sw $11,328($2)
	sw $11,332($2)
	sw $11,336($2)
	sw $11,340($2)
	sw $11,344($2)
	
	
	
	addi $2,$2,-508 #linha 2
	sw $11,0($2)
	sw $11,4($2)
	sw $11,8($2)
	sw $11,8($2)
	sw $11,12($2)
	sw $11,16($2)
	sw $11,20($2)
	sw $11,24($2)
	sw $11,28($2)
	sw $11,32($2)
	sw $11,36($2)
	sw $11,40($2)
	sw $11,44($2)
	sw $11,48($2)
	sw $11,52($2)
	sw $11,56($2)
	sw $11,60($2)
	sw $11,64($2)
	sw $11,68($2)
	sw $11,72($2)
	sw $11,76($2)
	sw $11,80($2)
	sw $11,84($2)
	
	#montanha2
	sw $11,288($2)
	sw $11,292($2)
	sw $11,296($2)
	sw $11,300($2)
	sw $11,304($2)
	sw $11,308($2)
	sw $11,312($2)
	sw $11,316($2)
	sw $11,320($2)
	sw $11,324($2)
	sw $11,328($2)
	sw $11,332($2)
	sw $11,336($2)

		
	addi $2,$2,-504 #linha 3

	sw $11,0($2)
	sw $11,4($2)
	sw $11,8($2)
	sw $11,8($2)
	sw $11,12($2)
	sw $11,16($2)
	sw $11,20($2)
	sw $11,24($2)
	sw $11,28($2)
	sw $11,32($2)
	sw $11,36($2)
	sw $11,40($2)
	sw $11,44($2)
	sw $11,48($2)
	sw $11,52($2)
	sw $11,56($2)
	sw $11,60($2)
	sw $11,64($2)
	sw $11,68($2)
	sw $11,72($2)
	
	#montanha2
	sw $11,284($2)
	sw $11,288($2)
	sw $11,292($2)
	sw $11,296($2)
	sw $11,304($2)
	sw $11,308($2)
	sw $11,312($2)
	sw $11,316($2)
	sw $11,320($2)
	sw $11,324($2)
	
		
	addi $2,$2,-500 #linha 4
	

	sw $11,0($2)
	sw $11,4($2)
	sw $11,8($2)
	sw $11,8($2)
	sw $11,12($2)
	sw $11,16($2)
	sw $11,36($2)
	sw $11,40($2)
	sw $11,44($2)
	sw $11,48($2)
	sw $11,52($2)
	
	#cruz
	ori $11,0xb89f5f
	sw $11,276($2)
	sw $11,280($2)
	sw $11,284($2)
	
	#parte2 - montanha2
	sw $11,296($2)
	sw $11,300($2)
	sw $11,304($2)
	sw $11,308($2)
	
	addi $2,$2,-516 #linha 5
	sw $11,44($2)
	sw $11,48($2)
	sw $11,52($2)
	
	#cruz
	
	sw $11,284($2)
	
	#parte2 - montanha2
	sw $11,300($2)	
	sw $11,304($2)
	sw $11,308($2)
	sw $11,300($2)
	
	addi $2,$2, -520 #linha 6
	#cruz
	sw $11,292($2)
	
	#parte2-montanha2
	sw $11,312($2)
	sw $11,316($2)
	
	
	addi $2,$2,-524 #linha 7	
	#parte2-montanha2
	sw $11,328($2)
	sw $11,324($2)
	
	j InicioGrama
	
CalculoMontanha:
	mul $11,$5,$6 #$8 = l * L
	add $11,$11,$7 #$8 = l * L + c
	sll $11,$11,2  #$8 = (l*L+c)*4
	add $2,$11,$23 #$2 = $8 + &p0
	jr $31

#FIM DA MONTANHA
#INICIO DA GRAMA
InicioGrama:
	addi $12,$0,4 #colocando o valor do laço
	lui $23,0x1001 #colocando o endereço inicial
	addi $13,$0,200 #valor para o for externo
	addi $23,$23,11264
forExternoGrama:
	addi $14,$0,48
	ori $15,0x228B22	
forGrama:	 
	beq $14,$0,InicioCarro1
	addi $14,$14,-1
	addi $13,$0,128	
fimGrama:
	beq $13,$0,forGrama
	sw $15,0($23)
	addi $23,$23,4
	addi $13,$13,-1
	j fimGrama
fimExternoGrama:
	addi $2,$0,10
	syscall
#FIM DO CEU
#INICIO DO CARRO1

InicioCarro1:

	addi $20,$0,40 #a linha onde coloca o carro
	addi $4,$0,50 #coluna onde colocar o carro
	
	jal CalculoCarro
	addi $17,$0,0xFF8C00
	add $16,$0,$2
	jal CarroPrincipal
	
	addi $22, $0, 40 #coluna inicial do carro do jogador
	addi $8,$0,28 #a linha onde coloca o carro
	addi $3, $0, 10 #a linha onde coloca o carro
	j contador
#FIM DO CARRO1

#INICIO DO PISTA
InicioPistaEsquerda:
	addi $12,$0,4 #colocando o valor do laço
		
	ori $11,$0,0x4F4F4F	
		
	sw $11,1016($23)
	
	sw $11,2032($23)
	
	sw $11,3048($23)
	
	sw $11,4064($23)	
	
	sw $11,5080($23)
		
	sw $11,6096($23)
	
	ori $11,$0,0x4F4F4F
	
	sw $11,7112($23)
	
	sw $11,8128($23)
	
	sw $11,9144($23) 
		
	sw $11,10160($23) 
	 
	sw $11,11176($23)
	
	ori $11,$0,0x4F4F4F
		
	sw $11,12192($23) 
	
	sw $11,13208($23)
	
	sw $11,14224($23)
	
	sw $11,15240($23)
	
	sw $11,16256($23)
	
	sw $11,17272($23)	
	
	sw $11,18796($23)
	
	sw $11,19812($23) 
	
	sw $11,20828($23)
	
	jr $31
	
#pista direita
InicioPistaDireita:	
	ori $11,$0,0x4F4F4F	
	
	sw $11,1032($23)
	
	sw $11,2064($23)
	
	sw $11,3096($23)
	
	sw $11,4128($23)	
	
	sw $11,5160($23)
		
	sw $11,6192($23)
	
	ori $11,$0,0x4F4F4F
	
	sw $11,7224($23)
	
	sw $11,8256($23)
	
	sw $11,9288($23) 
		
	sw $11,10320($23) 
	
	sw $11,11352($23)
	
	ori $11,$0,0x4F4F4F
		
	sw $11,12384($23) 
	
	sw $11,13416($23)
	
	sw $11,14448($23)
	
	sw $11,15480($23)
	
	sw $11,16512($23)
	
	
	sw $11,18576($23)
	
	sw $11,19608($23)
	
	sw $11,20640($23) 
	
	sw $11,21672($23)
	
	jr $31
	
contador:
	addi $24,$0,0
	lui $23,0x1001 #colocando o endereço inicial	
	addi $23,$23,11520
	
movimentacao:
	addi $2,$0,32
	addi $4,$0,15
	syscall
	
	beq $24,$0,movi
	jal apagando
	addi $23,$23,508	
	addi $24,$0,0
	
	jal InicioPistaEsquerda
	addi $23,$23,-508
	addi $23,$23,516	
	jal InicioPistaDireita
	
	#------------------------------------------ 
	
	bne $3, $0, vaAlem
	
		
	addi $4, $0, 64 #coluna onde colocar o carro
	addi $20,$8,0 #a linha onde coloca o carro
	jal CalculoCarro
	addi $17,$0,0xffffff #a linha onde coloca o carro
	addi $25, $2, 0
	jal linhaMeio
	addi $8, $8, 1 #a linha onde coloca o carro
	addi $3, $0, 1 #a linha onde coloca o carro
	addi $19, $0, 66
	bne $8, $19, vaAlem
	addi $8, $0, 28 #a linha onde coloca o carro
vaAlem:
	addi $3, $3, -1 #a linha onde coloca o carro
	
	 lui $19, 0xffff
	lw $20, 0($19)
	bne $20, $0, verCaracter
	j continue
verCaracter: lw $19, 4($19)
	addi $4, $22, 0 #coluna onde colocar o carro
	addi $20,$0,50 #a linha onde coloca o carro
	
	jal CalculoCarro
	addi $17,$0,0x228B22	
	add $16,$0,$2
	jal CarroPrincipal	
	addi $20, $0, 'a'
	beq $19, $20, char_a
	addi $20, $0, 'd'
	beq $19, $20, char_d
	j continue
								
char_a:
	addi $22, $22, -1 #coluna onde colocar o carro
	j continue
	
char_d:
	addi $22, $22, 1 #coluna onde colocar o carro
	j continue
	
continue:	addi $4, $22, 0 #coluna onde colocar o carro
	addi $20,$0,50 #a linha onde coloca o carro
	
	jal CalculoCarro
	addi $17,$0,0x00FF7F
	add $16,$0,$2
	jal CarroPrincipal					
			
	#-------------------------								
	j movimentacao	
movi:
	jal apagando	
	addi $23,$23,-508
	addi $24,$0,1
	
	jal InicioPistaEsquerda
	addi $23,$23,508
	addi $23,$23,-516
	jal InicioPistaDireita
	j movimentacao
	
apagando:
	addi $12,$0,4 #colocando o valor do laço
	lui $23,0x1001 #colocando o endereço inicial
	addi $13,$0,200 #valor para o for externo
	addi $23,$23,11520

	#pista esquerda
	#cinza escuro
	ori $11,$0,0x228B22	
	sw $11,0($23)
	sw $11,508($23)
	sw $11,1016($23)
	sw $11,1524($23)
	sw $11,2032($23)
	sw $11,2540($23)
	sw $11,3048($23)
	sw $11,3556($23)
	sw $11,4064($23)	
	sw $11,4572($23)
	sw $11,5080($23)
	sw $11,5588($23)	
	sw $11,6096($23)
	
	#cinza claro
	sw $11,6604($23)
	sw $11,7112($23)
	sw $11,7620($23)
	sw $11,8128($23)
	sw $11,8636($23)
	sw $11,9144($23) 
	sw $11,9652($23)	
	sw $11,10160($23) 
	sw $11,10668($23) 
	sw $11,11176($23)
	
	#branco
	sw $11,11684($23)	
	sw $11,12192($23) 
	sw $11,12700($23)
	sw $11,13208($23)
	sw $11,13716($23)
	sw $11,14224($23)
	sw $11,14732($23)
	sw $11,15240($23)
	sw $11,15748($23)
	sw $11,16256($23)
	sw $11,16764($23)
	sw $11,17272($23)
	sw $11,17780($23)
	sw $11,18288($23)
	sw $11,18288($23)
	sw $11,18796($23)
	sw $11,19304($23)
	sw $11,19812($23) 
	sw $11,20320($23)
	sw $11,20828($23)
	sw $11,21336($23) 

	#pista direita
	#cinza escuro
	ori $11,$0,0x228B22	
	sw $11,0($23)
	sw $11,516($23)
	sw $11,1032($23)
	sw $11,1548($23)
	sw $11,2064($23)
	sw $11,2580($23)
	sw $11,3096($23)
	sw $11,3612($23)
	sw $11,4128($23)	
	sw $11,4644($23)
	sw $11,5160($23)
	sw $11,5676($23)	
	sw $11,6192($23)
	
	#cinza claro
	sw $11,6708($23)
	sw $11,7224($23)
	sw $11,7740($23)
	sw $11,8256($23)
	sw $11,8772($23)
	sw $11,9288($23) 
	sw $11,9804($23)	
	sw $11,10320($23) 
	sw $11,10836($23) 
	sw $11,11352($23)
	
	#branco
	sw $11,11868($23)	
	sw $11,12384($23) 
	sw $11,12900($23)
	sw $11,13416($23)
	sw $11,13932($23)
	sw $11,14448($23)
	sw $11,14964($23)
	sw $11,15480($23)
	sw $11,15996($23)
	sw $11,16512($23)
	sw $11,17028($23)
	sw $11,17544($23)
	sw $11,18060($23)
	sw $11,18576($23)
	sw $11,19092($23)
	sw $11,19608($23)
	sw $11,20124($23)
	sw $11,20640($23) 
	sw $11,21156($23)
	sw $11,21672($23)
	sw $11,22188($23)

	
			
	jr $31
#FIM DO PISTA

fimGame:
	addi $2,$0,10
	syscall
#
#rotinha desenha carro
#entradas: $16 é o ponto
	#  $17 é a cor
	#  reg usados sem preservar: $11,$2, $23
CarroPrincipal:
	add $2,$0,$16	
	#linha1 - carroPrincipal	
	add $18,$0,$17
	sw $18,0($2)
	sw $18,12($2)
	sw $18,16($2)
	sw $18,28($2)
	
	#linha2 - carroPrincipal
	addi $2,$2,512

	sw $18,0($2)
	sw $18,4($2)
	sw $18,8($2)
	sw $18,12($2)
	sw $18,16($2)
	sw $18,20($2)
	sw $18,24($2)
	sw $18,28($2)
	
	#linha3 - carroPrincipal
	addi $2,$2,508
	sw $18,0($2)
	sw $18,16($2)
	sw $18,20($2)
	sw $18,36($2)
	
	#linha4 - carroPrincipal
	addi $2,$2,512

	
	sw $18,0($2)
	sw $18,4($2)
	sw $18,8($2)
	sw $18,12($2)
	sw $18,16($2)
	sw $18,20($2)
	sw $18,24($2)
	sw $18,28($2)
	sw $18,32($2)
	sw $18,36($2)
	
	#linha5 - carroPrincipal
	addi $2,$2,512
	
	sw $18,0($2)
	sw $18,16($2)
	sw $18,20($2)
	sw $18,36($2)
	jr $31
	
CalculoCarro:
	mul $21, $20, 128  #$8 = l * L
	add $21,$21,$4 #$8 = l * L + c
	sll $21,$21,2  #$8 = (l*L+c)*4
	addi $2,$21, 0x10010000
	jr $31


# rotina para a linha do meio
# entrada: $25, $17

linhaMeio:	
	#branco esquerdo
	addi $4, $0, 0x228B22
	sw $4,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	sw $17,0($25)
	addi $25, $25, 512
	jr $31
