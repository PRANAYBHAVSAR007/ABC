import java.util.ArrayList;
import java.util.LinkedList;

class Practical18 {
    public static void main(String args[]) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("Java");
        arrayList.add("Python");
        arrayList.add("C++");
        arrayList.add("Java");
        System.out.println("ArrayList:");
        System.out.println(arrayList);

        arrayList.remove("C++");
        System.out.println("After removing C++:");
        System.out.println(arrayList);

        LinkedList<String> linkedList = new LinkedList<>();
        linkedList.add("Apple");
        linkedList.add("Banana");
        linkedList.addFirst("Mango");
        linkedList.addLast("Orange");
        System.out.println("\nLinkedList:");
        System.out.println(linkedList);

        linkedList.removeFirst();
        System.out.println("After removing first element:");
        System.out.println(linkedList);
    }
}
