import java.util.*;
public class jogoooo {
	
	public static void main (String[] args) {
	tabuleiro();
	
	}
	
	public static void tabuleiro(){
		System.out.print("    ");
		for (int i = 0; i < 11; i++)
		{
			System.out.printf(" %d ",i);
		}
		System.out.println();
		System.out.print("    ");
		System.out.printf("__________________________________");
		System.out.println();
				for (char i = 'A' ; i < ('A'+20) ; i++)
		{
			System.out.printf(" %c |\n",i);
		}
		
	}
}

