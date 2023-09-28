int[] arr = { 28, 230, 9, 310, 72};

void setup() {
  size(400, 400); 
  int randomValue = getRandom(); 
  println("Random value from arr: " + randomValue); // random value
}

int getRandom() {
  int randomIndex = int(random(arr.length)); // Generate random index
  return arr[randomIndex]; // Return the random index
}
