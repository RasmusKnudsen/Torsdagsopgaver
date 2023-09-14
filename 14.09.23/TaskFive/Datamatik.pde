void setup() {
  Teacher teacher1 = new Teacher("Jesper", 81, false);
  Student student1 = new Student("Rasmus", 29, false, "b");
  Student student2 = new Student("Andreas", 29, true, "b");
  teacher1.changeName("Tobias");

  boolean sameClass = isClassmates(student1, student2);
  println(sameClass);

  boolean classCheck = isClassmates(student1, student2);
  if (classCheck = true) {
    println("Are classmates");
  } else {
    println("Are not classmates");
  }

  println(teacher1.name);
  println(student1.name);
  println(student2.name);
}

boolean isClassmates(Student student1, Student student2) {
  if (student1.datamatikerTeam == student2.datamatikerTeam) {
    return true;
  } else {
    return false;
  }
}
