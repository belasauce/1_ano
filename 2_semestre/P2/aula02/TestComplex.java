import static java.lang.System.*;

public class TestComplex {
  // Exemplo simples de utilização da class Complex
  public static void main(String[] args) {

    double re = Double.parseDouble(args[0]);
    double img = Double.parseDouble(args[1]);

    Complex a = new Complex(re, img);

    // Vamos usar métodos do objeto a
    out.printf("(%.2f+%.2fi)\n", a.real(), a.imag());
    out.println("  parte real = " + a.real());
    out.println("  parte imaginaria = " + a.imag());
    out.println("  modulo = " + a.abs());
    out.printf("  argumento = %.2f\n", a.arg());
  }
}
