AIM- Write a Java program to demonstrate this and super Keywords


class Parent {
    int value = 100;

    Parent() {
        System.out.println("Parent constructor");
    }

    void show() {
        System.out.println("Parent method");
    }
}

class Child extends Parent {
    int value;

    Child(int value) {
        super();
        this.value = value;
    }

    void display() {
        System.out.println("Child value = " + this.value);
        System.out.println("Parent value = " + super.value);
        super.show();
    }
}

class Practical13 {
    public static void main(String args[]) {
        Child c = new Child(50);
        c.display();
    }
}
