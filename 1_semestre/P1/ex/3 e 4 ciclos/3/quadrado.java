import java.util.Scanner;

public class quadrado{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	System.out.print("Insira a altura");
	int alt = sc.nextInt();
	System.out.print("Insira o comprimento");
	int lar = sc.nextInt();
	
	for (int i=1 ; i<=alt; i++)
	{	
		for (int j=1 ; j<=lar;j++)
		{
			if ((i==1)||(alt==i))
			{
				System.out.print("*");
			}
			else if ((j==1)||(j==lar))
			{
				System.out.print("*");
			}
			else 
			{
				System.out.print(" ");
			}
		}
		System.out.println();
	
	}
	}
}
