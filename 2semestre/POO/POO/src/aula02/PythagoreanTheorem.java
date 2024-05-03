package aula02;

import java.util.Scanner;

public class PythagoreanTheorem {
    public static void main(String[] args) {
        Scanner sin = new Scanner(System.in);

        System.out.println("Cateto A:");
        double a = sin.nextDouble();
        System.out.println("Cateto B:");
        double b = sin.nextDouble();

        double c = Math.sqrt(Math.pow(a, 2) + Math.pow(b, 2));
        double angDeg = Math.acos(a / c) * 180 / Math.PI;

        System.out.printf("O comprimento da hipotenusa é %.2f e o valor do angulo entre o cateto A e a hipotenusa é %.2f°\n", c, angDeg);

        sin.close();
    }
}
