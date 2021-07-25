import java.util.Scanner;

public class novobissexto{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int a, b;
	a = mes();
	b = getintpos();
	System.out.println(biss(b));
	System.out.printf("o mes %d tem %d\n",a,dias(a));

	
	
}
	public static int getintpos(){
		Scanner sc = new Scanner(System.in);
		int a=1;
		do{
			System.out.print("introduza o ano(Int) ");
			a = sc.nextInt();
		}while(a<=0);
		return a;
	}
	
	
	 public static int mes(){
		Scanner sc = new Scanner(System.in);
		int a = 0;
		do{
			System.out.print("introduza o mes(Int) ");
			a = sc.nextInt();
		}while((a<1) || (a>12));
		return a;
	}
	
	
	public static boolean biss(int b){
		boolean a =((b%4)==0);
		return a;
	}
	
	
	
	
	public static int dias(int a){
		int b=1;
		if (a==1 || a==3 || a==5 || a==7 || a==8 || a==10 || a==12)
	{b=31;} // b sao todos os meses 31
	
	else if ( a==4 || a==6 || a==9 || a==11)
	 {b=30;} // todos os meses 30
	 return b ;
	}
	
		
}
