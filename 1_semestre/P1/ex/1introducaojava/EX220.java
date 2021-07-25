import java.util.Scanner;

public class EX220
{
	public static void main(String[] args)
	{
	Scanner sc = new Scanner(System.in);
	int a, b, c, d;
	System.out.println("Intervalo 1");
	System.out.print("digite um valor");
	a = sc.nextInt();
	System.out.print("digite outro valor");
	b = sc.nextInt();
	System.out.println("Intervalo 1");
	System.out.print("digite um valor");
	c = sc.nextInt();
	System.out.print("digite um valor");
	d = sc.nextInt();
	if ( (c>a && c<b) ||
         (d>a && d<b) ||
         (a>c && a<d) ||
         (b>c && b<d))
    {System.out.print("true");}
    else
    {System.out.print("true");}
	}
	
}
	
	
	
