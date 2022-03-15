#pragma once
#include<iostream>
#include<vector>
#include<string>
#include<fstream>
#include<algorithm>
#include<sstream>
using namespace std;

class Invert
{
public:
    Invert(string file);//Read instruction file
    void Convert(string file1, string file2);
private:
    struct ins {//Store instruction
        string type;//Instruction type
        string op;//Instruction opcode
        string name;//Instruction name
    };
    vector<ins> R_type, I_type, J_type;//Store 3 kinds of instructions separately
    string findName(const vector<ins>& v, string s);//Find the corresponding command name
    int binToInt(string s);//Binary to int
    static bool cmp(ins a, ins b);//Used for instruction queue sorting
    string hexToBin(string h);//4-bit hexadecimal to 16-bit binary
    string iToSymbol(int t);//int to register symbol
    char* iToHex(int reg);//int to 8-bit hexadecimal
    char* binToHex(int* b);//32-bit binary to 8-bit hexadcimal
};