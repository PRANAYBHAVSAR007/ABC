class Practical2 {
    public static void main(String args[]) {
        int a = 20, b = 10;

        // Arithmetic Operators
        System.out.println("Addition = " + (a + b));
        System.out.println("Subtraction = " + (a - b));
        System.out.println("Multiplication = " + (a * b));
        System.out.println("Division = " + (a / b));
        System.out.println("Modulus = " + (a % b));

        // Relational Operators
        System.out.println(a > b);
        System.out.println(a < b);
        System.out.println(a == b);
        System.out.println(a != b);

        // Logical Operators
        System.out.println((a > b) && (b > 5));
        System.out.println((a > b) || (b < 5));
        System.out.println(!(a > b));

        // Bitwise Operators
        System.out.println(a & b);
        System.out.println(a | b);
        System.out.println(a ^ b);
        System.out.println(a << 2);
        System.out.println(a >> 2);

        // Other Operators
        System.out.println(++a);
        System.out.println(--b);
        int max = (a > b) ? a : b;
        System.out.println("Maximum = " + max);
    }
}
