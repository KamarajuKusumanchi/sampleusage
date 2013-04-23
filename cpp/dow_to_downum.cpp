// Author      : Kamaraju S. Kusumanchi
// Email       : kamaraju at gmail dot com
// Last edited : Mon Apr 22 19:23:13 EDT 2013

// convert the day of the week to an integer.

#include <iostream>
#include <string>

using namespace std;

int dow_to_downum(const string & dow);

int dow_to_downum(const string & dow)
{
	// dow = day of the week
	int downum = 0;

	if (!dow.compare("sun"))
	{
		downum = 0;
	}
	else if (!dow.compare("mon"))
	{
		downum = 1;
	}
	else if (!dow.compare("tue"))
	{
		downum = 2;
	}
	else if (!dow.compare("wed"))
	{
		downum = 3;
	}
	else if (!dow.compare("thu"))
	{
		downum = 4;
	}
	else if (!dow.compare("fri"))
	{
		downum = 5;
	}
	else if (!dow.compare("sat"))
	{
		downum = 6;
	}
	else
	{
		cerr << "error!!! unable to recognize dow = " << dow << endl;
		downum = -1;

	}
	
	return (downum);
}

int main()
{
	// dow = day of the week
	string dow;
	int downum;

	dow = "sun";
	downum = dow_to_downum(dow);
	cout << "dow = " << dow << ", downum = " << downum << endl;
	dow = "mon";
	downum = dow_to_downum(dow); 
	cout << "dow = " << dow << ", downum = " << downum << endl;
	dow = "tue";
	downum = dow_to_downum(dow); 
	cout << "dow = " << dow << ", downum = " << downum << endl;
	dow = "wed";
	downum = dow_to_downum(dow); 
	cout << "dow = " << dow << ", downum = " << downum << endl;
	dow = "thu";
	downum = dow_to_downum(dow); 
	cout << "dow = " << dow << ", downum = " << downum << endl;
	dow = "fri";
	downum = dow_to_downum(dow); 
	cout << "dow = " << dow << ", downum = " << downum << endl;
	dow = "sat";
	downum = dow_to_downum(dow); 
	cout << "dow = " << dow << ", downum = " << downum << endl;
	dow = "kamaraju";
	downum = dow_to_downum(dow); 
	cout << "dow = " << dow << ", downum = " << downum << endl;

	return 0;
}

// google search keywords
// cpp case string
// string comparison c++ switch
// c++ string comparison

// To compile :-
// $ g++ -g -O2 -Wall -fbounds-check dow_to_downum.cpp -o dow_to_downum

// To execute :-
// $ ./dow_to_downum 
//
// sample output
// dow = sun, downum = 0
// dow = mon, downum = 1
// dow = tue, downum = 2
// dow = wed, downum = 3
// dow = thu, downum = 4
// dow = fri, downum = 5
// dow = sat, downum = 6
// error!!! unable to recognize dow = kamaraju
// dow = kamaraju, downum = -1

