package teste;

public class Exemplo {
    public static void main (String[] args) {
        int[] a = {1, 3};
        System.out.println(f1(1, true));
        System.out.println(f2(a));
        System.out.println(f3("12-MX.4A"));
    }
    public static int f1(int a, boolean b) {
        int r = 2;
        while (b) {
            r += a++;
            b = r % 2 == 0;
        }
        return r;
    }
    public static int f2(int[] v) {
        int w[] = {1, 2, 3}, r = 0;
        for (int i=1; i < v.length && i < w.length; i++)
            r += w[i] + v[i];
        return r;
    }
    public static boolean f3(String st) {
        return st.matches("\\d{2}-\\w{2}.\\w{2}");
    }
}
