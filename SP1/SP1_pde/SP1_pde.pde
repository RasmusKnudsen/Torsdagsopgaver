ArrayList<String> wordList = new ArrayList<String>();
String selectedWord;
int attemptsRemaining = 5;
String guessedWord = "";

void setup() {
  size(400, 200);

  // Add words to the ArrayList
  wordList.add("computer");
  wordList.add("programming");
  wordList.add("game");
  wordList.add("creativity");
  wordList.add("challenge");

  // Choose a random word from the ArrayList
  selectedWord = chooseRandomWord(wordList);
  println("The selected word is: " + selectedWord);
}

String chooseRandomWord(ArrayList<String> list) {
  int index = int(random(list.size()));
  return list.get(index);
}

void draw() {
  background(220);
  fill(0);
  textSize(16);

  // Display the word with only the guessed letters
  String displayedWord = "";
  for (int i = 0; i < selectedWord.length(); i++) {
    char letter = selectedWord.charAt(i);
    if (guessedWord.contains(String.valueOf(letter))) {
      displayedWord += letter;
    } else {
      displayedWord += "_";
    }
    displayedWord += " ";
  }
  text(displayedWord, 50, 100);

  // Display the number of attempts remaining
  text("Attempts remaining: " + attemptsRemaining, 50, 150);

  // Check if the game is over
  if (displayedWord.equals(selectedWord) || attemptsRemaining == 0) {
    if (displayedWord.equals(selectedWord)) {
      text("You won!", 50, 50);
    } else {
      text("You lost. The selected word was: " + selectedWord, 50, 50);
    }
    noLoop(); // Stop the game
  }
}

void keyPressed() {
  if (key >= 'a' && key <= 'z') {
    char guessedLetter = key;
    if (!guessedWord.contains(String.valueOf(guessedLetter))) {
      guessedWord += guessedLetter;
      if (selectedWord.indexOf(guessedLetter) == -1) {
        attemptsRemaining--; // Decrease the number of attempts if the guessed letter is not in the word.
      }
    }
  }
}
