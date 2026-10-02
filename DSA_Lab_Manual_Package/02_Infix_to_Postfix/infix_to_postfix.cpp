#include <iostream>
#include <stack>
#include <string>
#include <cctype>
using namespace std;

int precedence(char op) {
    if (op == '^') return 3;
    if (op == '*' || op == '/') return 2;
    if (op == '+' || op == '-') return 1;
    return -1;
}

string infixToPostfix(const string& expr) {
    stack<char> st;
    string result;

    for (char ch : expr) {
        if (isalnum(static_cast<unsigned char>(ch))) {
            result += ch;
        }
        else if (ch == '(') {
            st.push(ch);
        }
        else if (ch == ')') {
            while (!st.empty() && st.top() != '(') {
                result += st.top();
                st.pop();
            }
            if (!st.empty())
                st.pop();
        }
        else {
            while (!st.empty() && st.top() != '(' &&
                   precedence(ch) <= precedence(st.top())) {
                result += st.top();
                st.pop();
            }
            st.push(ch);
        }
    }

    while (!st.empty()) {
        result += st.top();
        st.pop();
    }

    return result;
}

int main() {
    string expr;

    cout << "Enter infix expression: ";
    cin >> expr;

    string postfix = infixToPostfix(expr);
    cout << "Postfix expression: " << postfix << endl;

    return 0;
}
