package aula03;

import java.util.Scanner;

public class Investment {
    public static void main(String[] args) {
        Scanner sin = new Scanner(System.in);

        double investment;
        do {
            System.out.print("Introduza o investimento inicial (múltiplo de 1000): ");
            investment = sin.nextInt();
        } while (investment % 1000 != 0);

        double tax;
        do {
            System.out.print("Introduza a taxa a aplicar (entre 0% e 5%): ");
            tax = sin.nextDouble();
        } while ( 0 > tax || tax > 5);


        for (int i = 1; i <= 12; i++) {
            investment *= 1 + tax / 100;
            System.out.printf("Investimento em %d %s: %.2f\n", i, i == 1 ? "mês" : "meses", investment);
        }

        sin.close();
    }
}
