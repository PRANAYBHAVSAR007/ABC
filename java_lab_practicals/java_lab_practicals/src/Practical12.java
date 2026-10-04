AIM- Write a Java program to demonstrate Inheritance

interface Sports {
    void play();
}

class Animal {
    void eat() {
        System.out.println("Animal eats");
    }
}

// Single & Multilevel inheritance
class Dog extends Animal {
    void bark() {
        System.out.println("Dog barks");
    }
}

class Puppy extends Dog {
    void play() {
        System.out.println("Puppy plays");
    }
}

// Hierarchical inheritance
class Cat extends Animal {
    void meow() {
        System.out.println("Cat meows");
    }
}

// Hybrid inheritance using interface
class Athlete extends Animal implements Sports {
    public void play() {
        System.out.println("Athlete plays sports");
    }
}

class Practical12 {
    public static void main(String args[]) {
        System.out.println("Single / Multilevel Inheritance:");
        Puppy p = new Puppy();
        p.eat();
        p.bark();
        p.play();

        System.out.println("\nHierarchical Inheritance:");
        Cat c = new Cat();
        c.eat();
        c.meow();

        System.out.println("\nHybrid Inheritance:");
        Athlete a = new Athlete();
        a.eat();
        a.play();
    }
}
