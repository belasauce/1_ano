import java.util.Scanner;

public class numeroperfeito{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	System.out.print("Digite um numero(int+)");
	int a= sc.nextInt();
	int b=0, som=0,i=0;
	if (a >0)
	{
		for (i=1; i<a; i++)
		{
			b = a%i;
			if (b==0)
			{som+=i;}
		}
		if (a == som)
		{System.out.print("O seu numero e perfeito");}
		else 
		{System.out.print("O seu numero nao e perfeito");}
	}
}
}
