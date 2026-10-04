AIM- Write a Java program to demonstrate Polymorphism.


class Calculator {
    int add(int a, int b) {
        return a + b;
    }

    int add(int a, int b, int c) {
        return a + b + c;
    }
}

class Animal {
    void sound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    @Override
    void sound() {
        System.out.println("Dog barks");
    }
}

class Practical14 {
    public static void main(String args[]) {
        Calculator cal = new Calculator();
        System.out.println("Method Overloading:");
        System.out.println("Sum of 2 numbers = " + cal.add(10, 20));
        System.out.println("Sum of 3 numbers = " + cal.add(10, 20, 30));

        System.out.println("\nMethod Overriding:");
        Animal a = new Dog();
        a.sound();
    }
}
