AIM- Write a Java program to demonstrate Multithreading using Thread and Runnable.


class MyThread extends Thread {
    public void run() {
        for (int i = 1; i <= 3; i++) {
            System.out.println("Thread Class: " + i);
        }
    }
}

class MyRunnable implements Runnable {
    public void run() {
        for (int i = 1; i <= 3; i++) {
            System.out.println("Runnable Interface: " + i);
        }
    }
}

class Practical22 {
    public static void main(String args[]) {
        MyThread t1 = new MyThread();
        MyRunnable obj = new MyRunnable();
        Thread t2 = new Thread(obj);

        t1.start();
        t2.start();

        try {
            t1.join();
            t2.join();
        } catch (InterruptedException e) {
            System.out.println("Thread interrupted");
        }
        System.out.println("Both threads completed.");
    }
}
