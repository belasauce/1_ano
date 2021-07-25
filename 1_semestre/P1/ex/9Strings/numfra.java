import java.util.*;

public class numfra {
	
	public static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args) {
		
		System.out.print("Introduza uma frase: \n");
		
		String frase = sc.nextLine();
		
		String [] acr = frase.split(" ");
		
		int a = acr.length;
		
		System.out.print(a);
		
	}

}

