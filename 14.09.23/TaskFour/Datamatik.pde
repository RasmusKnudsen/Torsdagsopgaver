void setup() {
  Teacher Teacher1 = new Teacher("Jesper", 81, false);
  Student Student1 = new Student("Rasmus", 29, false, "b");
  Student Student2 = new Student("Andreas", 29, true, "b");
  Teacher1.changeName("Tobias");
  
  println(Teacher1.name);
  println(Student1.name);
  println(Student2.name);
 
 
}
