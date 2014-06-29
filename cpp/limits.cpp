// Author      : Kamaraju S. Kusumanchi
// Email       : kamaraju at gmail dot com
// Last edited : Mon Apr 22 19:23:13 EDT 2013

// Provide information about system dependent integer limits.
//
// The original code is obtained from C++ Primer Plus by Stephen Prata, 6th
// edition, pg-70.

#include <iostream>
// climits   - Converted C header file. Usable by C++ programs, might use non-C
//             features, such as namespace std.
// limits.h  - C old style header file. Usable by both C and C++ programs.
//
// for older systems use limits.h instead of climits.
#include <climits>

int main()
{
    using namespace std;
    int n_int = INT_MAX;            // maximum int value
    short n_short = SHRT_MAX;       // maximum short value
    long n_long = LONG_MAX;         // maximum long value
    long long n_llong = LLONG_MAX;  // maximum long long value

    // sizeof operator yields size of type or of variable
    cout << "int is " << sizeof (int) << " bytes." << endl;
    cout << "short is " << sizeof n_short << " bytes." << endl;
    cout << "long is " << sizeof n_long << " bytes." << endl;
    cout << "long long is " << sizeof n_llong << " bytes." << endl;
    cout << endl;

    cout << "Maximum values:" << endl;
    cout << "int: " << n_int << endl;
    cout << "short: " << n_short << endl;
    cout << "long: " << n_long << endl;
    cout << "long long: " << n_llong << endl;
    cout << endl;

    cout << "Minimum int value = " << INT_MIN << endl;
    // The C++ byte consists of at least enough adjacent bits to accomodate the
    // basic character set for the implementation. Typically, it is 8 bit for
    // ASCII and EBCDIC character sets. However, for character sets such as
    // Unicode, this can be 16-bit or some times even 32-bit.
    cout << "Bits per byte = " << CHAR_BIT << endl;
    return 0;
}

// rajulocal@hogwarts:~/sampleusage/cpp$ g++ limits.cpp -o limits
// rajulocal@hogwarts:~/sampleusage/cpp$ ./limits 
// int is 4 bytes.
// short is 2 bytes.
// long is 8 bytes.
// long long is 8 bytes.
// 
// Maximum values:
// int: 2147483647
// short: 32767
// long: 9223372036854775807
// long long: 9223372036854775807
// 
// Minimum int value = -2147483648
// Bits per byte = 8
// 
// rajulocal@hogwarts:~/sampleusage/cpp$ cat /etc/os-release 
// PRETTY_NAME="Debian GNU/Linux jessie/sid"
// NAME="Debian GNU/Linux"
// ID=debian
// ANSI_COLOR="1;31"
// HOME_URL="http://www.debian.org/"
// SUPPORT_URL="http://www.debian.org/support/"
// BUG_REPORT_URL="http://bugs.debian.org/"
