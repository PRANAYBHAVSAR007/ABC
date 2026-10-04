AIM- Write a Java program to demonstrate 
1D - Arrays & 2-D Arrays. a) 
Maximum value and Second 
Maximum value without duplicates. b) 
Sort the names in Ascending Order. c) 
Addition of two matrix. d) 3x3 Matrix 
Multiplication


import java.util.Arrays;

class Practical7 {
    public static void main(String args[]) {
        // Maximum & Second Maximum
        int arr[] = {20, 15, 80, 45, 60};
        int max = Integer.MIN_VALUE;
        int second = Integer.MIN_VALUE;
        for (int num : arr) {
            if (num > max) {
                second = max;
                max = num;
            } else if (num > second && num != max) {
                second = num;
            }
        }
        System.out.println("Maximum = " + max);
        System.out.println("Second Maximum = " + second);

        // Sort names in ascending order
        String names[] = {"Riya", "Aman", "Krishna", "Neha", "Bhavya"};
        Arrays.sort(names);
        System.out.println("\nSorted Names:");
        for (String s : names) {
            System.out.println(s);
        }

        // Addition of two matrices (2x2)
        int A[][] = {{1, 2}, {3, 4}};
        int B[][] = {{5, 6}, {7, 8}};
        int C[][] = new int[2][2];

        System.out.println("\nMatrix Addition:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                C[i][j] = A[i][j] + B[i][j];
                System.out.print(C[i][j] + " ");
            }
            System.out.println();
        }

        // 3x3 Matrix Multiplication
        int X[][] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
        int Y[][] = {{1, 0, 0}, {0, 1, 0}, {0, 0, 1}};
        int Z[][] = new int[3][3];

        System.out.println("\nMatrix Multiplication:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                for (int k = 0; k < 3; k++) {
                    Z[i][j] += X[i][k] * Y[k][j];
                }
                System.out.print(Z[i][j] + " ");
            }
            System.out.println();
        }
    }
}
