package data;
import static java.lang.System.*;
import java.util.Calendar;

public class Data {
  private int dia, mes, ano;

  /** Inicia esta data com o dia de hoje. */
  public Data() {
    // Aqui usamos a classe Calendar da biblioteca standard para obter a data atual.
    Calendar today = Calendar.getInstance();
    dia = today.get(Calendar.DAY_OF_MONTH);
    mes = today.get(Calendar.MONTH) + 1;
    ano = today.get(Calendar.YEAR);
  }

  /** Inicia a data a partir do dia, mes e ano dados. */
  public Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }

  public int dia(){return dia;}

  public int mes(){return mes;}

  public int ano(){return ano;}

  /** Devolve esta data segundo a norma ISO 8601. */
  public String toString() {
    return String.format("%04d-%02d-%02d", ano, mes, dia);
  }

  /** Indica se ano é bissexto. */
  public static boolean bissexto(int ano) {
    return ano%4 == 0 && ano%100 != 0 || ano%400 == 0;
  }

  // Crie métodos para obter o dia, mes e ano da data.
  //...

  /** Dimensões dos meses num ano comum. */
  private static final
  int[] diasMesComum = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

  /** Devolve o número de dias do mês dado. */
  public static int diasDoMes(int mes, int ano) {
    if(bissexto(ano) == true){
      if(mes == 2){
        return 29;
      }
      else{
        return diasMesComum[mes-1];
      }
    }
    else{
      return diasMesComum[mes-1];
    }
  }

  String[] MesComum = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outobro", "Novembro", "Dezembro"};

  /** Devolve o mes da data por extenso. */
  public String mesExtenso() {
    return MesComum[mes-1];
  }


  /** Devolve esta data por extenso. */
  public String extenso() {
    return (dia() + " de " + mesExtenso() + " de " + ano());
  }

  /** Indica se um terno (dia, mes, ano) forma uma data válida. */
  public static boolean dataValida(int dia, int mes, int ano) {
    if ((dia <= 0 )|| (mes<= 0 )|| (mes>=13) || (ano<=0)||( dia>diasDoMes(mes, ano))){
        return false;
    }
    return true;
  }


  public void seguinte() {
    if(dia == diasDoMes(mes,ano)){
      if(mes == 12){
        dia = 1;
        mes = 1;
        ano++;
      }
      else{
      dia = 1;
      mes++;
      }
    }
    else{
      dia++;
    }
  }

}

