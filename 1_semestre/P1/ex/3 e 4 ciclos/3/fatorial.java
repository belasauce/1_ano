import java.util.Scanner;

public class fatorial{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int m,a=1;
	m = sc.nextInt();
	if (m>0 && m<=10)
	{for (int i= 1 ;  i<= m ; i++)
	{a = a*i;
	System.out.println(i+ "! =" +a );}}
	else 
	{ System.out.print("TA TUDO MAL");}
}
} 
	
