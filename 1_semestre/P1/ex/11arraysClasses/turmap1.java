import java.util.*;

public class turmap1 {
	
	public static Scanner sc = new Scanner(System.in);
	
	public static void main (String[] args){
		
		alunos [] turma = new alunos [20];
		int option;
		do{
			
			
		do{
			
			System.out.println("1 - Inserir informacao da turma");
			System.out.println("2 - Mostrar informacao de um aluno");
			System.out.println("3 - Alterar informacao de um aluno");
			System.out.println("4 - Listar os alunos");
			System.out.println("5 - Listar os alunos ordenados por nota final");
			System.out.println("6 - Media das notas finais");
			System.out.println("7 - Melhor aluno");
			System.out.println("8 - Inserir pesos dos varios testes");
			System.out.println("9 - Gravar dados dos alunos num ficheiro");
			System.out.println("0 - Terminar o programa");
			System.out.println();
			
			System.out.print("Escolha uma opcao:   ");
			option = sc.nextInt();
			System.out.printf("\n\n");
			
		} while (option>9 || option<0);
		
		switch (option)
		{

			case 1:
			
			ler1(turma);
			
			System.out.printf("\n\n\n");
				
			break;
			
			case 2:
			
			aluno2(turma);
			
			System.out.printf("\n\n\n");
			
			break;
			
			case 3:
			
			mudar3(turma);
			
			System.out.printf("\n\n\n");
			
			break;
			
			case 4:
			
			lista4(turma);
			
			System.out.printf("\n\n\n");
				
			break;
			
			case 5:
			
			ordenar5(turma);
			
			System.out.printf("\n\n\n");
			
			break;
			
			case 6:
			
			media6(turma);
			
			System.out.printf("\n\n\n");
				
			break;
			
			case 7:
			
			melhoraluno7(turma);
			
			System.out.printf("\n\n\n");
				
			break;
			
			case 8:
			
			peso8();
			
			System.out.printf("\n\n\n");
				
			break;
			
			case 9:
				
			break;
		}
		
		}while(option!=0);
		
		
		
	}
	
	public static void ler1(alunos [] turma){
		
		alunos a = new alunos();
	
		for (int i = 0; i < 1/*turma.length*/; i++)
		{
			do{
				System.out.println("Nome:");
				sc.nextLine();
				a.nome = sc.nextLine();
			}while(validarnome(a.nome)==false);
			
			System.out.println("Numero Mecanografico:");			
			a.nmec = sc.nextInt();
			
			do{
			System.out.println("teste 1:");
			a.t1 = sc.nextDouble();
			}while(a.t1>=20 || a.t1<=0);
			
			do{
				System.out.println("teste 2:");
				a.t2 = sc.nextDouble();
			}while(a.t2>=20 || a.t2<=0);
			
			do{
				System.out.println("teste 3:");
				a.t3 = sc.nextDouble();
			}while(a.t3>=20 || a.t3<=0);
			
			a.tf = (a.t1 * 0.20 + a.t2 * 0.40 + a.t3 * 0.40);   //1-0.2%  2-0.40% 3-0.40%
			System.out.printf("A nota final e %.1f\n",a.tf);
			
			turma[i] = a;
			
		}
	}
	public static void aluno2(alunos [] turma){
		
		int nmec, n;
			
			System.out.print("Insira o numero mecanografico do aluno que deseja:   ");
			nmec = sc.nextInt();
			
			if (turma[0] == null)
			{
					
				System.out.println("Turma inexistente.(Insira 1)\n");
				
			}
			
			else
			{
				
				for (int i = 0; i < 1/*turma.length*/; i++)
				{
				
				if (nmec == turma[i].nmec)
				{
					
					System.out.println("Nome :"+ turma[i].nome);
					
					System.out.println("Teste 1 : "+turma[i].t1);
					
					System.out.println("Teste 2 : "+turma[i].t2);
					
					System.out.println("Teste 3 : "+turma[i].t3);
					
					System.out.printf("Nota Final : %.1f\n",turma[i].tf);
					
					break;
					
				}
				else
				{
					System.out.print("Numero Mecanografico inexistente.\n");
				}
	
				}
			}
			
			
			
	}
	
	public static void mudar3 (alunos [] turma){
		
		int nmec;
		
		boolean a=false;
		
		System.out.print("Insira o numero mecanografico do aluno que deseja:    ");
		nmec = sc.nextInt();
		
		
		if (turma[0] == null)
		{			
		
			System.out.println("Turma inexistente.(Insira 1)\n");
			
		}
		else
		{
			
			for (int i = 0; i < 1/*turma.length*/; i++)
			{
				
				if (nmec == turma[i].nmec)
				{
				
					System.out.println("Nome :"+ turma[i].nome);
					
					System.out.println("teste 1:");
					turma[i].t1 = sc.nextDouble();
			
					System.out.println("teste 2:");
					turma[i].t2 = sc.nextDouble();
			
					System.out.println("teste 3:");
					turma[i].t3 = sc.nextDouble();
			
					turma[i].tf = (turma[i].t1 * 0.20 + turma[i].t2 * 0.40 + turma[i].t3 * 0.40);   //1-0.2%  2-0.40% 3-0.40%
					System.out.printf("A nota final e %.1f\n",turma[i].tf);
					
					a=true;
					
					break;
				}
				
			}
			if (a==false)
			{
				
				System.out.print("Numero Mecanografico inexistente.\n");
			
			}
			
		}
	}
	
	public static void lista4(alunos [] turma){
		
		if (turma[0] == null)
		{			
		
			System.out.println("Turma inexistente.(Insira 1)\n");
				
		}
		else
		{
		
			System.out.printf(" Nome | Numero Mecanografico | Teste 1 | Teste 2 | Teste 3 | Nota final \n");
		
			for (int i = 0; i < 1/*turma.length*/; i++)
			{
				System.out.printf(" %s | %d | %.1f | %.1f | %.1f | %.1f \n", turma[i].nome , turma[i].nmec, turma[i].t1, turma[i].t2, turma[i].t3, turma[i].tf);
			}
		
		}
		
	}
	
	public static void ordenar5(alunos [] turma){
		

		
	}
	
	public static void media6(alunos [] turma){
		
		double a=0;
		
		if (turma[0] == null)
		{			
		
			System.out.println("Turma inexistente.(Insira 1)\n");
				
		}
		
		else
		{
		 
			for (int i = 0; i < 1/*turma.length*/; i++)
			{
				a =+ turma[i].tf;
			}
		
			System.out.println("A media da turma e "+a);
		}
	}
	
	public static void melhoraluno7(alunos [] turma){
		
		double a = 0;
		int b=0;
		
		if (turma[0] == null)
		{			
		
			System.out.println("Turma inexistente.(Insira 1)\n");
				
		}
		
		else
		{
		
			for (int i = 0; i < 1/*turma.length*/; i++)
			{
				if (turma[i].tf>=a)
				{
				
					b=i;
				
				}
			}	
		
			System.out.printf("o melhor aluno e %s com media de %f\n",turma[b].nome, turma[b].tf);
		
		}
		
	}
	
	public static void peso8(){
		
		System.out.print("O 1 teste pesa 20%\n");
		
		System.out.print("O 2 teste pesa 40%\n");
		
		System.out.print("O 3 teste pesa 40%\n");
		
	}
	
	public static boolean validarnome(String a){
		
		boolean b=true;
		
		for (int i = 0; i < a.length(); i++)
		{
			
			if (Character.isDigit(a.charAt(i)))
			{
				
				b=false;
				
			}
			else if (a.charAt(i) != 'a' && a.charAt(i) != 'e' && a.charAt(i) != 'i' && a.charAt(i) != 'o' && a.charAt(i) != 'u' &&
					 a.charAt(i) != 'A' && a.charAt(i) != 'E' && a.charAt(i) != 'I' && a.charAt(i) != 'O' && a.charAt(i) != 'U' )
			{
				
				b=false;
				
			}
		
		}
		
		
		return b;
	}

}
class alunos{
	
	int nmec;
	
	String nome;
	
	double t1, t2, t3, tf;
}
