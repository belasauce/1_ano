import java.util.*;

public class triangulo{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int alt=sc.nextInt();
	for (int i= 1 ; i<=alt; i++)
	{
	printNtimes(alt-i," ");
	printNtimes(((i*2)-1),"*");
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
