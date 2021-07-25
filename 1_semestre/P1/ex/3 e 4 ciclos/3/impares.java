import java.util.Scanner;

public class impares{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	System.out.print("introduza um valor positivo");
	int a= sc.nextInt();
	System.out.print("introduza outro valor positivo");
	int b= sc.nextInt();
		if (a < b)
		{
			for ( int i=a ; i<=b; i++)
			{
				if (i%2!=0)
				{
					System.out.println(i);
				}
			}
		}
		else if (b < a)
		{
			for ( int i=a ; i<=b; i++)
			{
				if (i%2!=0)
				{
					System.out.println(i);
				}
			}
		}
		else
		{
			for ( int i=a ; i<=b; i++)
			{
				if (i%2!=0)
				{
					System.out.println(i);
				}
			}
		}
}
}
				
		
