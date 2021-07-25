import java.util.Scanner;

public class Notareprovadoaprovado{
		public static void main(String[] args){
		
		Scanner sc = new Scanner(System.in);
		double tp1, tp2, ei, notafinal;
		System.out.print("digite o 1 teste teorico ");
		tp1 = sc.nextDouble();
		System.out.print("digite o 2 teste teorico ");
		tp2 = sc.nextDouble();
		System.out.print("digite o ultimo teste ");
		ei = sc.nextDouble();
		notafinal = (tp1*.20 +tp2*.30+ei*.50)	;
		if (notafinal>=9.5)
		{System.out.print("aprovado");}
		else
		{System.out.print("reprovado");}
		}
	} 
		
