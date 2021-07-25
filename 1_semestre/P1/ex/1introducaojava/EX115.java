import java.util.Scanner;

public class EX115
{
	public static void main(String[] args)
	{
	Scanner sc = new Scanner(System.in);
	double qa, tp1, tp2, tp3, p1, p2, nota;
	System.out.println("insira a nota de tp1"); 
	tp1 = sc.nextDouble();
	System.out.println("insira a nota de tp2");
	tp2 = sc.nextDouble();
	System.out.println("insira a nota de tp3");
	tp3 = sc.nextDouble();
	System.out.println("insira a nota de p1");
	p1 = sc.nextDouble();
	System.out.println("insira a nota de p2");
	p2 = sc.nextDouble();
	System.out.println("insira a nota de qa");
	qa = sc.nextDouble();
	nota = tp1*0.10 + tp2*0.10 + tp3*0.10 + p1*0.25 + p2*0.35 + qa*0.10;
	System.out.printf("nota= %.2f", nota);
	}
}
	
