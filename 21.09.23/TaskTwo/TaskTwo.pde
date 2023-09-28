String inputWord = "København";

void setup() {
  size(400, 400);
  String result = printPartOfWord(inputWord, 1, 4);
  println("Resultat: " + result);
}

String printPartOfWord(String word, int startIndex, int length) {
  String partialWord = word.substring(startIndex, startIndex + length);
  return partialWord;
}
