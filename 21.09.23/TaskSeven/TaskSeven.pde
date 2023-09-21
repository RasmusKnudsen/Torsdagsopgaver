ArrayList<Integer> points = new ArrayList<Integer>();
ArrayList<String> fanOf = new ArrayList<String>();
ArrayList<Boolean> bestTeam = new ArrayList<Boolean>();

void setup() {  
  // Add values to the ArrayLists
  points.add(99);
  points.add(81);
  points.add(66);
  
  fanOf.add("Liverpool");
  fanOf.add("Manchester City");
  fanOf.add("Manchester United");
  
  bestTeam.add(true);
  bestTeam.add(false);
  bestTeam.add(false);
  
  // Print the strings in the 'fanOf' ArrayList
  printStrings(fanOf);
  
  // Calculate and print the sum of 'points'
  int sum = getSum(points);
  println("Sum of points: " + sum);
  
  // Calculate and print the average of 'points'
  float average = getAverage(points);
  println("Average of points: " + average); 
}

void printStrings(ArrayList<String> strList) {
  for (String str : strList) {
    println(str);
  }
}

int getSum(ArrayList<Integer> intList) {
  int sum = 0;
  for (int num : intList) {
    sum += num;
  }
  return sum;
}

float getAverage(ArrayList<Integer> intList) {
  int sum = getSum(intList);
  return (float) sum / intList.size();
}
