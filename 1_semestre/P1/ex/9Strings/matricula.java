import java.util.*;

public class matricula {
	
	public static Scanner sc = new Scanner(System.in);	
	
	public static void main (String[] args) {
		
		System.out.print("Insira uma matricula: ");
		
		String matri=sc.nextLine();
		
		if (validacao(matri))
		
		{
		
			System.out.print("e matricula portuguesa");
		
		}
		
		else
		
		{
		
			System.out.print("nao e matricula portuguesa");
		
		}
		
	}
	
	public static boolean validacao (String frase){
		
		boolean a=false;
		
			if (Character.isDigit(frase.charAt(0)) && Character.isDigit(frase.charAt(1)) &&
				Character.isLetter(frase.charAt(3)) && Character.isLetter(frase.charAt(4)) &&
				Character.isDigit(frase.charAt(6)) && Character.isDigit(frase.charAt(7)))
			
			{
			
				a = true;
			
			}
			
			else if (Character.isLetter(frase.charAt(0)) && Character.isLetter(frase.charAt(1)) &&
					 Character.isDigit(frase.charAt(3)) && Character.isDigit(frase.charAt(4)) &&
					 Character.isDigit(frase.charAt(6)) && Character.isDigit(frase.charAt(7)))
			{
				
				a=true;
			
			}
			
			else if (Character.isDigit(frase.charAt(0)) && Character.isDigit(frase.charAt(1)) &&
					 Character.isDigit(frase.charAt(3)) && Character.isDigit(frase.charAt(4)) &&
					 Character.isLetter(frase.charAt(6)) && Character.isLetter(frase.charAt(7)))
			{
				
				a=true;
			
			}
		
		return a;
		
	}
}

