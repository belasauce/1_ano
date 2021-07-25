import java.util.*;

public class Functions {

	public static void main (String args[]) {
		Scanner sc = new Scanner(System.in);
		System.out.printf("sqr(%f) = %f\n", 10.1, sqr(10.1));
		System.out.printf("sqr(%f) = %f\n", -2.0, sqr(-2.0));
		System.out.printf("introduza um valor :\n");
		int x= sc.nextInt();
		System.out.printf("%d = %f\n",x,f(x));
		System.out.printf("introduza dois valores\n");
		double num1 = sc.nextDouble();
		double num2 = sc.nextDouble();
		System.out.printf("numero de maior valor = %.4f\n",max(num1,num2));
		System.out.printf("introduza dois valores\n");
		int num3 = sc.nextInt();
		int num4 = sc.nextInt();
		System.out.printf("numero de maior valor = %d\n",max(num3,num4));
		System.out.printf("introduza a,b,c,d,x respetivamente\n");
		double a = sc.nextDouble();
		double b = sc.nextDouble();
		double c = sc.nextDouble();
		double d = sc.nextDouble();
		double y = sc.nextDouble();
		System.out.printf("P(x) = %f\n",poly3(a,b,c,d,y));
		System.out.printf("introduza um nuemro\n");
		int fat= sc.nextInt();
		System.out.printf("fatorial= %d",fact(fat));
		
		

	}

	public static double sqr(double x) {
		double y;	// variavel para resultado
		y = x*x;	// calculo do resultado a partir dos dados
		return y;	// devolver o resultado
	}
	public static double f(double n){
		n = 1/(1+ Math.pow(n,2));
		return n;
	}
	public static double max(double a,double b){ // maximo de double
		double c;
		if (a>=b)
			{c = a;}
		else 
			{c=b;}
		return c;
	}
	public static int max(int a,int b){  //maximo int
		int c;
		if (a>=b)
			{c = a;}
		else 
			{c=b;}
		return c;
	}
	public static double poly3(double a, double b,double c,double d,double x){  // polinomio 3 grau                      
		double px;
		px=a*Math.pow(x,3)+b*Math.pow(x,2)+c*x+d;
		return px;
	}
	public static int fact(int x){
		int a=1;
		for(int i=1; i<=x; i++)
		{
			a = a*i;
		}
		return a;
	}
}

