AIM- Write a Java program to demonstrate Set Interface using HashSet and TreeSet.


import java.util.HashSet;
import java.util.TreeSet;

class Practical19 {
    public static void main(String args[]) {
        HashSet<Integer> hashSet = new HashSet<>();
        hashSet.add(40);
        hashSet.add(10);
        hashSet.add(30);
        hashSet.add(10);
        hashSet.add(20);
        System.out.println("HashSet:");
        System.out.println(hashSet);

        TreeSet<Integer> treeSet = new TreeSet<>();
        treeSet.add(40);
        treeSet.add(10);
        treeSet.add(30);
        treeSet.add(10);
        treeSet.add(20);
        System.out.println("\nTreeSet:");
        System.out.println(treeSet);
    }
}
