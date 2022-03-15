#pragma once
#include <iostream>
#include <string>
using namespace std;

class lineProcess
{
private:
	string str;//the input line
	string comment_str;//Comment string
public:
	lineProcess(string& s, string c);
	string Cut();//Cut unnecessary parts
};
