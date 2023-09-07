//3.a 

int a = (int)random(0, 10);
int b = (int)random(0, 10);

if ((a == 10 || b == 10)||a + b == 10) {
  println("Success!");
} else {
  println("Failure!");
}

//3.b
void setup() {
  int min = (int)random(0, 10);
  int max = (int)random(0, 10);

  if ((min + max) > 10 && (min <= 5 || max <= 5)) {
    println("Success!");
  } else {
    println("Failure!");
  }
.
}

//3.c

void setup() {

  int x = int(random(1, 30)); 
  int y = int(random(1, 30));
  int z = int(random(1, 30));

  if ((x + y + z) == 30 && x != 10 && y != 10 && z != 10 && x != 20 && y != 20 && z != 20 && x != 30 && y != 30 && z != 30) /* hvis summen er 30 og x, y og z hhv ikke er 10, 20 og 30 */  {
    println("Success!");
  } else {
    println("Failure!");
  }

  
}
