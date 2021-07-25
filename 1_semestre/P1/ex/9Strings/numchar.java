import java.util.*;

public class numchar {
	
	public static void main (String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Introduza uma frase: \n");
		
		String frase = sc.nextLine();
		
		System.out.printf("Numero de caracteres minusculos %d\n" , min(frase));
		
		System.out.printf("Numero de caracteres maiusculos %d\n" , maius(frase));
		
		System.out.printf("Numero de caracteres numericos %d\n" , dig(frase));
		
		System.out.printf("Numero de vogais %d\n" , vog(frase));
		
		System.out.printf("Numero de consoantes %d\n" , cons(frase));

	}
	
		public static int min (String a){
			
		Scanner sc = new Scanner(System.in);
		
		int count=0;
		
		for (int i = 0; i < a.length() ; i++)
		
		{
		
			if (Character.isLowerCase(a.charAt(i)))
		
			{
		
				count ++;
		
			}
		
		}
		
		return count;
		
	}
	
		public static int maius (String a){
			
		Scanner sc = new Scanner(System.in);
		 
		int count=0;
		
		for (int i = 0; i < a.length() ; i++)
		
		{
		
			if (Character.isUpperCase(a.charAt(i)))
		
			{
		
				count ++;
		
			}
		
		}
		
		return count;
		
	}
	
	public static int dig (String a){
			
		Scanner sc = new Scanner(System.in);
		
		int count=0;
		
		for (int i = 0; i < a.length() ; i++)
		
		{
		
			if (Character.isDigit(a.charAt(i)))
		
			{
		
				count ++;
		
			}
		
		}
		
		return count;
		
	}
	
	public static int vog (String a){
			
		Scanner sc = new Scanner(System.in);
		
		int count=0;
		
		for (int i = 0; i < a.length() ; i++)
		
		{
		
			if (a.charAt(i) == 'a' || a.charAt(i) == 'e' || a.charAt(i) == 'i' || a.charAt(i) == 'o' || a.charAt(i) == 'u' || 
			a.charAt(i) == 'A' || a.charAt(i) == 'E' || a.charAt(i) == 'I' || a.charAt(i) == 'O' || a.charAt(i) == 'U')
		
			{
		
				count ++;
		
			}
		
		}
		
		return count;
		
	}
	
	public static int cons (String a){
			
		Scanner sc = new Scanner(System.in);
		
		int count=0;
		boolean b; 
		
		for (int i = 0; i < a.length() ; i++)
		
		{
			
			b = Character.isLetter(a.charAt(i));
		
			if (a.charAt(i) != 'a' && a.charAt(i) != 'e' && a.charAt(i) != 'i' && a.charAt(i) != 'o' && a.charAt(i) != 'u' &&
				a.charAt(i) != 'A' && a.charAt(i) != 'E' && a.charAt(i) != 'I' && a.charAt(i) != 'O' && a.charAt(i) != 'U' && b==true )
		
			{
		
				count ++;
		
			}
		
		}
		
		return count;
		
	}
	
	
}
	

