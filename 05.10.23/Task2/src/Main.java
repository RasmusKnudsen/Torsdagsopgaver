import java.util.ArrayList;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Cafe cafe = new Cafe();
        cafe.loadMenuData();
        ArrayList<String> coffeeMenu = cafe.getCoffeeMenu();

        for (String coffee : cafe.getCoffeeMenu()){
            System.out.println(coffee);
        }
    }
}

