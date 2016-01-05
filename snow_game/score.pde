class Score {
  int s = 0;
  Score() {
    fill(0);
    textSize(20);
  }
  void display() {
    fill(0);
    text("Score:", 15, 50);
    text(s, 45, 100);
  }
  void increase() {
    s++;         //increases the score
  }
  void reset() {
    if (s == 20) {
      fill(255);
      rect(0, 0, width, height);
      text("Game over! You Won!!!!", width/2, height/2);      //says you won
      s = 0;
    }
  }
  boolean gameIsOver() {
    if ( s== 20) {
      return true;
    } else {
      return false;
    }
  }
}