
import static java.lang.System.*;
import java.util.Scanner;
import java.io.*;
import p2utils.*;

public class Restaurante {

  public static void main(String[] args) {
    HashTable<Integer> stock = new HashTable<>(100);
    Queue<KeyValueList<Integer>> pedidos = new Queue<>();


    for (String arg: args) {
      File f = new File(arg);
      readfile(f, stock, pedidos);
    }

    printStock(stock);
    printSaidas(pedidos);//print das saidas
  }

  public static void readfile(File f, HashTable<Integer> stock, Queue <KeyValueList<Integer>> pedidos){
    Scanner sf = null;
    try{
      sf = new Scanner(f);
      while(sf.hasNextLine()){
        String line = sf.nextLine();
        String [] parts = line.split(":", 2);
        if(parts[0].equals("entrada")){
          if(stock.contains(parts[1])){
            int amount = stock.get(parts[1]);
            amount++;
            stock.set(parts[1], amount);
          }
          else{
            stock.set(parts[1], 1);
          }
        }
        else if(parts[0].equals("saida")){
          KeyValueList<Integer> saidas = new KeyValueList<>();
          String trimado = parts[1].trim();
          String [] part_saidas = trimado.split(" ");
          for(int i = 0; i< part_saidas.length ; i++){
            String [] part_saidas_vals = part_saidas[i].split(":");
            int val = Integer.parseInt(part_saidas_vals[1]);
            saidas.set(part_saidas_vals[0], val);
          }
          pedidos.in(saidas);
          String [] keys = saidas.keys();
          boolean has = true;
          for(int i = 0; i<keys.length; i++){
            has = removeitem(stock, keys[i], saidas.get(keys[i]));
            if(!has)
              break;
          }
          if(has)
            pedidos.out();
        }
      }
    } catch (IOException e) {
      err.println("Erro: " + e.getMessage());
      exit(1);
    } finally {
      if (sf != null) sf.close();
    }
  }

  public static void printStock ( HashTable<Integer> stock){
    out.println("Comida em stock:");
    String [] keys = stock.keys();
    int size = stock.size();
    for( int i = 0 ; i< size; i++ ){
      out.println(keys[i] + ":" + stock.get(keys[i]));
    }
  }

  public static boolean removeitem(HashTable<Integer> stock, String food, int quantity){
    if(!stock.contains(food) || stock.get(food) < quantity)
      return false;
    else{
      if(stock.get(food)==quantity){
        stock.remove(food);
      }
      else{
        int val = stock.get(food);
        val-=quantity;
        stock.set(food, val);
      }
      return true;
    }
  } 

  //teste das Saidas
  public static void printSaidas ( Queue <KeyValueList<Integer>> pedidos_originas){
    Queue <KeyValueList<Integer>> pedidos = pedidos_originas;
    out.println("Refeicao servida:");
    int size1 = pedidos.size();
    for(int i =0; i<size1 ; i++){
      String saidas_s = "";
      KeyValueList<Integer> saidas = pedidos.peek();
      String [] keys = saidas.keys();
      int size2 = saidas.size();
      for( int j = 0 ; j< size2; j++ ){
        saidas_s += " " + keys[j] + ":" + saidas.get(keys[j]);
      }
      out.println(saidas_s);
      pedidos.out();
    }
  }

  
  }

