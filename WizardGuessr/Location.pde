public class Location {
  Point coords;
  int difficulty;
  PImage img;
  Map map;
  
  public Location(int x, int y, int diff, PImage img, Map map) {
    coords = new Point(x,y);
    this.difficulty = diff;
    this.img = img;
    this.map = map;
  }
}
