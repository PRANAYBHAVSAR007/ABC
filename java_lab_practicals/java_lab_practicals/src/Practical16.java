class Practical16 {
    public static void main(String args[]) {
        int a = 10;
        int b = 0;
        try {
            int result = a / b;
            System.out.println("Result = " + result);
        } catch (ArithmeticException e) {
            System.out.println("Exception: Cannot divide by zero");
        } finally {
            System.out.println("Finally block executed");
        }
        System.out.println("Program continues normally");
    }
}
