import java.util.Scanner;

public class somapares{
	public static void main(String[]args){
	Scanner sc = new Scanner(System.in);
	System.out.print("escolha quantos numeros pares pretende ter  ");
	int a= sc.nextInt();
	int som=0;
	for (int i=1; i<=a*2; i++)
		{
				if ((i%2)==0)
					{
						System.out.printf("%d ",i);
						som = som+i;
					}
                
            }
    System.out.print(som);
   }
 }  
