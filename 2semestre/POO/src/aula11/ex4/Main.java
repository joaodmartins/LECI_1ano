package aula11.ex4;

public class Main {
    public static void main(String[] args) {
        FlightManager fm = new FlightManager();

        fm.loadCompanies("C:\\Users\\Utilizador\\Desktop\\LECI_1ano\\2semestre\\POO\\src\\aula11\\ex4\\voos.txt");
        fm.loadFlights("C:\\Users\\Utilizador\\Desktop\\LECI_1ano\\2semestre\\POO\\src\\aula11\\ex4\\voos.txt");

        fm.buildTable();
        System.out.println(fm.getTable());

        fm.buildDelaysTable();
        System.out.println(fm.getDelaysTable());

        fm.buildFlightsNTable();
        System.out.println(fm.getFlightsNTable());

        fm.storeTable("C:\\Users\\Utilizador\\Desktop\\LECI_1ano\\2semestre\\POO\\src\\aula11\\ex4\\Infopublico.txt");
    }
}
