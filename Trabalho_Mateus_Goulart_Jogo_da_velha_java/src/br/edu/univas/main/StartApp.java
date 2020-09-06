package br.edu.univas.main;

import java.util.Scanner;


public class StartApp {
	
	static int dimensaoTab = 3;
	static Scanner read = new Scanner (System.in);
	
	public static void main(String[] args) {
		
		String tabuleiro [] [] = new String [dimensaoTab] [dimensaoTab];
			
		povoandoAMatriz(tabuleiro);
				
		desenhandoTab(tabuleiro);
		
		System.out.println("");
		System.out.println("Digite o nome do primeiro jogador (X)");
		String nome1 = read.nextLine();
		System.out.println("Agora digite o nome do segundo jogador (O)");
		String nome2 = read.nextLine();	
		String simboloO = " O";
		String simboloX = " X";
		
		int i = 0;
		boolean ganhou = false;
		
		do {
			
			mecanicaDeJogo (tabuleiro, nome1, simboloX);
			i++;
			ganhou = verificaSeGanhou(tabuleiro, simboloX);
			
			if(ganhou == true) {				
				
				mostraVencedor(nome1);
				
				break;	
			}
			
			if (i==9) {
				break;
			}
						
			mecanicaDeJogo(tabuleiro,nome2, simboloO);
			i++;
			ganhou = verificaSeGanhou(tabuleiro, simboloO);
			
			if (ganhou == true) {
					
				mostraVencedor(nome2);
				
				break;				
			}
		
	} while(true);
		
		mostraVelha(ganhou);
		
		read.close();
	}

	public static void desenhandoTab (String tabuleiro [][]) {
		

		System.out.println("===================");
		System.out.println("BEM VINDO AO JOGO DA VELHA");
		System.out.println("===================");
		
		for (int i = 0; i < dimensaoTab; i++) {
			
			for(int j = 0; j < dimensaoTab; j++) {
				
				System.out.print("|  " + tabuleiro [i][j] + " " );
			
			}
			System.out.print("|");
			System.out.println("");
			System.out.println("===================");
		}
	}
	
	public static void mecanicaDeJogo (String tabuleiro [][], String nome, String simbolo ) {
		
		System.out.println("Sua vez! " + nome + ", digite a posição de sua jogada: ");
		String jogada = read.nextLine();
		
		for(int i = 0; i < dimensaoTab; i++) {
			
			for (int j = 0; j < dimensaoTab; j++) {
				
				if (tabuleiro [i][j].equals(jogada) ) {
					
					tabuleiro [i][j] = simbolo;
					
				}
				
			}
			
		}
		
		desenhandoTab(tabuleiro);
		
		
	}
	
	public static boolean verificaSeGanhou (String tabuleiro [][], String simbolo) {
		
		for (int i = 0; i < dimensaoTab; i++) {			
			
			if ((tabuleiro[0][i].equals(simbolo)) && (tabuleiro [1][i].equals(simbolo)) && (tabuleiro [2][i].equals(simbolo)) ) {
				
				return true;
				
			}else if((tabuleiro [i][0].equals(simbolo)) && (tabuleiro [i][1].equals(simbolo)) && (tabuleiro [i][2].equals(simbolo))) {
				
				return true;
								
			}
			
		}
		
		if ((tabuleiro [0][0].equals(simbolo)) && (tabuleiro [1][1].equals(simbolo)) && (tabuleiro [2][2].equals(simbolo))) {
			
			return true;
			
		}if ((tabuleiro [2][0].equals(simbolo)) && (tabuleiro [1][1].equals(simbolo)) && (tabuleiro [0][2].equals(simbolo))) {
			
			return true;
			
		}else {
			
			return false;
	
		}
						
	}

	public static void povoandoAMatriz (String tabuleiro [][]) {
		
		tabuleiro [0][0] = "1a";
		tabuleiro [0][1] = "1b";
		tabuleiro [0][2] = "1c";
		tabuleiro [1][0] = "2a";
		tabuleiro [1][1] = "2b";
		tabuleiro [1][2] = "2c";
		tabuleiro [2][0] = "3a";
		tabuleiro [2][1] = "3b";
		tabuleiro [2][2] = "3c";
		
	}

	public static void mostraVencedor(String nome) {
		
		System.out.println("Parabéns " + nome + " você ganhou essa partida!!!");
		
	}
	
	public static void mostraVelha(boolean ganhou) {
		
		if(ganhou == false) {
			
			System.out.println("Poxa... deu velha!! Vocês empataram!");
			
		}
		
	}
	
}
