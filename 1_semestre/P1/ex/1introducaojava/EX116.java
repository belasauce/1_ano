import java.util.Scanner;

public class EX116
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		double d1, d2, d3, d4, media;
		System.out.println("insira quanto foi gasto no 1 dia de ferias");
		d1 = sc.nextDouble();
		d2 = (d1*120)/100;
		d3 = (d2*120)/100;
		d4 = (d3*120)/100;
		media = (d1+d2+d3+d4)/4;
		System.out.printf("a media das despesas do turista e: %.2f", media);
	}
}
