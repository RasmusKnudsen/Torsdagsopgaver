import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        ArrayList<String> actions = new ArrayList<>();
        actions.add("1) Start game");
        actions.add("2) Resume game");
        actions.add("3) Pause game");
        actions.add("4) End game");

        // Opret en GameMenu instans og overfør actions som argument til constructor'en.
        GameMenu menu = new GameMenu(actions);

        // Kald getAction metoden for at få brugerens valg.
        String userChoice = menu.getAction();

        // Konverter brugerens valg til en integer og kald doAction metoden. 
        // Try og catch bruges hvis inputtet bliver en input som ikke kan bruges til en string. Eksempelvis et bogstav
        try{
        int choice = Integer.parseInt(userChoice);
        doAction(choice);
    }catch (NumberFormatException e) {
        System.out.println("Invalid choice. Please select a valid option");
    }
    }

    public static void doAction(int action) {
        switch (action) {
            case 1:
                System.out.println("Starting the game now");
                break;
            case 2:
                System.out.println("Fetching previously saved game data");
                break;
            case 3:
                System.out.println("Game paused");
                break;
            case 4:
                System.out.println("Ending game");
                break;
            default:
                System.out.println("Invalid choice. Please select a valid action.");
                break;
        }
    }
}