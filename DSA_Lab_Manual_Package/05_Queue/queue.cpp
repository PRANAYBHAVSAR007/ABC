#include <iostream>
using namespace std;

class Queue {
    int* arr;
    int front, rear, capacity;

public:
    Queue(int size) {
        capacity = size;
        arr = new int[capacity];
        front = rear = -1;
    }

    void enqueue(int value) {
        if (rear == capacity - 1) {
            cout << "Queue Overflow" << endl;
            return;
        }

        if (front == -1)
            front = 0;

        arr[++rear] = value;
        cout << "Enqueued: " << value << endl;
    }

    void dequeue() {
        if (front == -1 || front > rear) {
            cout << "Queue Underflow" << endl;
            return;
        }

        cout << "Dequeued: " << arr[front++] << endl;
    }

    void traverse() {
        if (front == -1 || front > rear) {
            cout << "Queue is empty" << endl;
            return;
        }

        cout << "Queue elements: ";
        for (int i = front; i <= rear; i++)
            cout << arr[i] << " ";
        cout << endl;
    }

    void search(int value) {
        for (int i = front; i <= rear; i++) {
            if (arr[i] == value) {
                cout << "Found at position: " << (i - front) << endl;
                return;
            }
        }

        cout << "Element not found" << endl;
    }

    ~Queue() {
        delete[] arr;
    }
};

int main() {
    int size;

    cout << "Enter queue size: ";
    cin >> size;

    if (size <= 0) {
        cout << "Queue size must be positive.\n";
        return 0;
    }

    Queue q(size);

    q.enqueue(10);
    q.enqueue(20);
    q.enqueue(30);

    q.traverse();
    q.search(20);
    q.dequeue();
    q.traverse();

    return 0;
}
