package aula02;

import java.util.Scanner;

public class CelciusToFahrenheit {
    private static final Scanner sin = new Scanner(System.in);
    public static void main(String[] args) {
        while (true) {
            System.out.println("\nChoose an option:\n1 - Convert ºC to ºF\n2 - Convert ºF to ºC\n0 - Exit");
            int mainOption = Integer.parseInt(sin.nextLine());
            switch (mainOption) {
                case 0 -> {
                    sin.close();
                    System.exit(0);
                }
                case 1 -> {
                    System.out.print("ºC? ");
                    double celcius = Double.parseDouble(sin.nextLine());
                    double fahrenheit = 1.8 * celcius + 32;
                    System.out.printf("%.2fºC = %.2fºF\n", celcius, fahrenheit);
                }
                case 2 -> {
                    System.out.print("ºF? ");
                    double fahrenheit = Double.parseDouble(sin.nextLine());
                    double celcius = (fahrenheit - 32) / 1.8;
                    System.out.printf("%.2fºF = %.2fºC\n", fahrenheit, celcius);
                }
                default -> System.out.println("Invalid option");
            }
        }
    }
}