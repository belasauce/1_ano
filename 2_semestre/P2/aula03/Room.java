public class Room {
    
    private String roomtype; 
    private Point infesq, supdir;

    public Room(Point esq, Point dir, String type){
        this.infesq = esq;
        this.supdir = dir;
        this.roomtype=type;
    }

    public String RoomType(){return roomtype;}

    public Point bottomLeft(){return infesq;}

    public Point topRight(){return supdir;}

    public Point geomCenter(){
        return new Point(infesq.x()+supdir.x()/2, infesq.y()+supdir.y()/2);
    }

    public double area(){
        return ((supdir.x()-infesq.x()) * (supdir.y()-infesq.y()));
    }
}
