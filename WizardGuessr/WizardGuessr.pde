Game g;

void setup() {
  PFont font = createFont("ComicSansMS", 20);
  fill(255,255,0);
  textFont(font);
  
  size(804,618);
  
  g = new Game(1);
}

void draw() {
  
}

void mousePressed() {
  if (g.gameStage.equals("titleScreen")) {
    if (mouseOnPlay()) {
      g.gameStage = "round";
      g.d.displayGame();
    }
  } else if (g.mapOpen && g.gameStage.equals("round")) {
    if (mouseOnOK()) {
      if (g.marker.map == null) {
        return;
      }
      g.submitGuess();
      return;
    }
    Button b = mouseOnButton();
    if (b != null) {
      g.currMap = b.mapTo;
      g.d.displayGame();
      return;  
    }
    g.moveMarker(mouseX, mouseY);
  } else if (g.gameStage.equals("roundReview")) {
    if (mouseOnMore()) {
      if (g.numRounds <= 5) {
        g.setUpNextRound();
      } else {
        g.gameStage = "finalRoundReport";
        g.d.displayGame();
      }
      return;
    }
  } else if (g.gameStage.equals("finalRoundReport")) {
    if (mouseOnPlayAgain()) {
      if (g.locs.size() < 5) {
        textAlign(RIGHT);
        text("Not enough locations to play again :(", 784, 528);
        textAlign(LEFT);
      } else {
        g.setUpNextRound();
        g.numRounds = 1;
        g.totalPoints = 0;
        g.d.displayGame();
      }
    }
  }
  System.out.println("x = " + mouseX + "; y = " + mouseY);
}

void keyTyped() {
  if (key == '1') {
    g.mapOpen = false;
  } else if (key == '2') {
    g.mapOpen = true;
  }
  g.d.displayGame();
}

public boolean mouseOnPlay() {
  return mouseX >= 556 && mouseX <= 784 && mouseY >= 548 && mouseY <= 598;
}

public boolean mouseOnOK() {
  return mouseX >= 627 && mouseX <= 784 && mouseY >= 544 && mouseY <= 598;
}

public boolean mouseOnMore() {
  return mouseX >= 637 && mouseX <= 770 && mouseY >= 554 && mouseY <= 588;
}

public boolean mouseOnPlayAgain() {
  return mouseX >= 624 && mouseX <= 784 && mouseY >= 563 && mouseY <= 598;
}

public Button mouseOnButton() {
  //System.out.println("currMap: " + g.currMap.name);
  for (int i = 0; i < g.currMap.buttons.size(); i++) {
    Button b = g.currMap.buttons.get(i);
    if (b.onButton(mouseX, mouseY)) {
      return b;
    }
  }
  return null;
}
