class Practical5 {
    static int factorial(int n) {
        if (n == 0 || n == 1)
            return 1;
        else
            return n * factorial(n - 1);
    }

    static void display() {
        System.out.println("Demonstration of Methods");
    }

    public static void main(String args[]) {
        display();
        int num = 5;
        System.out.println("Factorial = " + factorial(num));
    }
}
