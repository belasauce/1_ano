import java.util.Scanner;

public class leibnitz{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	int a;
	double b=0;
	a = sc.nextInt(); 
	for (int i=0 ; i<a; i++)
	{ 
		b+=(Math.pow((-1),i)/(2*i+1));
	}
	System.out.printf("%.15f : %f",b,(Math.PI/4));
}
}
