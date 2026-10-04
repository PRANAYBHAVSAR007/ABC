AIM- Write a Java program to display 
“Hello World” and demonstrate 
the Java program structure and 
demonstrate use of variables
data types and type casting


class Practical1 {
    public static void main(String[] args) {
        // Part 1: Hello World
        System.out.println("Hello World");

        // Part 2: Use of Variables & Data types
        double b = 50.0;
        int a = 20;
        byte c = 30;
        char d = 'N';
        short e = 22;
        float f = 77.7f;
        boolean g = true;
        long h = 20000L;

        System.out.println(b);
        System.out.println(a);
        System.out.println(c);
        System.out.println(d);
        System.out.println(e);
        System.out.println(f);
        System.out.println(g);
        System.out.println(h);

        // Part 3: Type casting
        // Implicit Type casting (Widening)
        int z = 10;
        double y = z;
        System.out.println(y);

        // Explicit Type Casting (Narrowing)
        double w = 77.0;
        int v = (int) w;
        System.out.println(v);
    }
}
