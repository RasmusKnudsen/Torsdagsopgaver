import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Please type your name:");
        String name = scanner.nextLine();

        System.out.println("Hello, " + name + "! Please type your age:");
        int age = scanner.nextInt();

        // Calculate the years until retirement (assuming retirement age is 67).
        int retirementAge = 67;
        int yearsUntilRetirement = retirementAge - age;

        System.out.println("Your age is: " + age);
        System.out.println("You have " + yearsUntilRetirement + " years until retirement.");

        // Always close the scanner when you're done with it to prevent resource leaks.
        scanner.close();
    }
}