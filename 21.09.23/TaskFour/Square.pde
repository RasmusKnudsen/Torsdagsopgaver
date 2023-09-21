class Square {
  float xPos;
  float yPos;

  Square(float x, float y) {
    xPos = x;
    yPos = y;
  }

  void display() {
    rectMode(CENTER);
    fill(255, 0, 0);
    rect(xPos, yPos, 50, 50);
  }
}
