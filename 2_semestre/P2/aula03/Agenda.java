public class Agenda {
    private Tarefa [] tasks = new Tarefa[1000];
    private int n = 0;

    public void novaTarefa(Tarefa a){
        tasks[n] = a;
        if(n>2){
            for (int i = 0; i < n-1; i++) {
                for (int j = i+1; j < n; j++) {
                    if (tasks[j].inicio().compareTo(tasks[i].inicio()) > 0){
                        Data tmp = tasks[j].inicio();
                        tasks[j].inicio = tasks[i].inicio;
			            tasks[i].inicio = tmp; 
                    }
                }  
            }
        }
        n++;
    }

    public void escreve(){
        for (int i=0 ; i<n ; i++){
            System.out.println(tasks[i].toString());
        }
    }

    public Agenda filtra(Data d1, Data d2){
        Agenda filtr = new Agenda();
        Tarefa lim = new Tarefa(d1,d2,"limite");
        for (int i=0 ; i<n ; i++){
            if(tasks[i].intersecta(lim)){
                filtr.novaTarefa(tasks[i]);
            }
        }
        return filtr;
    }
}
