AIM- Write a Java program to demonstrate Map Interface using HashMap and LinkedHashMap.


import java.util.HashMap;
import java.util.LinkedHashMap;

class Practical21 {
    public static void main(String args[]) {
        HashMap<Integer, String> hashMap = new HashMap<>();
        hashMap.put(101, "Aman");
        hashMap.put(102, "Riya");
        hashMap.put(103, "Neha");
        System.out.println("HashMap:");
        System.out.println(hashMap);
        System.out.println("Student 102: " + hashMap.get(102));

        LinkedHashMap<Integer, String> linkedMap = new LinkedHashMap<>();
        linkedMap.put(101, "Aman");
        linkedMap.put(102, "Riya");
        linkedMap.put(103, "Neha");
        System.out.println("\nLinkedHashMap:");
        System.out.println(linkedMap);

        linkedMap.remove(102);
        System.out.println("After removing key 102:");
        System.out.println(linkedMap);
    }
}
