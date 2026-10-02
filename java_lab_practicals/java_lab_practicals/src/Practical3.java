import java.util.Scanner;

class Practical3 {
    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);

        // Even or Odd
        System.out.print("Enter number: ");
        int n = sc.hasNextInt() ? sc.nextInt() : 10;
        if (n % 2 == 0)
            System.out.println("Even");
        else
            System.out.println("Odd");

        // Largest of three numbers
        int a = 3, b = 10, c = 25;
        if (a > b) {
            if (a > c)
                System.out.println("Largest = " + a);
            else
                System.out.println("Largest = " + c);
        } else {
            if (b > c)
                System.out.println("Largest = " + b);
            else
                System.out.println("Largest = " + c);
        }

        // Weekday using switch
        System.out.print("Enter day number (1-7): ");
        int day = sc.hasNextInt() ? sc.nextInt() : 4;
        switch (day) {
            case 1: System.out.println("Monday"); break;
            case 2: System.out.println("Tuesday"); break;
            case 3: System.out.println("Wednesday"); break;
            case 4: System.out.println("Thursday"); break;
            case 5: System.out.println("Friday"); break;
            case 6: System.out.println("Saturday"); break;
            case 7: System.out.println("Sunday"); break;
            default: System.out.println("Invalid");
        }
        sc.close();
    }
}
