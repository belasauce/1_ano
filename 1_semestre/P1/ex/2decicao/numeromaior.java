import java.util.Scanner;

public class numeromaior{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int a,b,c;
	System.out.print("introduz um numero ");
	a = sc.nextInt();
	System.out.print("introduza o 2 numero ");
	b = sc.nextInt();
	System.out.print("introduza o 3 numero ");
	c = sc.nextInt();
	if ( c>b && b>a)
	{System.out.print(c);}
	else if  (c>a && a>b)
	{System.out.print(c);}
	else if (a>b && b>c)
	{System.out.print(a);}
	else if (a>c && c>b)
	{System.out.print(a);}
	else if (b>a && a>c)
	{System.out.print(b);}
	else if (b>c && c>a)
	{System.out.print(b);}
	}
}
	
