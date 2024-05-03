package aula03;

import java.util.Scanner;

public class PrimesSum {
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        
        do {
            System.out.print("Digite um número inteiro positivo: ");
            while (!scanner.hasNextInt()) {
                System.out.println("Por favor, digite um número inteiro positivo válido.");
                scanner.next();
            }
            n = scanner.nextInt();
        } while (n <= 0);
        
        int soma = somaPrimosAte(n);
        System.out.println("A soma de todos os números primos até " + n + " é: " + soma);
        
        scanner.close();
    }
    
    public static int somaPrimosAte(int numero) {
        int soma = 0;
        
        for (int i = 2; i <= numero; i++) {
            if (ehPrimo(i)) {
                soma += i;
            }
        }
        
        return soma;
    }
    
    public static boolean ehPrimo(int numero) {
        if (numero <= 1) {
            return false;
        }
        
        for (int i = 2; i <= Math.sqrt(numero); i++) {
            if (numero % i == 0) {
                return false;
            }
        }
        
        return true;
    }
}