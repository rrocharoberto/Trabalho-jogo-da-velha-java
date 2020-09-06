programa
{
	inclua biblioteca Util
	inteiro dimensaoTab = 3
	funcao inicio()
	{
		cadeia tabuleiro [3][3]

		povoandoAMatriz(tabuleiro)
		
		desenhandoTab(tabuleiro)

		escreva("")
		escreva("Digite o nome do primeiro jogador (X)\n")
		cadeia nome1
		leia (nome1)
		escreva("Agora, digite o nome do segundo jogaor (O)\n")
		cadeia nome2
		leia (nome2)
		cadeia simboloO = " O"
		cadeia simboloX = " X"
	
		inteiro i = 0;
		logico ganhou = falso

		efetuarJogada(nome1, 0,0,simboloX,tabuleiro)
		ganhou = verificaSeGanhou(tabuleiro, simboloX)
		
		efetuarJogada(nome2,1,1,simboloO,tabuleiro)
		ganhou = verificaSeGanhou(tabuleiro, simboloO)
		
		efetuarJogada(nome1,2,0,simboloX,tabuleiro)
		ganhou = verificaSeGanhou(tabuleiro, simboloX)
		
		efetuarJogada(nome2,1,0,simboloO,tabuleiro)
		ganhou = verificaSeGanhou(tabuleiro, simboloO)
		
		efetuarJogada(nome1,0,1,simboloX,tabuleiro)
		ganhou = verificaSeGanhou(tabuleiro, simboloX)
		
		efetuarJogada(nome2,1,2,simboloO,tabuleiro)
		ganhou = verificaSeGanhou(tabuleiro, simboloO)
		
		

		mostraVencedor(nome2)
		mostraVelha(ganhou)
	
	}

	funcao desenhandoTab (cadeia tabuleiro [][]){
		limpa()
		
		escreva("===================\n")
		escreva("BEM VINDO AO JOGO DA VELHA\n")
		escreva("===================\n")

		para (inteiro i = 0; i < dimensaoTab; i++){
			para (inteiro j = 0; j < dimensaoTab; j++){

				escreva("|  " + tabuleiro [i][j] + " " )
				
			}
			escreva("|")
			escreva("\n")
			escreva("===================\n")
		}

		Util.aguarde(1500)
	
	}

	funcao povoandoAMatriz(cadeia tabuleiro[][]){

		tabuleiro [0][0] = "11"
		tabuleiro [0][1] = "12"
		tabuleiro [0][2] = "13"
		tabuleiro [1][0] = "21"
		tabuleiro [1][1] = "22"
		tabuleiro [1][2] = "23"
		tabuleiro [2][0] = "31"
		tabuleiro [2][1] = "32"
		tabuleiro [2][2] = "33"	
	}

	

	funcao logico verificaSeGanhou(cadeia tabuleiro [][],cadeia simbolo){

		para (inteiro i = 0; i < dimensaoTab; i++){

			se ((tabuleiro [0][i] == simbolo) e (tabuleiro [1][i] == simbolo) e (tabuleiro [2][i] == simbolo)){
				
				retorne verdadeiro
				
			}senao se ((tabuleiro [i][0] == simbolo) e (tabuleiro [i][1] == simbolo) e (tabuleiro [i][2] == simbolo)){
				
				retorne verdadeiro				
			
			}
				
		}
		se ((tabuleiro [0][0] == simbolo) e (tabuleiro [1][1] == simbolo) e (tabuleiro [2][2] == simbolo)){
			
			retorne verdadeiro			
		
		}senao se ((tabuleiro [2][0] == simbolo) e (tabuleiro [1][1] == simbolo) e (tabuleiro [0][2] == simbolo)){
			
			retorne verdadeiro		
		}senao{
			retorne falso
		}
				
	}
	
	funcao mostraVencedor (cadeia nome) {
		escreva("FIM DE JOGO!!!\n")
		escreva("Parabéns " + nome + "!!!Você ganhou essa partida!!!\n")
		
	}
	
	funcao mostraVelha (logico ganhou){
		se (ganhou == falso){
			escreva("FIM DE JOGO!!!\n")
			escreva("Poxa... Deu velha...Vocês empataram!!!\n")
			
		}
				
	}
	funcao efetuarJogada(cadeia nome, inteiro linha, inteiro coluna, cadeia simbolo,cadeia tabuleiro[][]) {
		
		tabuleiro[linha][coluna] = simbolo
		desenhandoTab(tabuleiro)
		escreva("JOGADA DE: " + nome + "\n")
		escreva("Linha povoada: " + (linha + 1) + " coluna povoada: " + (coluna + 1) + " Simbolo Inserido pelo jogador: " + simbolo + "\n")

		Util.aguarde(1500)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1061; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */