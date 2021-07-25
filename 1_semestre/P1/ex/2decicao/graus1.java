import java.util.Scanner;

public class graus1{
	public static void main(String[]args){
	
	Scanner sc = new Scanner(System.in);
	double b,f;
	char a;
	System.out.print("digite celcius/fahrenheit ");
	a = sc.nextLine().charAt(0);
	System.out.print("introduza o valor ");
	b = sc.nextDouble();
	if ( a=='f')
	{ b = 1.8*b+32;
	System.out.printf("este valor em celcius e %.2f", b);}
	else 
	{b = (b-32)/1.8;
	System.out.printf("este valor em fahrenheit e %.2f", b);}
	}
	}
	
	
