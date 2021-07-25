import java.util.*;
import java.io.*;

public class lindos{
	public static final Scanner sc = new Scanner(System.in);
	public static void main (String[] args) {
		final int NALUNOS = 10;
		Aluno[] t = new Aluno[NALUNOS];
		t[0]= new Aluno(111,"maria.rita",22);
		t[1]= new Aluno(12345,"maria.rita",3);
		t[2]= new Aluno(333,"maria.rita",3);
		t[3]= new Aluno(444,"maria.rita",-1);
		int numAlunos = 4;
		/*numAlunos = lerTurma(t, numAlunos);
		
		System.out.printf("%nTurma: %n");
		imprimirTurma(t,numAlunos);
		filtrarTurma(t,numAlunos,"turma.txt");
		
		System.out.printf("%nFicheiro:%n");
		listarFicheiro("turma.txt");
		
		imprimeHisto(histograma(t,numAlunos));
		
	*/
}	
	
	static boolean validarNome(String s){
		boolean resultado = true;
		
		
		//#1
		int c = 0 , v = 0;
			for (int i = 0; i < s.length(); i++)
			{
			char a = s.charAt(i);
				if (!Character.isLetter(s.charAt(i)) && s.charAt(i)!='.')
				{
					resultado = false;
				}
				else 
				{
					if (a=='a' || a=='e' || a=='i' || a=='o' || a=='u')
					{
						v++;
					}
					else	
					{
						c++;
					}
				}
			}
			if (v==0 || c==0 )
			{
				resultado = false;
			}
		//
		
		
		return resultado;
	}
	
	
	static Aluno lerAluno(){
		Aluno a = new Aluno(0,"",0);
		
		//#2
		do{
		a.id =sc.nextInt();
		if (a.id == 0)
		{
			return a;
		}
		sc.nextLine();
		a.nome = sc.nextLine();	
		a.nota = sc.nextInt();
		}while(validarNome(a.nome)==false || a.nota<-1 || a.nota>5);
		//
		return a;
	}
	
	
	static int lerTurma(Aluno[] t, int num){
		int nalunos = num;
		//#3
		for (int i = 0; i < t.length; i++)
		{
			Aluno a =lerAluno();
			if (a.id==0)
			{
				break;
			}
			t[i]=a;
			nalunos++;
		}
		//
		
		return nalunos;
	}
	
	
	static int[] histograma(Aluno[] a,int num){
		int[] h = new int[0];
		
		//#4
		h = new int[7];
		for (int i = 0; i < h.length; i++)
		{
			if (a[i].nota<=5 && a[i].nota>=0)
			{
				h[a[i].nota]++;
			}
			else
			{
				h[6]++;
			}
		}
		//
		
		return h;
		
	}
	
	
	/*static void filtrarTurma(Aluno[] t,int n,String nomeF)throws IOException{
		
		//#5
		
		File f = new File(nomeF);
		PrintWriter p = new PrintWriter(f);
		for (int i = 0; i < n; i++){
			if (alunoToString(t[i]).charAt(1)==' ')
			{
				p.println(alunoToString(t[i]));
			}
			
		}
		p.close();
		
		//
		
	}
	*/
}

class Aluno{
	int id;
	String nome;
	int nota;
	
	Aluno(int i,String n,int no){
		id=i;
		nome = n;
		nota = no;
		
	}
}

