import java.util.*;

public class ordeminversa{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	System.out.print("Insira a dimensao do array: ");
	int n = sc.nextInt();
	int numeros[] = new int[n];
	for(int i =0; i < numeros.length; i++)
	{
	System.out.println("insira os valores:");
	int y = sc.nextInt();
	numeros[i]=y;
	}
	for( int i=numeros.length-1 ; i>=0 ;i--)
	{
	System.out.println(numeros[i]);
	}
	
}
}
