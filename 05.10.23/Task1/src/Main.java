import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        ArrayList<Customer> customers = new ArrayList<>();

        // Opret kunder og tilføj dem til ArrayListen
        Customer customer1 = new Customer("Rasmus","Knudsen","RKK",1);
        Customer customer2 = new Customer("Renee","Hammer","RLH",2);
        customers.add(customer1);
        customers.add(customer2);


        printCustomers(customers);
    }

    public static void printCustomers(ArrayList<Customer> customers) {
        for (Customer customer : customers) {
            System.out.println(customer.toString());
            System.out.println();
        }
    }
}
