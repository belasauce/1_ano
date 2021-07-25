import java.util.Scanner;

public class  EX112
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		int tim, hour, min, sec;
		System.out.print("digite o tempo em segundos: ");
		tim=sc.nextInt();
		hour = tim / 3600;
		min = (tim % 3600)/60;
		sec = (tim % 60);
		System.out.printf("%02d:%02d:%02d\n", hour, min, sec);
	}
}
		
		
		
