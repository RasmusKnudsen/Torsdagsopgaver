//5.a
Rettet kode:


void setup() {
  methodOne(); 
  methodTwo(); 
}

/*
  The following method has an error in it. Fix the error and run it. 
*/

void methodOne()
{
  int i = 1000; // You are not allowed to change this line. 
  int max = 10;
  String output = ""; // Skal "declares" udenfor if, da den ellers er lokal og ikke kan ses andre steder
  
  if (i > max)
  {
    output = "i is greater than " + max + "."; 
  }
  
  println(output);
}

//Fejlkoden:
void setup() {
  methodOne(); 
  methodTwo(); 
}

/*
  The following method has an error in it. Fix the error and run it. 
*/

void methodOne()
{
  int i = 1000; // You are not allowed to change this line. 
  
  int max = 10;
  
  if (i > max)
  {
    String output = "i is greater than "+max+".";   
  }
  
  println(output);
  
//5.b
void methodTwo() 
{
  int weekDay = (int)random(0,6); // Change the value to represent the weekdays (0 = Monday, 6 = Sunday).
  boolean weekend = false;
  
  if (weekDay < 5)
  {
    weekend = false;
  }
  else 
  {
    weekend = true;
  }
  
  String[] weekdays = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
  String dayName = weekdays[weekDay];
  println("Weekday: " + dayName);
    
  if (weekend)
  {
    println("It's the weekend!");
  }
  else
  {
    println("It's not the weekend.");
  }
}

   
