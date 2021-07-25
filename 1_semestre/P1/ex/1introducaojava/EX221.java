import java.util.Scanner;

public class EX221
{
	public static void main(String[] args)
	{
	Scanner sc = new Scanner(System.in);
	int a, b;
	System.out.print("digite um valor DE 1-20  ");
	a = sc.nextInt();
	int rand = (int)(Math.random() * 20) + 1;
	System.out.println("o valor generado pelo computador foi " + rand);
	b = Math.abs(rand-a);
	if (a==rand)
	{System.out.print("acertaste!!");}
	else 
	{System.out.print("boa tentativa :( ");}
	System.out.print(b);
	}
}
