#include <iostream>

using namespace std;

int main()
{
	int a, b, d, r;
	a = 5; b = 2; d = a / b; r = a % b;
	cout << "a, b, a/b, a%b" << endl;
	cout << a << ", " << b << ", " << d << ", " << r << endl;
	a = -5; b = 2; d = a / b; r = a % b;
	cout << a << ", " << b << ", " << d << ", " << r << endl;
	a = 5; b = -2; d = a / b; r = a % b;
	cout << a << ", " << b << ", " << d << ", " << r << endl;
	a = -5; b = -2; d = a / b; r = a % b;
	cout << a << ", " << b << ", " << d << ", " << r << endl;

}
