import java.util.Scanner;

public class TestaHora {
  static final Scanner sc = new Scanner(System.in);
  
  public static void main(String[] args) {
    Hora inicio;  // tem de definir o novo tipo Hora!
    Hora fim;
    
    inicio = new Hora();
    inicio.h = 9;
    inicio.m = 23;
    inicio.s = 5;
    
    System.out.print("Começou às ");
    printHora(inicio);  // crie esta função!
    System.out.println(".");
    System.out.println("Quando termina?");
    fim = lerHora();  // crie esta função!
    System.out.print("Início: ");
    printHora(inicio);
    System.out.print(" Fim: ");
    printHora(fim);
  }
  
	public static void printHora(Hora a){
		System.out.printf("%d : %d : %d", a.h, a.m, a.s);
	  
	}
	
	public static Hora lerHora(){
		Hora p = new Hora();
		p.h = sc.nextInt();
		p.m = sc.nextInt();
		p.s = sc.nextInt();
	
	return p;	
	}
	
  
  
}

class Hora{
	int h ,m ,s ;
	
}
