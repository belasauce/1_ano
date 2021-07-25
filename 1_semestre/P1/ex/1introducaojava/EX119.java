import java.util.Scanner;

public class EX119
{
	public static void main(String[] args)
	{
	Scanner sc = new Scanner(System.in);
	String a, b;
	System.out.print("nome proprio:");
	a = sc.nextLine();
	System.out.print("apelido:");
	b = sc.nextLine();
	System.out.printf("%s %s, %c%c, %d, %b", a, b,
                                                Character.toUpperCase(a.charAt(0)), Character.toUpperCase(b.charAt(0)), 
                                                (a.length() +b.length()), 
                                                (Character.isUpperCase(a.charAt(0)) && Character.isUpperCase(b.charAt(0))));
	}
}	
	
