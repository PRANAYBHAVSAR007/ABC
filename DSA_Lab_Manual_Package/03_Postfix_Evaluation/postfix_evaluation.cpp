#include <iostream>
#include <stack>
#include <string>
#include <cctype>
using namespace std;

int evaluatePostfix(const string& expr) {
    stack<int> st;

    for (char ch : expr) {
        if (isdigit(static_cast<unsigned char>(ch))) {
            st.push(ch - '0');
        }
        else {
            int val2 = st.top();
            st.pop();

            int val1 = st.top();
            st.pop();

            switch (ch) {
                case '+': st.push(val1 + val2); break;
                case '-': st.push(val1 - val2); break;
                case '*': st.push(val1 * val2); break;
                case '/': st.push(val1 / val2); break;
            }
        }
    }

    return st.top();
}

int main() {
    string expr;

    cout << "Enter postfix expression: ";
    cin >> expr;

    int result = evaluatePostfix(expr);
    cout << "Result: " << result << endl;

    return 0;
}
