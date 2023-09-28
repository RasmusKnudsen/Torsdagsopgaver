import java.util.Random;
import java.util.Scanner;

public class GuessANumber {
    private static int rnd_number;

    public static void main(String[] args) {
        // Vælg et tilfældigt tal
        Random random = new Random();
        rnd_number = random.nextInt(100) + 1;
        System.out.println("Jeg tænker på et tal mellem 1 og 100 (inklusive begge).");
        System.out.println("Kan du gætte, hvad det er?...");
        makeAGuess();
    }

    private static void makeAGuess() {
        // Opret en Scanner-objekt
        Scanner scanner = new Scanner(System.in);

        // Læs brugerens input som en streng
        String userInput = scanner.nextLine();

        // Tjek om inputtet er numerisk ved hjælp af hasNextDouble
        if (userInput.matches("\\d+")) {
            // Konverter inputtet til en integer
            int userGuess = Integer.parseInt(userInput);

            // Sammenlign brugerens gæt med det tilfældige nummer
            if (userGuess == rnd_number) {
                System.out.println("Tillykke! Du har gættet det rigtige nummer: " + rnd_number);
            } else if (userGuess < rnd_number) {
                System.out.println("Dit gæt er lavere end det hemmelige nummer. Prøv igen.");
                makeAGuess(); // Kald metoden rekursivt for at lade brugeren prøve igen.
            } else {
                System.out.println("Dit gæt er højere end det hemmelige nummer. Prøv igen.");
                makeAGuess(); // Kald metoden rekursivt for at lade brugeren prøve igen.
            }
        } else {
            System.out.println("Fejl! Indtast venligst et numerisk værdi.");
            makeAGuess(); // Kald metoden rekursivt, hvis input ikke er numerisk.
        }

        // Luk Scanner
        scanner.close();
    }
}
