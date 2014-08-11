// Author      : Kamaraju S. Kusumanchi
// Email       : kamaraju at gmail dot com
// Last edited : Sun Aug 10 23:15:14 EDT 2014

// The percent operator, %, finds the modulus of its first operant w.r.t. the
// second. If one of the operands is negative, the sign of the result satisfies
// the following rule: a = (a/b)*b + a%b

void div_percent(const int a, const int b, int& c, int& d);

#include <iostream>

int main()
{
    using namespace std;
    int a = 7, b = 3, c, d;
    div_percent(a, b, c, d);
    cout << "a = " << a << ", b = " << b << ", a/b = " << c << ", a%b = " << d << endl;
    a = -7; b = 3;
    div_percent(a, b, c, d);
    cout << "a = " << a << ", b = " << b << ", a/b = " << c << ", a%b = " << d << endl;
    a = 7; b = -3;
    div_percent(a, b, c, d);
    cout << "a = " << a << ", b = " << b << ", a/b = " << c << ", a%b = " << d << endl;
    a = -7; b = -3;
    div_percent(a, b, c, d);
    cout << "a = " << a << ", b = " << b << ", a/b = " << c << ", a%b = " << d << endl;
}

void div_percent(const int a, const int b, int& c, int& d)
{
    c = a / b;
    d = a % b;
}

// rajulocal@hogwarts:~/sampleusage/cpp$ g++ using_percent_operator.cpp 
// rajulocal@hogwarts:~/sampleusage/cpp$ ./a.out 
// a = 7, b = 3, a/b = 2, a%b = 1
// a = -7, b = 3, a/b = -2, a%b = -1
// a = 7, b = -3, a/b = -2, a%b = 1
// a = -7, b = -3, a/b = 2, a%b = -1

