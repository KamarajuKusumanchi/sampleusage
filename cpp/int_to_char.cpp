#include <iostream>    // std::cout
#include <sstream>     // std::string
#include <string>      // std::stringstream

using namespace std;

string append_num(const string& prefix);

int main()
{

    string uid = append_num("raju");
    cout << "uid = " << uid << "\n";

    uid = append_num("raju");
    cout << "uid = " << uid << "\n";

    uid = append_num("kama");
    cout << "uid = " << uid << "\n";
    return 0;
}

string append_num(const string& prefix)
{
    stringstream ss;
    ss << prefix;

    static int counter=1;
    ss << counter++;

    return ss.str();
}

// rajulocal@hogwarts:~/sampleusage/cpp$ g++ int_to_char.cpp 
// rajulocal@hogwarts:~/sampleusage/cpp$ ./a.out 
// uid = raju1
// uid = raju2
// uid = kama3
