class Practical4 {
    public static void main(String args[]) {
        // Reverse of a number
        int num = 1234, rev = 0;
        while (num != 0) {
            rev = rev * 10 + num % 10;
            num = num / 10;
        }
        System.out.println("Reverse = " + rev);

        // Fibonacci
        int a = 0, b = 1;
        System.out.println("Fibonacci:");
        for (int i = 1; i <= 10; i++) {
            System.out.print(a + " ");
            int c = a + b;
            a = b;
            b = c;
        }
        System.out.println();

        // Prime Number
        int n = 7;
        int i = 2;
        boolean prime = true;
        do {
            if (n % i == 0 && i != n) {
                prime = false;
                break;
            }
            i++;
        } while (i < n);

        if (prime)
            System.out.println("Prime");
        else
            System.out.println("Not Prime");
    }
}
