package aula02;

import java.util.Scanner;

public class KmToMiles {
    private static final Scanner sin = new Scanner(System.in);

    public static void main(String[] args) {
        while (true) {
            System.out.println("\nChoose an option:\n1 - Convert Km to Miles\n2 - Convert Miles to Km\n0 - Exit");
            int mainOption = Integer.parseInt(sin.nextLine());
            switch (mainOption) {
                case 0 -> {
                    sin.close();
                    System.exit(0);
                }
                case 1 -> {
                    System.out.print("Km? ");
                    double km = Double.parseDouble(sin.nextLine());
                    double miles = km / 1.609;
                    System.out.printf("%.3f km = %.3f miles\n", km, miles);
                }
                case 2 -> {
                    System.out.print("Miles? ");
                    double miles = Double.parseDouble(sin.nextLine());
                    double km = miles * 1.609;
                    System.out.printf("%.3f miles = %.3f km\n", miles, km);
                }
                default -> System.out.println("Invalid option");
            }
        }
    }
}
