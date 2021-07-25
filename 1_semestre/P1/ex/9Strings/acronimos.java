import java.util.*;

public class acronimos {
	
	public static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		
		System.out.print("Introduza uma frase: \n");
		
		String frase = sc.nextLine();
		
		acro(frase);
		
		
	}
	
	public static void acro(String frase){
		
		String [] acr = frase.split(" ");
		
		char [] a = new char[acr.length];
		
		for (int i = 0; i < acr.length ; i++)
		
		{
		
			a[i] = Character.toUpperCase(acr[i].charAt(0));
			
			System.out.print(a[i]);
		
		}
	
	}


}


