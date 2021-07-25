import java.util.*;

public class Numint{
	public static void main(String[]args){
	int ray[]= ler();
	print(ray);
	System.out.printf("o valor maximo e %d:\n",max(ray));
	System.out.printf("o valor minimo e %d:\n",min(ray,max(ray)));
	System.out.printf("a media e %d\n",media(ray));
	System.out.printf("os numeros sao todos pares:\n");
	System.out.print(pares(ray));
	
	
}

	public static int[] ler(){
		Scanner sc = new Scanner(System.in);
		int n =0;
		do{
		System.out.print("Insira a dimensao do array: ");
		n = sc.nextInt();
		}while(n >50);
		int ray[] = new int [n];
		for (int i =0 ; i<n; i++)
		{	
			
			System.out.println("insira os valores :");
			int a = sc.nextInt();
			ray[i] = a ;
		}
		return ray;
	}
		
		
	public static void print(int[] a){
		for (int j:a)
		{
				System.out.printf("  %d  ",j);
		}
		System.out.println();
	}
	
	
	public static int max(int[] a){
		int b=0;
		for (int i=0 ; i<a.length ;i++)
		{
			if (a[i] > b)
			{ b=a[i];}
		}
		return b;
	}	
	
	
	public static int min(int[] a,int b){
		for (int i=0 ; i<a.length ;i++)
		{
			if (a[i] < b && a[i]!= 0)
			{ b=a[i];}
		}
		return b;
	}	
	
	
	public static int media(int[] a){
	int sum=0,b =0;
		for (int i =0; i< a.length; i++)
		{
			sum += a[i];
		}
		return  sum/a.length;
	}
	
	
	public static boolean pares(int [] a){
		boolean par=true, todos=true;
		
		int b =0;
		for (int i=0 ; i<a.length ;i++)
		{
			par =(a[i]%2 ==0);
			if (par == true)
			{
				b++;
			}
			todos = (b == a.length);
		}
	return todos ;
	}
}
		
	




			
