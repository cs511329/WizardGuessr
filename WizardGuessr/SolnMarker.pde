public class SolnMarker extends Marker {
  PImage img;
  
  public SolnMarker(int x, int y, Map map) {
    super(x, y, map);
    img = loadImage("Images/solnMarker.png");
    img.resize(30,0);
  }
}
