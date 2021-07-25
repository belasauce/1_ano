import static java.lang.System.*;

public class DatasPassadas {

  public static void main(String[] args) {
    Data atual = new Data();
    Data natal = new Data(25 , 12 , atual.ano()-1);
    do{
      natal.seguinte();
      out.println(natal.extenso());
    }while(!natal.toString().equals(atual.toString()));
    
  }

}

