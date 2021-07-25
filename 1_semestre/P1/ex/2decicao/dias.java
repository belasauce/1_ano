import java.util.Scanner;

public class dias{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int a, b, c;
	System.out.print("introduza o mes(Int) ");
	a = sc.nextInt();
	System.out.print("introduza o ano(Int) ");
	c = sc.nextInt();
	System.out.print("introduza o dia(Int)");
	b = sc.nextInt();
	if (a==3 || a==5 || a==7 || a==8 || a==10)
		{if (b==31)    // ser 31 
			{System.out.printf("O dia seguinte e%d -%d -%d", 1,a+1,c);
			System.out.printf("    O dia anterior e %d -%d -%d", b-1,a,c);}
		else if (b!=1 && b!=31)//nem 31 nem 1
			{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a+1,c);
			System.out.printf("    O dia anterior e %d -%d -%d", b-1,a,c);}
		else if (b==1)  //ser 1
			{System.out.printf("O dia seguinte e %d -%d -%d",b+1,a,c);
			System.out.printf("   O dia anterior e %d -%d -%d", 31,a-1,c);}}
		
	if (a==12)
	{if (b==31)    // ser 31 
			{System.out.printf("O dia seguinte e%d -%d -%d", 1,1,c+1);
			System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
		else if (b!=1 && b!=31)//nem 31 nem 1
			{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a,c);
			System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
		else if (b==1)  //ser 1
			{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a,c);
			System.out.printf("   O dia anterior e %d -%d -%d", 31,a-1,c);}}
	if (a==1)
	{if (b==31)    // ser 31 
			{System.out.printf("O dia seguinte e%d -%d -%d", 1,a+1,c);
			System.out.printf("O dia anterior e %d -%d -%d", b-1,a,c);}
		else if (b!=1 && b!=31)//nem 31 nem 1
			{System.out.printf("O dia seguinte e %d -%d -%d",b+1,a+1,c);
			System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
		else if (b==1)  //ser 1
			{System.out.printf("O dia seguinte e %d -%d -%d",b+1,a,c);
			System.out.printf("    O dia anterior e %d -%d -%d", 31,12,c+1);}}
	
	
	else if ( a==4 || a==6 || a==9 || a==11)
	{if (b==30)    // ser 30
		{System.out.printf("O dia seguinte e%d -%d -%d", 1,a+1,c);
		System.out.printf("    O dia anterior e %d -%d -%d", b-1,a,c);}
	else if (b!=1 && b!=30)//nem 30 nem 1
		{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a+1,c);
		System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
	else if (b==1)// ser 1
		{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a,c);
		System.out.printf("    O dia anterior e %d -%d -%d", 30,a-1,c);}}
	 	
	
	else if  ((c%4)!=0 && a==2)
	{if (b==28)    // ser 28
		{System.out.printf("O dia seguinte e %d -%d -%d", 1,a+1,c);
		System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
	else if (b!=1 && b!=28)//nem 28 nem 1
		{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a+1,c);
		System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
	else if(b==1) // ser 1
		{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a,c);
		System.out.printf("   O dia anterior e %d -%d -%d",31,a-1,c);}}
	
	else if ((c%4)==0 && a==2)
	{if (b==29)    // ser 29
		{System.out.printf("O dia seguinte e %d -%d -%d", 1,a+1,c);
		System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
	else if (b!=1 && b!=29)//nem 29 nem 1
		{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a+1,c);
		System.out.printf("   O dia anterior e %d -%d -%d", b-1,a,c);}
	else if (b==1) // ser 1
		{System.out.printf("O dia seguinte e %d -%d -%d", b+1,a,c);
		System.out.printf("    O dia anterior e %d -%d -%d", 31,a-1,c);}}
	
	
}
}
