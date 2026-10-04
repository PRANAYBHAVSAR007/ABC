AIM- Write a Java program to demonstrate Abstraction using Abstract Classes and Interfaces.


abstract class Shape {
    abstract void area();

    void display() {
        System.out.println("This is a shape");
    }
}

interface Printable {
    void print();
}

interface Drawable {
    void draw();
}

class Circle extends Shape implements Printable, Drawable {
    int radius = 5;

    void area() {
        double a = 3.14 * radius * radius;
        System.out.println("Area of circle = " + a);
    }

    public void print() {
        System.out.println("Printing circle");
    }

    public void draw() {
        System.out.println("Drawing circle");
    }
}

class Practical15 {
    public static void main(String args[]) {
        Circle c = new Circle();
        c.display();
        c.area();
        c.print();
        c.draw();
    }
}
