int[][] board = new int[8][8];
int sideLength = 40;

void setup() {
  size(320, 320);
  drawChessboard();
}

void drawChessboard() {
  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 8; y++) {
      // Alternate between 0 and 1 using the modulus operator
      board[x][y] = (x + y) % 2;
      
      // Set the fill color based on the value in the board array
      if (board[x][y] == 0) {
        fill(0); 
      } else {
        fill(255); 
      }
      
      // Draw a rectangle for each cell
      rect(x * sideLength, y * sideLength, sideLength, sideLength);
    }
  }
}
