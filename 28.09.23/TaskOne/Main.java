public class Main {
    public static void main(String[] args) {
        Team team1 = new Team("Liverpool", 2, "Szoboszlai");
        team1.setRank(2);
        Team team2 = new Team("Manchester City", 1, "Haaland");
        Team team3 = new Team("Tottenham", 3, "Maddison");
        Team team4 = new Team("Manchester United", 4, "Eriksen");
        Team team5 = new Team("Chelsea", 5, "Caicedo");
        Team team6 = new Team("Arsenal", 6, "Martinelli");

        // Udskriv oplysningerne om hver Team-instans ved hjælp af toString-metoden.
        System.out.println(team1.toString());
        System.out.println(team2.toString());
        System.out.println(team3.toString());
        System.out.println(team4.toString());
        System.out.println(team5.toString());
        System.out.println(team6.toString());
    }
}
