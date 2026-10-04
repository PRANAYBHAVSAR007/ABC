AIM- Write a Java program to perform 
operations on one-dimensional and 
multi-dimensional arrays.


class Practical6 {
    public static void main(String args[]) {
        int arr[] = {10, 20, 30, 40, 50};
        int sum = 0;
        System.out.println("1D Array Elements:");
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i] + " ");
            sum += arr[i];
        }
        System.out.println("\nSum = " + sum);
        System.out.println("Average = " + (sum / arr.length));

        int matrix[][] = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        };
        System.out.println("\n2D Array:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
    }
}
