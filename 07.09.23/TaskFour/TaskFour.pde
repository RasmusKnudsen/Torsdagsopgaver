//4.a
void setup()
{
for (int i = 0; i <= 20; i++) {println(i);}
}

//4.b

void setup()
{
for (int i = 0; i <= 20; i+=2 /*i+=2 er 2 incriments, i stedet for bare ++ */) {println(i);}
}

//4.c

void setup()
{
  int start =(int)random(5,20);
  
for (int i = start; i>= 0; i--)
{if (i == 0) {
  println("Take Off!");}
  else{
    println(i);}
}
}

//4.d
void setup() {
   int start =(int)random(5,20);
   
  String[] Countdown = {"", "One", "Two", "Three"};

  for (int i = start; i >= 0; i--) {
    if (i == 0) {
      println("Take Off!");
    } else if (i >= 1 && i <= 3) {
      println(Countdown[i]);
    } else {
      println(i);
    }
  }
}
