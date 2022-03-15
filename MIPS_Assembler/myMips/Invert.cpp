#include "Invert.h"
#include "lineProcess.h"

Invert::Invert(string path) {
    ifstream infile(path);
    ins tmp;
    while (!infile.eof()) {
        infile >> tmp.type >> tmp.name >> tmp.op;
        if (tmp.type == "R")
            R_type.push_back(tmp);
        else if (tmp.type == "I")
            I_type.push_back(tmp);
        else
            J_type.push_back(tmp);
    }
    infile.close();
    sort(R_type.begin(), R_type.end(), cmp);
    sort(I_type.begin(), I_type.end(), cmp);
    sort(J_type.begin(), J_type.end(), cmp);
}

void Invert::Convert(string file1, string file2) {
    ifstream infile(file1);
    ofstream outfile(file2);
    string str;
    if (!infile) {
        cout << "Open error!" << endl;
        exit(1);
    }
    while (getline(infile, str)) {
        lineProcess linep(str, ";");//Remove multiple spaces and tabs at the beginning and end of lines
        str = linep.Cut();
        if (str.empty()) continue;//continue if line is empty
        if (!(str[0] >= '0' && str[0] <= '9') && !(str[0] >= 'a' && str[0] <= 'f')
            && !(str[0] >= 'A' && str[0] <= 'F'))
            continue;
        istringstream iss(str);
        string s;
        while (iss >> s) {//Read each machine code in the line
            string newline = hexToBin(s);//Hexadecimal machine code to binary
            string op = newline.substr(0, 6);
            if (op == "000000") {//Determine the type according to the op value
                string instructor_name = findName(R_type, newline.substr(26, 6));
                string rs, rt, rd, shamt;
                string rss, rts, rds, shamts;
                int rsi, rti, rdi, shamti;
                rs = newline.substr(6, 5);
                rt = newline.substr(11, 5);
                rd = newline.substr(16, 5);
                shamt = newline.substr(21, 5);
                rsi = binToInt(rs);
                rti = binToInt(rt);
                rdi = binToInt(rd);
                outfile << instructor_name << " $";
                if (instructor_name == "sll" || instructor_name == "srl")
                    outfile << iToSymbol(rdi) << ", $" << iToSymbol(rti) << ", " << binToInt(shamt) << endl;
                else if (instructor_name == "jr")
                    outfile << iToSymbol(rsi) << endl;
                else
                    outfile << iToSymbol(rdi) << ", $" << iToSymbol(rsi) << ", $" << iToSymbol(rti) << endl;
            }
            else if (op == "000010" || op == "000011") {
                string instructor_name = findName(J_type, op);
                string address = newline.substr(6, 26);
                int addri = binToInt(address);
                char* addrh;
                addrh = iToHex(addri);
                outfile << instructor_name << " 0x";
                for (int i = 0; i < 8; ++i)
                    outfile << addrh[i];
                outfile << endl;
            }
            else {
                string instructor_name = findName(I_type, op);
                string rs, rt, immediate;
                int rsi, rti;
                rs = newline.substr(6, 5);
                rt = newline.substr(11, 5);
                rsi = binToInt(rs);
                rti = binToInt(rt);
                immediate = newline.substr(16, 16);
                outfile << instructor_name << " $";
                if (instructor_name == "lui")
                    outfile << iToSymbol(rti) << ", " << binToInt(immediate) << endl;
                else if (instructor_name == "lw" || instructor_name == "sw")
                    outfile << iToSymbol(rti) << ", " << binToInt(immediate) << "($" << binToInt(rs) << ")" << endl;
                else if (instructor_name == "beq" || instructor_name == "bne")
                    outfile << iToSymbol(rsi) << ", $" << iToSymbol(rti) << ", " << binToInt(immediate) << endl;
                else
                    outfile << iToSymbol(rti) << ", $" << iToSymbol(rsi) << ", " << binToInt(immediate) << endl;
            }
        }
    }
}

bool Invert::cmp(ins a, ins b) {
    return a.op < b.op;
}

string Invert::findName(const vector<ins>& v, string s) {
    int start = 0, end = v.size() - 1;
    while (start <= end) {
        int mid = (start + end) / 2;
        if (v[mid].op == s)
            return v[mid].name;
        else if (v[mid].op < s)
            start = mid + 1;
        else
            end = mid - 1;
    }
    return "";
}

int Invert::binToInt(string s) {
    int res = 0;
    for (int i = 0; i < s.length(); ++i) {
        res = res * 2 + (s[i] - '0');
    }
    return res;
}

string Invert::hexToBin(string h) {
    int i, j;
    int t;
    int* b = new int[32];
    char* bc = new char[32];
    string bs;
    for (i = 0; i < 8; ++i) {
        if (isupper(h[i]))
            h[i] += ('a' - 'A');
        if (islower(h[i]))
            t = h[i] - 'a' + 10;
        else if (isdigit(h[i]))
            t = h[i] - '0';
        for (j = 4 * (i + 1) - 1; j >= 4 * i; --j) {
            b[j] = t % 2;
            t = t / 2;
            bc[j] = b[j] + '0';
        }
    }
    bs = bc;
    return bs;
}

string Invert::iToSymbol(int t)
{
    string name;
    switch (t)
    {
    case(0):
        name = "zero";
        break;
    case(1):
        name = "at";
        break;
    case(2):
        name = "v0";
        break;
    case(3):
        name = "v1";
        break;
    case(4):
        name = "a0";
        break;
    case(5):
        name = "a1";
        break;
    case(6):
        name = "a2";
        break;
    case(7):
        name = "a3";
        break;
    case(8):
        name = "t0";
        break;
    case(9):
        name = "t1";
        break;
    case(10):
        name = "t2";
        break;
    case(11):
        name = "t3";
        break;
    case(12):
        name = "t4";
        break;
    case(13):
        name = "t5";
        break;
    case(14):
        name = "t6";
        break;
    case(15):
        name = "t7";
        break;
    case(16):
        name = "s0";
        break;
    case(17):
        name = "s1";
        break;
    case(18):
        name = "s2";
        break;
    case(19):
        name = "s3";
        break;
    case(20):
        name = "s4";
        break;
    case(21):
        name = "s5";
        break;
    case(22):
        name = "s6";
        break;
    case(23):
        name = "s7";
        break;
    case(24):
        name = "t8";
        break;
    case(25):
        name = "t9";
        break;
    case(26):
        name = "k0";
        break;
    case(27):
        name = "k1";
        break;
    case(28):
        name = "gp";
        break;
    case(29):
        name = "sp";
        break;
    case(30):
        name = "fp";
        break;
    case(31):
        name = "ra";
        break;
    default:
        break;
    }
    return name;
}

char* Invert::iToHex(int reg) {
    int* q = new int[32];
    char* h = new char[8];
    for (int i = 31; i >= 0; --i) {
        q[i] = reg % 2;
        reg = reg / 2;
    }
    h = binToHex(q);
    return h;
}

char* Invert::binToHex(int* b) {
    int i, j;
    int t, k, reg;
    char* q = new char[8];
    for (i = 0; i < 32; i += 4) {
        t = reg = 0;
        k = 1;
        for (j = 3; j >= 0; --j)
        {
            t = k * b[i + j];
            reg += t;
            k *= 2;
        }
        if (reg <= 9)
            q[i / 4] = reg + '0';
        else
            q[i / 4] = reg - 10 + 'A';
    }
    return q;
}