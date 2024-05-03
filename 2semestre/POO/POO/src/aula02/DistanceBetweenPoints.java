package aula02;

import java.util.Scanner;

// Solução do exercício 7

public class DistanceBetweenPoints {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        // Pedir as coordenadas para o ponto 1
        System.out.println("Introduza as coordenadas para o ponto 1 (formato: x,y):");
        String input1 = scanner.nextLine();
        String[] coordenadas1 = input1.split(",");
        double x1 = Double.parseDouble(coordenadas1[0]);
        double y1 = Double.parseDouble(coordenadas1[1]);
        
        // Pedir as coordenadas para o ponto 2
        System.out.println("Introduza as coordenadas para o ponto 2 (formato: x,y):");
        String input2 = scanner.nextLine();
        String[] coordenadas2 = input2.split(",");
        double x2 = Double.parseDouble(coordenadas2[0]);
        double y2 = Double.parseDouble(coordenadas2[1]);
        
        // Calcular a distância entre os pontos usando a fórmula de distância euclidiana
        double distancia = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
        
        // Imprimir a distância entre os pontos
        System.out.println("A distância entre os pontos é: " + distancia);
        
        scanner.close();
    }
}