import java.util.Scanner;
import static java.lang.System.*;

public class p16{
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){

        out.print("____Jogo Da Adivinha____\n");
        out.print("Try to guess generated number by the computer\n");
        int rand = (int)(Math.random()*100)+1;
        int tent=0, guess = 0;
        do{
            tent++;
            out.printf("Try %d:", tent);
            guess = sc.nextInt();
            assert 1<=guess && guess<=100 : "Number must be btw 1 and 100";
            if(guess>rand){
                out.printf("The number is lower.\n");
            }
            else if(guess<rand){
                out.printf("The number is Highert\n");
            }
        }while(guess!=rand);
        out.println("Well Done!!! The number was " + rand);
        out.print("Ur pontuation is ..." + tent);

    }
}
