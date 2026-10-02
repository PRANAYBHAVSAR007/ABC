import java.util.PriorityQueue;
import java.util.ArrayDeque;
import java.util.Deque;

class Practical20 {
    public static void main(String args[]) {
        PriorityQueue<Integer> pq = new PriorityQueue<>();
        pq.add(30);
        pq.add(10);
        pq.add(20);
        System.out.println("PriorityQueue:");
        System.out.println(pq);
        System.out.println("Removed element = " + pq.poll());
        System.out.println("After removal = " + pq);

        Deque<String> deque = new ArrayDeque<>();
        deque.addFirst("A");
        deque.addLast("B");
        deque.addLast("C");
        deque.addFirst("Start");
        System.out.println("\nDeque:");
        System.out.println(deque);

        deque.removeFirst();
        deque.removeLast();
        System.out.println("After removing both ends:");
        System.out.println(deque);
    }
}
