import java.util.Scanner;

public class Graus
{
  public static void main(String[] args)
  {
    // Scanner para leitura de dados do teclado
    Scanner sc = new Scanner(System.in);
    double dim1;       // Variaveis de Entrada
    double fahrenheit;       // Variaveis de Saida
    // 1) Ler os dados (sem validar, por enquanto)
    System.out.print("temperatura em celcius: ");
    dim1 = sc.nextDouble();
    // 2) Calcular
    fahrenheit = 1.8*dim1+32;

    // 3) Escrever os resultados
    System.out.printf("fahrenheit = %4.1f", fahrenheit);
  }
}
