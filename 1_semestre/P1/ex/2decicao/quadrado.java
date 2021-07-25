import java.util.Scanner;

public class quadrado{
	public static void main(String[]args){
	
	Scanner sc = new Scanner(System.in);
	double x1,x2,x3,x4,y1,y2,y3,y4;
	
	System.out.print("introduz a abcissa de p1");
	x1 = sc.nextDouble();
		System.out.print("introduz a ordenada de p1");
	y1 = sc.nextDouble();
	
		System.out.print("introduz a abcissa de p2");
	x2 = sc.nextDouble();
		System.out.print("introduz a ordenada de p2");
	y2 = sc.nextDouble();
	
		System.out.print("introduz a abcissa de p3");
	x3 = sc.nextDouble();
		System.out.print("introduz a ordenada de p3");
	y3 = sc.nextDouble();
	
		System.out.print("introduz a abcissa de p4");
	x4 = sc.nextDouble();
		System.out.print("introduz a ordenada de p4");
	y4 = sc.nextDouble();
	x1 = x1-x2;
	y1 = y1-y2;
	x2 = x2-x3;
	y2 = y2-y3;
	x3 = x3-x4;
	y3 = y3-y4;
	x4 = x4-x1;
	y4 = y4-y1;
	
	
	if ((Math.pow(x1-x2,2)+Math.pow(y1-x2,2)) == (Math.pow(x1-x4,2)+Math.pow(y1-x4,2)) && 
	   (Math.pow(x1-x2,2)+Math.pow(y1-x2,2)) == (Math.pow(x3-x4,2)+Math.pow(y3-x4,2)) &&
	   (Math.pow(x1-x2,2)+Math.pow(y1-x2,2)) == (Math.pow(x3-x2,2)+Math.pow(y3-x2,2)) && 
	   (((x1*x2) + (y1*y2)) == 0) && (((x3*x2) + (y3*y2))==0) && (((x3*x4) +(y3*y4))==0) && (((x4*x1) + (y4*y1))=z=0))
	   {System.out.print(" os 4 pontos pertencem a um quadrado");}
	  else 
	  {System.out.print(" os 4 pontos nao pertencem a um quadrado");}
	 }
}
	
