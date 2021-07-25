import java.util.Scanner;

public class bissexto{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int a, b, c;
	System.out.print("introduza o mes(Int) ");
	a = sc.nextInt();
	System.out.print("introduza o ano(Int) ");
	c = sc.nextInt();
	if (a==1 || a==3 || a==5 || a==7 || a==8 || a==10 || a==12)
	{b=31;
	System.out.printf(" o mes %d do ano %d tem %d dias", a, c, b);} // b sao todos os meses 31
	
	else if ( a==4 || a==6 || a==9 || a==11)
	 {b=30;
	 System.out.printf(" o mes %d do ano %d tem %d dias", a, c, b);} // todos os meses 30
	 	
	
	else if  ((c%4)!=0 && a==2)
	{System.out.printf(" o mes %d do ano %d tem 28 dias", a, c);} // n ser bissssexto
	
	else if ((c%4)==0 && a==2)
	{System.out.printf(" o mes %d do ano %d tem 29 dias", a, c);}  // ser bissexto
	
}
}
		
	
	
