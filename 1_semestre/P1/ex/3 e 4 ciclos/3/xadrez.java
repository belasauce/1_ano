import java.util.Scanner;

public class xadrez{
	public static void main(String[]args){
	for (int j=8 ; j>0 ; j--)
	{
	System.out.println();
		for(int i=0 ; i<8 ;i++)
		{
			System.out.printf("%c%d  ",(char)('a'+i),j);	
		}
	}
}
}
