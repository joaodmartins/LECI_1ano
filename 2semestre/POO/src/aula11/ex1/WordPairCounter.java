package aula11.ex1;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Scanner;
import java.util.TreeMap;

public class WordPairCounter {
    public static void main(String[] args) {
        TreeMap<String, Integer> wordPairs = new TreeMap<>();

        String text = "";
        Path path = Paths.get((new Scanner(System.in)).nextLine());
        try {
            text = Files.readString(path);
        } catch (IOException e) {
            System.out.printf("Certifique-se que o ficheiro \"%s\" está na raiz da pasta do projeto", path);
            System.exit(1);
        }
        String[] words = text.split("[\\s.,:'‘’;?!\\-*{}=+&/()\\[\\]”“\"]+");
        
        for (int i = 0; i < words.length - 1; i++) {
            String word1 = words[i].toLowerCase();
            String word2 = words[i + 1].toLowerCase();
            String pair = word1 + " " + word2;
            
            wordPairs.put(pair, wordPairs.getOrDefault(pair, 0) + 1);
        }

        wordPairs.forEach((pair, count) -> System.out.println(pair + ": " + count));
    }
}
