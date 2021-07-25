import java.util.Scanner;

public class factorialnova{
	public static void main(String [] args){
	int m=1;
	int a = intervalo();
	for (int i= 1 ;  i<= a ; i++)
	{m = m*i;
	System.out.println(i+ "! =" +m );}
	
	
	}
	
	
	public static int intervalo(){
		Scanner sc = new Scanner(System.in);
		int a = 0;
		do{
			System.out.print("introduza um valor(int)");
			a = sc.nextInt();
		}while((a<1) || (a>10));
		return a;
	}
	





}
