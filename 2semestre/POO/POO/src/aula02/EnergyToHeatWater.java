package aula02;

import java.util.Scanner;

public class EnergyToHeatWater {
    private static final Scanner sin = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("Kg de água? ");
        double kgOfWater = sin.nextDouble();
        System.out.print("Temperatura inicial da água (ºC)? ");
        double initialTemperature = sin.nextDouble();
        System.out.print("Temperatura final da água (ºC)? ");
        double finalTemperature = sin.nextDouble();
        double energy = kgOfWater * (finalTemperature - initialTemperature) * 4184;
        System.out.printf("Para aquecer %.3fkg de água de %.2fºC para %.2fºC, serão necessários %.3fJ de energia.\n", kgOfWater, initialTemperature, finalTemperature, energy);

        sin.close();
    }
}
