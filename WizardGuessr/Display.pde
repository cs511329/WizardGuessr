public class Display {
  Game g;
  
  public Display(Game game) {
    this.g = game;
  }
  
  public void displayGame() {
    background(255);
    if (g.gameStage.equals("titleScreen")) {
      displayTitleScreenBackground();
      displayTitle();
      displayPlay();
    } else if (g.gameStage.equals("round")) {
      if (g.mapOpen) {
        displayMap();
        displayMarker();
        displayOK();
        displayMapInstructions();
      } else {
        displayLocation();
        displayLocInstructions();
      }
      displayLocationNum();
    } else if (g.gameStage.equals("roundReview")) {
      if (g.mapOpen) {
        g.currMap = g.solnMarker.map;
        displayMap();
        displaySolnMarker();
        if (g.marker.map.name.equals(g.solnMarker.map.name)) {
          displayMarker();
          line(g.marker.coords.x, g.marker.coords.y, g.solnMarker.coords.x, g.solnMarker.coords.y);
        }
      } else {
        displayLocation();
      }
      displayMore();
      displayRoundPoints();
    } else if (g.gameStage.equals("finalRoundReport")) {
      displayTitleScreenBackground();
      displayFinalRoundReportPoints();
      displayPlayAgain();
    }
  }
  
  public void displayMarker() {
    if (g.marker.map != null && g.marker.map.name.equals(g.currMap.name)) {
      image(g.marker.img, g.marker.coords.x - 15, g.marker.coords.y - 51);
    }
  }
  
  public void displaySolnMarker() {
    image(g.solnMarker.img, g.solnMarker.coords.x - 15, g.solnMarker.coords.y - 51);
  }
  
  public void displayMap() {
    image(g.currMap.img, 0, 0);
  }
  
  public void displayTitleScreenBackground() {
    image(loadImage("Images/wizard_city.png"), 0, 0);
  }
  
  public void displayTitle() {
    PImage img = loadImage("Images/title.png");
    img.resize(600,0);
    image(img, 102, 425);
  }
  
  public void displayPlay() {
    image(loadImage("Images/play.png"), 556, 548);
  }
  
  public void displayOK() {
    image(loadImage("Images/ok.png"), 627, 544);
  }
  
  public void displayLocationNum() {
    text("Location " + g.numRounds, 50, 80);
  }
  
  public void displayMore() {
    PImage img = loadImage("Images/more.png");
    image(img, 637, 554);
  }
  
  public void displayLocation() {
    image(g.loc.img, 0, 0);
  }
  
  public void displayRoundPoints() {
    text("Location: " + g.currMap.name, 50, 80);
    text("Points earned: " + g.roundPoints, 50, 105);
  }
  
  public void displayFinalRoundReportPoints() {
    for (int i = 0; i < 5; i++) {
      text("Location " + (i + 1) + ": " + g.pointsPerRound[i] + " Points", 50, 440 + 25 * i);
    }
    textAlign(RIGHT);
    text("Total Points: " + g.totalPoints, 784, 553);
    textAlign(LEFT);
  }
  
  public void displayPlayAgain() {
    image(loadImage("Images/play_again.png"), 624, 563);
  }
  
  public void displayLocInstructions() {
    text("Press        to view the map", 50, 40);
    PImage img = loadImage("Images/two.png");
    img.resize(50,0);
    image(img, 100, 15);
  }
  
  public void displayMapInstructions() {
    text("Press        to view the location", 50, 40);
    PImage img = loadImage("Images/one.png");
    img.resize(50,0);
    image(img, 100, 15);
  }
}
