package aula03;

import java.util.Scanner;

public class Calendar {
    public static void main(String[] args) {
        int[] data = getValues();
        int monthDays = monthDays(data[0], data[1]);
        printCalendar(data, monthDays);
        System.out.println();
    }

    private static int[] getValues() {
        Scanner sin = new Scanner(System.in);

        System.out.print("Introduza o mês/ano no formato mm/yyyy: ");
        String[] monthYear = sin.next().split("/");
        int firstDay;
        do {
            System.out.print("1 = Segunda\n2 = Terça\n3 = Quarta\n4 = Quinta\n5 = Sexta\n6 = Sábado\n7 = Domingo\nIntroduza o dia da semana em que começa o mês (1 a 7): ");
            firstDay = sin.nextInt();
        } while(firstDay < 1 || firstDay > 7);

        sin.close();

        return new int[]{Integer.parseInt(monthYear[0]), Integer.parseInt(monthYear[1]), firstDay};
    }

    private static int monthDays(int month, int year) {
        switch (month) {
            case 2:
                if (year % 100 == 0 ? year % 400 == 0 : year % 4 == 0)
                    return 29;
                else
                    return 28;
            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
            default:
                return 31;
        }
    }

    private static void printCalendar(int[] data, int monthDays) {
        String[] monthNames = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
        System.out.printf("\n%15s %d\n", monthNames[data[0] - 1], data[1]);
        System.out.println("Dom Seg Ter Qua Qui Sex Sab");

        if (data[2] != 7)
            for (int i = 0; i < data[2]; i++)
                System.out.print("    ");

        for (int monthDay = 1; monthDay <= monthDays; monthDay++) {
            System.out.printf("%3d ", monthDay);
            if ((monthDay + data[2]) % 7 == 0)
                System.out.println();
        }
    }
}
