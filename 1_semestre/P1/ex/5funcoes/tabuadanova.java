import java.util.*;

public class tabuadanova{
	public static void main (String[]args){
	tabela(valor());
	
	


	
}	
	
	public static int valor(){
		Scanner sc = new Scanner(System.in);
		int n =0;
		do{
		System.out.print("introduza o valor:\n");
		n = sc.nextInt();
		}while(n<=0 || n>=100);
		return n;
	}	
	
	public static void printNtimes(String a){
		for(int i=1 ;i<=19;i++)
		{
			System.out.print(a);
		}
	}
	
	public static void tabela(int n){
		for (int i=1 ; i<=14 ; i++)
		{
			if (i==1 || i == 3 || i == 14)
			{ printNtimes("-");
			 System.out.println();}
			else if (i == 2)
			{ System.out.printf("| Tabuada dos %d |\n",n);}
			else 
			{ System.out.printf("| %d * %d | %d |\n",n , (i-3) , n*(i-3));}
		}
	}
}
	
		
