import java.util.Scanner;

public class EX118
{
  public static void main(String[] args)
  {
    Scanner scan = new Scanner(System.in);
    char var;
    System.out.print("digite uma letra minuscula ");
    var = scan.next().charAt(0);    
    if (var>=97 & var<123) var -= 32;   
    System.out.print("a letra maiuscula correspondente e " + var);           
  }
}
	
