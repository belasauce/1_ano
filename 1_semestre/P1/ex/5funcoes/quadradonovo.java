import java.util.Scanner;

public class quadradonovo{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	System.out.print("Insira a altura");
	int alt = sc.nextInt();
	System.out.print("Insira o comprimento");
	int lar = sc.nextInt();
	
	for (int i=1 ; i<=alt; i++)
	{	
		if ((i==1)||(alt==i))
			{
				printNtimes(lar,"*");
			}
		else 
		{
		System.out.print("*");
		printNtimes(lar-2," ");
		System.out.print("*");
		}
		
			System.out.println();
	}
}
	








public static void printNtimes(int x, String a){
		for(int i=1 ;i<=x;i++)
		{
			System.out.print(a);
		}
	}
}
