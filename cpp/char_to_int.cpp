#include <iostream>

// shows what would happen if character variables are assigned to integers.

int main()
{
    using namespace std;

    char ch = 'M';
    int i = ch;     // i will be 77
    cout << "ascii value for " << ch << " is " << i << endl;

    // since char variables are really integers, we can apply integer
    // operations to it
    cout << "Adding 1 to the char variable.\n";
    ch = ch + 1;
    i = ch;
    cout << "ascii value for " << ch << " is " << i << endl;

    // use cout.put to output a character
    cout << "using cout.put to print character: ";
    cout.put(ch);
    cout << endl;
    return 0;
}

// rajulocal@hogwarts:~/sampleusage/cpp$ g++ char_to_int.cpp -o char_to_int
// rajulocal@hogwarts:~/sampleusage/cpp$ ./char_to_int 
// ascii value for M is 77
// Adding 1 to the char variable.
// ascii value for N is 78
// using cout.put to print character: N

