public class Marker {
  Point coords;
  PImage img;
  Map map;
  
  public Marker() {
    coords = new Point(0,0);
    img = loadImage("Images/marker.png");
    img.resize(30,0);
    map = null;
  }
  
  public Marker(int x, int y, Map map) {
    coords = new Point(x,y);
    img = loadImage("Images/marker.png");
    img.resize(30,0);
    this.map = map;
  }
}
