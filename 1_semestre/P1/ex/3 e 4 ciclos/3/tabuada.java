import java.util.Scanner;

public class tabuada{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int a,b ;
	a = sc.nextInt();
	if ( a>0 && a<100 )
	{for ( int i=0 ; i<=10 ; i++)
	{b = a*i;
	System.out.println(a+ "*" +i+ "=" +b);}}
	else
	{System.out.print("nao da");}
}
}
