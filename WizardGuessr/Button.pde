public class Button {
  Point topLeft;
  Point bottomRight;
  Map mapTo;
  
  public Button(int x1, int y1, int x2, int y2, Map mapTo) {
    topLeft = new Point(x1, y1);
    bottomRight = new Point(x2, y2);
    this.mapTo = mapTo;
  }
  
  public boolean onButton(int x, int y) {
    if (x >= topLeft.x && x <= bottomRight.x && y >= topLeft.y && y <= bottomRight.y) {
      return true;
    }
    return false;
  }
}
