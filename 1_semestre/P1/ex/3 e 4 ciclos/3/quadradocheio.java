import java.util.*;

public class quadradocheio{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int a,b;
	System.out.print("Largura: ");
	a = sc.nextInt();
	System.out.print("Altura: ");
	b = sc.nextInt();
	for (int h=1; h<=b ; h++)
	{	
		System.out.println("");
		for (int i=1; i<=a; i++)
		{
		System.out.print("*");
		}	
	}
}

}
	
	
