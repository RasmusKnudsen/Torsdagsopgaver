Square[] squares = new Square[10];

void setup() {
  size(400, 400);
//Create and initialize the 10 squares
  for (int i = 0; i < squares.length; i++) {
    float x = random(width);
    float y = random(height);
    squares[i] = new Square(x, y);
  }

  background(255);
//Display squares
  for (int i = 0; i < squares.length; i++) {
    squares[i].display();
  }
}
