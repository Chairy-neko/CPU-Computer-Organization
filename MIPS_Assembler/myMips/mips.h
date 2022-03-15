#pragma once
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
using namespace std;

class mips
{
public:
	mips(string file1, string file2);
private:
	struct Jump {
		int locate;//Number of lines where the instruction is located
		string type;//Instruction name
		string Label;//Label name
	}jump[100];//Record jump instructions
	int line;//File lines
	int structsize;//Number of jump instructions
	int cnt;//Control output format
	ofstream outfile;

	void opToHex(string op);//mips command to hexadecimal
	string toLower(string s);//Uppercase to lowercase
	int* getReg(char* p);//Uppercase to lowercase
	int* iToBin(int reg, int width);//int to binary
	int* iToBinOff(int reg, int width);//Calculate the offset
	int* numToBin(char* p);//address behind J_type to binary
	char* binToHex(int* b);//32-bit binary to hexadecimal
};

