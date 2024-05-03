package aula02;

import java.util.Scanner;

public class Investment {
    private static final Scanner sin = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.print("Saldo inicial (Euros)? ");
        double initialWallet = sin.nextDouble();
        System.out.print("Taxa de juro mensal (%)? ");
        double tax = sin.nextDouble();
        double finalWallet = initialWallet * Math.pow(1 + tax / 100, 3);
        System.out.printf("O saldo final será de %.2f euros\n", finalWallet);
    }
}
