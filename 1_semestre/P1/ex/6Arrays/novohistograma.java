import java.util.*;
public class novohistograma {
	
	public static void main (String[] args) {
	Scanner sc = new Scanner(System.in);
	System.out.print("introduza um intervalo\n");
	System.out.print("inicio:           ");
	int a = sc.nextInt();
	System.out.print("fim:              ");
	int b = sc.nextInt();
	System.out.print("tamanho do array: ");
	int c = sc.nextInt();
	histograma(random(a,b,c),a,b);
	}
	public static int[] random(int a, int b, int c){
		int [] rand = new int[c];
		for (int i = 0; i < c; i++)
		{
			rand[i]= (int)(Math.random()*b)+a;
			
		}
		for (int i = 0; i < c; i++)
		{
			System.out.print(rand[i]+"  /  ");
		}
		System.out.println();
		
		
	return rand;
	}
	public	static void histograma(int [] a,int b, int c){
	int [][] d = new int[a.length][2];
	int [] soma = new int[a.length];
	int som = 0  , i = 0;
		for (int j = b; j <= c ; j++)
		{	
			som =0;
			for ( i = 0 ; i < a.length ; i++)
			{
				if ( j == a[i])
					{
						som++;	
					}
				
			}
			System.out.print(j + "  ocorre   ");
			System.out.println(som);
		}
	}
}
		
