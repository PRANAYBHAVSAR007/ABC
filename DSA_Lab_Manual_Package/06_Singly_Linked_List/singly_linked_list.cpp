#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

class LinkedList {
    Node* head;

public:
    LinkedList() {
        head = nullptr;
    }

    void insert(int val) {
        Node* newNode = new Node();
        newNode->data = val;
        newNode->next = nullptr;

        if (head == nullptr) {
            head = newNode;
        }
        else {
            Node* temp = head;
            while (temp->next != nullptr)
                temp = temp->next;
            temp->next = newNode;
        }
    }

    void deleteNode(int val) {
        if (head == nullptr) {
            cout << "List is empty\n";
            return;
        }

        if (head->data == val) {
            Node* temp = head;
            head = head->next;
            delete temp;
            cout << val << " deleted from list\n";
            return;
        }

        Node* current = head;
        Node* prev = nullptr;

        while (current != nullptr && current->data != val) {
            prev = current;
            current = current->next;
        }

        if (current == nullptr) {
            cout << val << " not found in list\n";
            return;
        }

        prev->next = current->next;
        delete current;
        cout << val << " deleted from list\n";
    }

    void search(int val) {
        Node* temp = head;
        int pos = 0;

        while (temp != nullptr) {
            if (temp->data == val) {
                cout << val << " found at position " << pos << endl;
                return;
            }
            temp = temp->next;
            pos++;
        }

        cout << val << " not found in list\n";
    }

    void traverse() {
        Node* temp = head;

        cout << "Linked List: ";
        while (temp != nullptr) {
            cout << temp->data << " -> ";
            temp = temp->next;
        }
        cout << "NULL\n";
    }

    void reverse() {
        Node* prev = nullptr;
        Node* curr = head;
        Node* next = nullptr;

        while (curr != nullptr) {
            next = curr->next;
            curr->next = prev;
            prev = curr;
            curr = next;
        }

        head = prev;
        cout << "List reversed\n";
    }

    ~LinkedList() {
        while (head != nullptr) {
            Node* temp = head;
            head = head->next;
            delete temp;
        }
    }
};

int main() {
    LinkedList list;

    list.insert(10);
    list.insert(20);
    list.insert(30);
    list.insert(40);

    list.traverse();

    list.search(30);
    list.search(100);

    list.deleteNode(20);
    list.traverse();

    list.reverse();
    list.traverse();

    return 0;
}
