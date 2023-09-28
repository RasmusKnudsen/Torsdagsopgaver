import java.util.ArrayList;
import java.util.Scanner;
class GameMenu {
    private ArrayList<String> actions;

    public GameMenu(ArrayList<String> actions) {
        this.actions = actions;
    }

    public void displayMenu() {
        System.out.println("Menu:");
        for (String action : actions) {
            System.out.println(action);
        }
    }

    public String getAction() {
        System.out.println("Type a number to choose an action:");
        displayMenu();

        Scanner scanner = new Scanner(System.in); // Opret en ny Scanner
        String choice = scanner.nextLine(); // Læs brugerens input og gem det i choice

        return choice; // Returner brugerens valg
    }
}



