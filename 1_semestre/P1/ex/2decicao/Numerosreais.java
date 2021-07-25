import java.util.Scanner;

public class Numerosreais{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		double a, b;
		System.out.print("Digite um numero real ");
		a = sc.nextDouble();
		System.out.print("Digite outro numero real ");
		b = sc.nextDouble();
		if (a > b) 
		{System.out.print(a);}
		else if (a < b) 
		{System.out.print(b);}
		else 
		{System.out.print("os numeros introduzidos tem o mesmo valor");}
	}
}
	
	
