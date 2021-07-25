import java.util.*;

public class frase {
	
	public static void main (String[] args) {
		contagem(ler());
	}
	public static String ler(){
		Scanner sc = new Scanner(System.in);
		String fra;
		System.out.print("Escreva uma frase:\n");
		fra = sc.nextLine();
		return fra;
	}
	public static void contagem(String fra){
		for (char i = 'a' ; i <='z'; i++)
		{
			int l=0;
			for (int j = 0; j<fra.length(); j++)
			{
				if(fra.charAt(j)==i)
				{
					l++;
				}
			}
			if(l>0)
			{
				System.out.printf("%c : %d",i,l);
				System.out.println();
			}
		}
	
	}
	
}

