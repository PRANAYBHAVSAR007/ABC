#include <iostream>
using namespace std;

int binarySearch(int arr[], int n, int key) {
    int low = 0, high = n - 1;

    while (low <= high) {
        int mid = (low + high) / 2;

        if (arr[mid] == key)
            return mid;

        if (arr[mid] < key)
            low = mid + 1;
        else
            high = mid - 1;
    }

    return -1;
}

int interpolationSearch(int arr[], int n, int key) {
    int low = 0, high = n - 1;

    while (low <= high && key >= arr[low] && key <= arr[high]) {
        if (low == high) {
            if (arr[low] == key)
                return low;
            return -1;
        }

        if (arr[high] == arr[low])
            return (arr[low] == key) ? low : -1;

        int pos = low + (((key - arr[low]) * (high - low)) /
                         (arr[high] - arr[low]));

        if (arr[pos] == key)
            return pos;

        if (arr[pos] < key)
            low = pos + 1;
        else
            high = pos - 1;
    }

    return -1;
}

int main() {
    int n, key;

    cout << "Enter size of array: ";
    cin >> n;

    if (n <= 0) {
        cout << "Array size must be positive.\n";
        return 0;
    }

    int* arr = new int[n];

    cout << "Enter " << n << " sorted elements:\n";
    for (int i = 0; i < n; i++)
        cin >> arr[i];

    cout << "Enter element to search (key): ";
    cin >> key;

    int bResult = binarySearch(arr, n, key);

    if (bResult != -1)
        cout << "Binary Search: Key found at index " << bResult << endl;
    else
        cout << "Binary Search: Key not found\n";

    int iResult = interpolationSearch(arr, n, key);

    if (iResult != -1)
        cout << "Interpolation Search: Key found at index " << iResult << endl;
    else
        cout << "Interpolation Search: Key not found\n";

    delete[] arr;
    return 0;
}
