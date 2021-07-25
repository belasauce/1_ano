import java.util.Scanner;

public class EX117
{

	public static void main(String[] args)
	{
	Scanner sc = new Scanner(System.in);
	double valor, iva, desconto, liquido, quantidade; //variaveis do preco do produto ,iva e desconto
	System.out.println("insira o preco bruto do produto");
	valor = sc.nextDouble();
	System.out.println("insira o iva(%)");
	iva = sc.nextDouble();
	System.out.println("insira o desconto do produto");
	desconto = sc.nextDouble();
	System.out.println("diga o numero de produtos que pretende comprar");
	quantidade = sc.nextDouble();
	liquido = quantidade*(valor*(1+(iva/100))*desconto);
	System.out.printf("o valor liquido da fatura e %.2f", liquido);
	}
}
	
	
	
	
	
	
	
	
	
	
