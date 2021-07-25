import java.util.Scanner;

public class EX114
{
	public static void main(String[] args)
	{
	Scanner sc = new Scanner(System.in);
	double A, B, C, D, E;
	System.out.println("digite um cateto");
	A = sc.nextDouble();
	System.out.println("digite o outro cateto");
	B = sc.nextDouble();
	C = Math.sqrt(Math.pow((A), 2)+Math.pow((B),2));
	D = Math.acos(A/C);
	E = D * 57.295779513;
	
	System.out.printf("hipotenusa = %.2f", C);
	System.out.printf("angulo = %.2f", E);
	}
}
