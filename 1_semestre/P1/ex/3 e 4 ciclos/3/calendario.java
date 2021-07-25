import java.util.Scanner;

public class calendario{
	public static void main(String[]args){
	
	Scanner sc = new Scanner(System.in);
	int a, b, c,dia_semana;
	System.out.print("introduza o mes(Int) ");
	a = sc.nextInt();
	System.out.print("introduza o ano(Int) ");
	c = sc.nextInt();
	System.out.print("introduza o dia da semana");
	dia_semana = sc.nextInt();
	for (int i=0; i<22; i++)
	{
	System.out.print("-")
	if (a==1 || a==3 || a==5 || a==7 || a==8 || a==10 || a==12)
	b=31;
	// b sao todos os meses 31
	
	else if ( a==4 || a==6 || a==9 || a==11)
	 b=30;
	// todos os meses 30
	 	
	
	else if  ((c%4)!=0 && a==2)
   // n ser bissssexto
	
	else if ((c%4)==0 && a==2)
        // ser bissexto
	}
}
}
	
	
	
