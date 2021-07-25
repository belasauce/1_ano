import java.util.*;

public class leitura{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int ray[]= new int[10];
	int x=0,b=0;
	for (int i=0; i<10;i++)
	{
		System.out.println("insira os valores :");
		int y = sc.nextInt();
	if (y<0)
	{
		break;
	}
	ray[i]=y;
	}
	for (int j:ray)
	{
		
		if ( j!=0)
		{
			System.out.printf("  %d  ",j);
		}	
	}
	System.out.println("\nEscolha o valor: ");
	int a = sc.nextInt();
	for (int i=0; i<10;i++)
	{
	if (a==ray[i])
	{
		b=b+1;
	
	}
	}
	System.out.print(b);
	
	
	 
}
}

