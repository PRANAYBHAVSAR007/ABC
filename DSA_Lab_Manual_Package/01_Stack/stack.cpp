#include <iostream>
using namespace std;

#define SIZE 100

class Stack {
    int arr[SIZE];
    int top;

public:
    Stack() {
        top = -1;
    }

    void push(int value) {
        if (top == SIZE - 1) {
            cout << "Stack Overflow\n";
            return;
        }
        arr[++top] = value;
        cout << value << " pushed to stack\n";
    }

    void pop() {
        if (top == -1) {
            cout << "Stack Underflow\n";
            return;
        }
        cout << arr[top--] << " popped from stack\n";
    }

    void peek() {
        if (top == -1) {
            cout << "Stack is empty\n";
            return;
        }
        cout << "Top element is: " << arr[top] << endl;
    }

    void traverse() {
        if (top == -1) {
            cout << "Stack is empty\n";
            return;
        }

        cout << "Stack elements: ";
        for (int i = top; i >= 0; i--)
            cout << arr[i] << " ";
        cout << endl;
    }

    void search(int key) {
        for (int i = top; i >= 0; i--) {
            if (arr[i] == key) {
                cout << key << " found at position " << (top - i) << endl;
                return;
            }
        }
        cout << key << " not found in stack\n";
    }
};

int main() {
    Stack s;

    s.push(10);
    s.push(20);
    s.push(30);

    s.traverse();
    s.peek();
    s.search(20);
    s.search(100);

    s.pop();
    s.traverse();

    return 0;
}
