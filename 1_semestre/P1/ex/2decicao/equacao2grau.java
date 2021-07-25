import java.util.*;

public class equacao2grau{
	public static  void  main(String[]args){
	
	Scanner sc = new Scanner(System.in);
	System.out.print("intrudza os valores a/b/c\n");
	int a = sc.nextInt();
	int b = sc.nextInt();
	int c = sc.nextInt();
	System.out.printf("%dx^2 + %d x +%d\n\n\n\n",a ,b ,c);
	
	if ( (Math.pow(b,2)>(4*a*c)))
	{ double d1 = (-b + Math.sqrt(Math.pow(b,2)-(4*a*c)))/(2*a);
	  double d2 = (-b - Math.sqrt(Math.pow(b,2)-(4*a*c)))/(2*a);
	   System.out.printf("x = %f\n",d1);
	   System.out.printf("x = %f\n",d2);}
	else 
	{ System.out.printf("Nao existe valor no inetervalo dos reais");}
}
}
