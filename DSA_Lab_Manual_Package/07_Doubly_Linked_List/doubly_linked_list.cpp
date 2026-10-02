#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* prev;
    Node* next;
};

Node* head = nullptr;

Node* createNode(int value) {
    Node* newNode = new Node();
    newNode->data = value;
    newNode->prev = nullptr;
    newNode->next = nullptr;
    return newNode;
}

void insertEnd(int value) {
    Node* newNode = createNode(value);

    if (head == nullptr) {
        head = newNode;
        return;
    }

    Node* temp = head;
    while (temp->next != nullptr)
        temp = temp->next;

    temp->next = newNode;
    newNode->prev = temp;
}

void insertBegin(int value) {
    Node* newNode = createNode(value);

    if (head == nullptr) {
        head = newNode;
        return;
    }

    newNode->next = head;
    head->prev = newNode;
    head = newNode;
}

void deleteBegin() {
    if (head == nullptr) {
        cout << "List is empty\n";
        return;
    }

    Node* temp = head;
    head = head->next;

    if (head != nullptr)
        head->prev = nullptr;

    delete temp;
}

void deleteEnd() {
    if (head == nullptr) {
        cout << "List is empty\n";
        return;
    }

    Node* temp = head;

    while (temp->next != nullptr)
        temp = temp->next;

    if (temp->prev != nullptr)
        temp->prev->next = nullptr;
    else
        head = nullptr;

    delete temp;
}

void search(int key) {
    Node* temp = head;
    int pos = 1;

    while (temp != nullptr) {
        if (temp->data == key) {
            cout << "Element found at position " << pos << "\n";
            return;
        }

        temp = temp->next;
        pos++;
    }

    cout << "Element not found\n";
}

void display() {
    Node* temp = head;

    if (temp == nullptr) {
        cout << "List is empty\n";
        return;
    }

    cout << "List: ";
    while (temp != nullptr) {
        cout << temp->data << " ";
        temp = temp->next;
    }
    cout << "\n";
}

void reverseList() {
    Node* current = head;
    Node* temp = nullptr;

    while (current != nullptr) {
        temp = current->prev;
        current->prev = current->next;
        current->next = temp;
        current = current->prev;
    }

    if (temp != nullptr)
        head = temp->prev;
}

void clearList() {
    while (head != nullptr) {
        Node* temp = head;
        head = head->next;
        delete temp;
    }
}

int main() {
    insertEnd(10);
    insertEnd(20);
    insertBegin(5);

    display();
    search(20);

    deleteBegin();
    display();

    deleteEnd();
    display();

    insertEnd(30);
    insertEnd(40);
    display();

    reverseList();
    display();

    clearList();
    return 0;
}
