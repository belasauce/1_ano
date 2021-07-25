import java.util.Scanner;

public class EX113
{
	public static void main(String[] args)
	{
	Scanner sc = new Scanner(System.in);
	double x1, x2, y1, y2, cm, km;
	System.out.println("insira a x1");
	x1 = sc.nextDouble();
	System.out.println("insira a x2");
	x2 = sc.nextDouble();
	System.out.println("insira a y1");
	y1 = sc.nextDouble();
	System.out.println("insira a y2");
	y2 = sc.nextDouble();
	cm = Math.sqrt(Math.pow((x1-x2),2)+Math.pow((y1-y2),2));
	km = cm * 100;
	
	System.out.printf("a distancia entre a e b e= %.2f", km);
	}
}
