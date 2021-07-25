import java.util.Arrays;
public class House {
    
    private String housetype;
    private int adcDiv;
    private Room[] rooms;

    public House(String type){
        this.housetype = type;
        rooms = new Room[8];
        this.adcDiv = 4;
    }

    public House(String type, int a, int b ){
        this.housetype=type;
        rooms = new Room[a];
        this.adcDiv = b;    
    }

    public void addRoom(Room room){
        for (int i=0 ; i<rooms.length ; i++){
            if(rooms[i]== null){
                rooms[i]=room;
            }
        }
    }

    public int size(){
        for (int i=0 ; i<rooms.length ; i++){
            if(rooms[i]== null){
               return i;
            }
        }
        return rooms.length;
    }

    public int maxSize(){
        return rooms.length;
    }

    public Room room(int a){
        return rooms[a];
    }

    public double area(){
        double area = 0;
        for(int i=0 ; i<rooms.length ;  i++){
            if(rooms[i]!= null){
                area += rooms[i].area();
            }
        }
        return area;
    }

    public RoomTypeCount [] getRoomTypeCounts(){
        RoomTypeCount [] count = new RoomTypeCount[1];
        for(int i=0 ; i<rooms.length;i++){
            if(rooms[i]==null) break;
            for(int j=0 ; j<count.length ;j++){
                if(count[j]== null){
                    count = Arrays.copyOf(count, count.length+1);
                    count[j]=new RoomTypeCount();
                    count[j].roomType = rooms[i].RoomType();
                    count[j].count = 1;
                    break;
                }
                if(count[j].roomType.equals(rooms[i].RoomType())){
                    count[j].count ++;
                    break;
                }
            }
        }
        return Arrays.copyOf(count, count.length-1);
    }

    public double averageRoomDistance(){
        double soma = 0;
        int i = 0;
        for (i = 0; i < rooms.length-1; i++) {
            if(i==rooms.length-1){
                soma += Math.sqrt(Math.pow(rooms[i].geomCenter().x()-rooms[0].geomCenter().x(),2)+Math.pow(rooms[i].geomCenter().y()-rooms[0].geomCenter().y(),2));
                break;
            }
            if(rooms[i+1]==null) {
                soma += Math.sqrt(Math.pow(rooms[i].geomCenter().x()-rooms[0].geomCenter().x(),2)+Math.pow(rooms[i].geomCenter().y()-rooms[0].geomCenter().y(),2));
                break;
            }
            soma += Math.sqrt(Math.pow(rooms[i].geomCenter().x()-rooms[i+1].geomCenter().x(),2)+Math.pow(rooms[i].geomCenter().y()-rooms[i+1].geomCenter().y(),2));
        }
        return soma/i;
    }
}
