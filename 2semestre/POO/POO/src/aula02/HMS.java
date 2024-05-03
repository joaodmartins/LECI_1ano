package aula02;

import java.util.Scanner;

public class HMS {
    public static void main(String[] args) {
        Scanner sin = new Scanner(System.in);

        System.out.println("Introduza os segundos totais: ");
        int totalSecs = (int) sin.nextDouble();
        int secs = totalSecs % 60;
        int mins = totalSecs / 60;
        int hours = mins / 60;
        mins = mins % 60;
        System.out.printf("%d segundos no formato hh:mm:ss : %02d:%02d:%02d\n", totalSecs, hours, mins, secs);

        sin.close();
    }
}
