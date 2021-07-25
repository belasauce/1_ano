import java.util.*;

public class pontos2d {
	
	public static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
	Ponto2D p;
	
	int n=1; 
	
	Ponto2D a[];
	
	
	do
	{
		
		a = new Ponto2D[n];
		
		p = lerpontos();
		
		a[n-1] = p;
		
		n++;

		
	} while ( p.x!=0 || p.y!=0);
	
	System.out.print(a[1]); 

		
	}
	
	public static Ponto2D lerpontos(){
		
		Ponto2D p = new Ponto2D();
		
		System.out.print("ponto x:\n");
		
		p.x = sc.nextDouble();
		
		System.out.print("ponto y:\n");
		
		p.y = sc.nextDouble();
		
		return p;
		
	}
	
	public static void printponto(Ponto2D p[]){
		
	for (int i = 0; i < p.length ; i++)
	{
		System.out.printf("(%f;%f)",p[i].x,p[i].y);
		
		System.out.println();
		
	}
	}
	
	public static double dist(Ponto2D p){
		
		double d = Math.sqrt(Math.pow(p.x ,2)-Math.pow(p.y ,2));
		
		return d;
		
	}
	
}

class Ponto2D{
	double x,y;
}
