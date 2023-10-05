import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Room room1 = new Room(5, 10, 7);
        Room room2 = new Room(10, 7, 5);
        Room room3 = new Room(7, 5, 10);

        ArrayList<Room> roomList = new ArrayList<>();

        roomList.add(room1);
        roomList.add(room2);
        roomList.add(room3);

        Building building = new Building(roomList, 2, 3, true);

        int totalLamps = countLampsInBuilding(building);
        System.out.println("Total number of lamps in the building: " + totalLamps);

    }

    public static int countLampsInBuilding(Building building) {
        int totalLamps = 0;

        for (Room room : building.getRooms()) {
            totalLamps += room.getNumberOfLamps();
        }
        return totalLamps;
    }

    public static boolean isNormal(Building building){
        int numberOfFloors = building.getNumberOfFloors();
        int numberOfRooms = building.getRooms().size();

        if(numberOfFloors > numberOfRooms){
            return true;
        } else {
            System.out.println("This is an odd building.");
            return false;
        }
    }
}
