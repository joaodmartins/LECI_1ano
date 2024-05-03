package teste;

public class Ex1 {
    public static void main(String[] args) {
        int x = 4;
        System.out.println(++x);
        int vec[] = new int[5];
        System.out.println(vec.length);
        System.out.println(vec[0]);
        String str = "Praia";
        for (int i=0; i < str.length(); i++)
            System.out.println(str.charAt(i) + "-");
        System.out.println();
        int toto[] = {2, 13, 23, 34, 39};
        for (int num: toto)
            if ((num / 10 > 0) && (num % 2 == 0))
                System.out.println(num);
    }
}
