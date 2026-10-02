#include <iostream>
#include <stack>
#include <cmath>
using namespace std;

void moveDisk(stack<int>& from, stack<int>& to, char fromRod, char toRod) {
    int disk;

    if (from.empty()) {
        disk = to.top();
        to.pop();
        from.push(disk);
        cout << "Move disk " << disk << " from " << toRod
             << " to " << fromRod << endl;
    }
    else if (to.empty()) {
        disk = from.top();
        from.pop();
        to.push(disk);
        cout << "Move disk " << disk << " from " << fromRod
             << " to " << toRod << endl;
    }
    else if (from.top() > to.top()) {
        disk = to.top();
        to.pop();
        from.push(disk);
        cout << "Move disk " << disk << " from " << toRod
             << " to " << fromRod << endl;
    }
    else {
        disk = from.top();
        from.pop();
        to.push(disk);
        cout << "Move disk " << disk << " from " << fromRod
             << " to " << toRod << endl;
    }
}

int main() {
    int n;

    cout << "Enter number of disks: ";
    cin >> n;

    if (n <= 0) {
        cout << "Number of disks must be positive.\n";
        return 0;
    }

    stack<int> source, help, destination;

    for (int i = n; i >= 1; i--)
        source.push(i);

    int totalMoves = static_cast<int>(pow(2, n)) - 1;

    char S = 'S', H = 'H', D = 'D';

    if (n % 2 == 0)
        swap(H, D);

    for (int i = 1; i <= totalMoves; i++) {
        if (i % 3 == 1)
            moveDisk(source, destination, S, D);
        else if (i % 3 == 2)
            moveDisk(source, help, S, H);
        else
            moveDisk(help, destination, H, D);
    }

    return 0;
}
