public class Tarefa
{
    private String texto = ""; Data inicio, fim;

    public Tarefa(Data ini, Data fi, String txt){
        inicio = ini;
        fim = fi;
        texto = txt;
    }

    public Data inicio(){ return inicio;}

    public Data fim(){ return fim;}

    public String texto(){ return texto;}

    public String toString() {
        return inicio.toString() + " / " + fim.toString() + " --> " + texto;
      }
      //3.4
    public boolean intersecta(Tarefa comp){
        if( inicio.compareTo(comp.inicio) >= 0 && inicio.compareTo(comp.fim) <= 0 ||
            fim.compareTo(comp.inicio) >= 0 && fim.compareTo(comp.fim) <= 0 ){
            return true;
        }
        return false;
    }
}