import java.util.*;

public class testehehe {
	
	public static void main (String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int[] funcao={1,5,6,3,6,8,3,10};
		int[] newArray = new int[funcao.length];
		int max = funcao[0];
		
		System.out.printf("introduz %d valores: ",funcao.length);
		//forma de ler os n valores pedidos
		for(int i=0;i < funcao.length;i++){
			System.out.printf("funcao[%d]: ",i);
			funcao[i]=sc.nextInt();
		}
		for(int i=0;i < funcao.length;i++){
			System.out.print(funcao[i]+" ");
		}
		System.out.println();
		
		
		for(int j=0;j<funcao.length;j++){
			if(funcao[j]>max){
				max=funcao[j];
			}
		}
		int[] derivadas = derivada(funcao);
		for(int i=0;i < derivadas.length;i++){
			System.out.print(derivadas[i]+" ");
		}
		System.out.println();
		System.out.print("maximo  "+max);
		System.out.println();
		int numeroMaximos = maximos(derivadas,newArray);
		for(int i=0;i < derivadas.length;i++){
			System.out.print(newArray[i]+" ");
		}
		System.out.println();
		System.out.print(numeroMaximos);
	}
	
	public static int[] derivada(int[] array){
		int[] cenas = new int[array.length-1];
		
		for(int i =0; i<array.length-1;i++){
			cenas[i] = array[i+1]- array[i];
		}
		return cenas;
	}
	
	public static int maximos(int[] derivadas,int[] newArray){
		int nrmaximos=0;
		
		for(int i=0;i<derivadas.length-1;i++){
			if(derivadas[i] > 0 && derivadas[i+1]<=0){
				newArray[nrmaximos]=(i+1);
				nrmaximos++;
			}
		}
		
		return nrmaximos;
	}
	
}

