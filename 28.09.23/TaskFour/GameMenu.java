import java.util.ArrayList;

public class GameMenu {
    private ArrayList<String> actions;

    public GameMenu(ArrayList<String> actions) {
        this.actions = actions;
    }
    public void displayMenu(){
    	System.out.println("Menu");

    	for(String action : actions) {
    		System.out.println(action);
    	}
    }
}
