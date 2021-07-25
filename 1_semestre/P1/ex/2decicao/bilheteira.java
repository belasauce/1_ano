import java.util.Scanner;

public class bilheteira{
	public static void main(String[]args){
	
	Scanner sc = new Scanner(System.in);
	int a;
	System.out.print("insira a sua idade ");
	a = sc.nextInt();
	if (a<6)
	{System.out.print("Isento de pagamento");}
	else if (a>6 && a<12)
	{System.out.print("Bilhete de crian\u00e7a");}
	else if (a>13 && a<65)
	{System.out.print("Bilhete normal");}
	else if (a>65)
	{System.out.print("Bilhete de 3ª idade");}
}
}
	
	
