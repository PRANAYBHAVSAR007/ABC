AIM- Write a Java program to create a class 
and object and demonstrate 
constructors.


class Student {
    int id;
    String name;

    // Default Constructor
    Student() {
        id = 101;
        name = "Krishna";
    }

    // Parameterized Constructor
    Student(int i, String n) {
        id = i;
        name = n;
    }

    void display() {
        System.out.println("ID = " + id);
        System.out.println("Name = " + name);
    }
}

class Practical10 {
    public static void main(String args[]) {
        Student s1 = new Student();
        Student s2 = new Student(102, "Radha");

        System.out.println("Default Constructor");
        s1.display();
        System.out.println();
        System.out.println("Parameterized Constructor");
        s2.display();
    }
}
