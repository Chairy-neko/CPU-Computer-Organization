#include "mips.h"
#include "lineProcess.h"

mips::mips(string file1, string file2) {
	ifstream infile(file1);
	outfile.open(file2);
	int i, j;
	string str;

	if (!infile) {
		cout << "Open error!" << endl;
		exit(1);
	}
	outfile << "memory_initialization_radix=16;" << endl;
	outfile << "memory_initialization_vector = " << endl;
	cnt = 0;

	i = -1;
	line = -1;

	while (getline(infile, str))//Traverse the file for the first time, record the jump instruction  and label information
	{
		lineProcess linep(str, "//");//Remove multiple spaces and tabs at the beginning and end of lines

		str = linep.Cut();
		if (str.empty()) continue;//continue if line is empty
		line++;
		istringstream iss(str);
		string op1, op2, op3, op4;
		string::size_type position;
		iss >> op1;
		position = op1.find(":");
		if (op1 == "j" || op1 == "jal") {
			iss >> op2;
			i++;
			jump[i].locate = line;
			jump[i].type = op1;
			jump[i].Label = op2;
		}
		else if (op1 == "beq" || op1 == "bne") {
			iss >> op2 >> op3 >> op4;
			i++;
			jump[i].locate = line;
			jump[i].type = op1;
			jump[i].Label = op4;
		}
		else if (position != op1.npos) {
			op1.erase(position);
			i++;
			jump[i].locate = line;
			jump[i].type = "tab";
			jump[i].Label = op1;
			line--;
		}

	}
	structsize = i;

	infile.clear();
	infile.seekg(0, ios::beg);
	i = 0;
	line = -1;
	while (getline(infile, str)) {
		lineProcess linep(str, "//");//Remove multiple spaces and tabs at the beginning and end of lines
		str = linep.Cut();
		if (str.empty()) continue;//continue if line is empty
		istringstream iss(str);
		string op;
		iss >> op;
		if (op.back() == ':') continue;//Skip when reading label
		line++;
		opToHex(str);
	}

	infile.close();
}

void mips::opToHex(string op) {//mips command to hexadecimal
	int i, j;
	string p0;
	string p1;
	char* p2 = new char[10];
	int* nowbin = new int[32];//Record the 32-bit binary machine code corresponding to the mips instruction
	char* nowhex = new char[8];//Record the 8-digit hexadecimal machine code corresponding to the mips instruction
	istringstream iss(op);
	op = toLower(op);
	iss >> p0;
	for (i = 0; i < 32; ++i)
		nowbin[i] = 0;
	if (p0 == "add" || p0 == "sub" || p0 == "and" || p0 == "or" || p0 == "slt" || p0 == "nor") {
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rd = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rs = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rt = getReg(p2);
		for (i = 6; i < 11; ++i) {
			nowbin[i] = rs[i - 6];
			nowbin[i + 5] = rt[i - 6];
			nowbin[i + 10] = rd[i - 6];
		}
		nowbin[26] = 1;
		if (p0 == "sub")
			nowbin[30] = 1;
		else if (p0 == "and")
			nowbin[29] = 1;
		else if (p0 == "or")
			nowbin[29] = nowbin[31] = 1;
		else if (p0 == "slt")
			nowbin[28] = nowbin[30] = 1;
		else if (p0 == "nor")
			nowbin[29] = nowbin[30] = nowbin[31] = 1;

		nowhex = binToHex(nowbin);

		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else if (p0 == "sll" || p0 == "srl") {
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rd = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rt = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int t = atoi(p2);
		int* shamt = iToBin(t, 5);
		for (i = 11; i < 16; ++i) {
			nowbin[i] = rt[i - 11];
			nowbin[i + 5] = rd[i - 11];
			nowbin[i + 10] = shamt[i - 11];
		}
		if (p0 == "srl")
			nowbin[30] = 1;

		nowhex = binToHex(nowbin);

		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else if (p0 == "addi" || p0 == "ori" || p0 == "slti") {
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rt = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rs = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* imm = numToBin(p2);
		if (p0 == "addi")
			nowbin[2] = 1;
		else if (p0 == "ori")
			nowbin[0] = nowbin[2] = nowbin[4] = nowbin[5] = 1;
		else if (p0 == "slti")
		{
			nowbin[2] = nowbin[4] = 1;
		}
		for (i = 6; i < 11; ++i) {
			nowbin[i] = rs[i - 6];
			nowbin[i + 5] = rt[i - 6];
		}
		for (i = 16; i < 32; ++i)
			nowbin[i] = imm[i - 16];


		nowhex = binToHex(nowbin);
		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else if (p0 == "beq" || p0 == "bne") {
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rs = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rt = getReg(p2);
		iss >> p1;
		int offset;
		for (j = 0; j <= structsize; ++j) {
			if (jump[j].locate == line && jump[j].type == p0)
				break;
		}
		for (i = 0; i <= structsize; ++i) {
			if (jump[i].Label == jump[j].Label && jump[i].type == "tab") {
				offset = jump[i].locate - line - 1;
				offset *= 4;
				break;
			}
		}
		int* imm = iToBinOff(offset, 16);//Calculate the offset

		nowbin[3] = 1;
		if (p0 == "bne")
			nowbin[5] = 1;

		for (i = 6; i < 11; ++i) {
			nowbin[i] = rs[i - 6];
			nowbin[i + 5] = rt[i - 6];
		}
		for (i = 16; i < 32; ++i)
			nowbin[i] = imm[i - 16];

		nowhex = binToHex(nowbin);

		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else if (p0 == "lui") {
		nowbin[2] = nowbin[3] = nowbin[4] = nowbin[5] = 1;
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rt = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* imm = numToBin(p2);
		for (i = 11; i < 16; ++i)
			nowbin[i] = rt[i - 11];
		for (i = 16; i < 31; ++i)
			nowbin[i] = imm[i - 16];

		nowhex = binToHex(nowbin);

		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else if (p0 == "sw" || p0 == "lw") {
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rt = getReg(p2);
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* imm;
		if (*p2 == '(')
			imm = iToBin(0, 16);
		else {
			i = 0;
			int t, reg = 0;
			while (p2[i] != '(') {
				t = p2[i] - '0';
				reg = reg * 10 + t;
				i++;
			}
			imm = iToBin(reg, 16);
		}
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rs = getReg(p2);
		nowbin[0] = nowbin[4] = nowbin[5] = 1;
		if (p0 == "sw") nowbin[2] = 1;
		for (i = 6; i < 11; ++i) {
			nowbin[i] = rs[i - 6];
			nowbin[i + 5] = rt[i - 6];
		}
		for (i = 16; i < 32; ++i)
			nowbin[i] = imm[i - 16];

		nowhex = binToHex(nowbin);

		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else if (p0 == "jr") {
		iss >> p1;
		strcpy(p2, p1.c_str());
		int* rs = getReg(p2);
		for (i = 6; i < 11; ++i)
			nowbin[i] = rs[i - 6];
		nowbin[28] = 1;

		nowhex = binToHex(nowbin);

		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else if (p0 == "j" || p0 == "jal") {
		int offset;
		for (j = 0; j <= structsize; ++j) {
			if (jump[j].locate == line && jump[j].type == p0)
				break;
		}
		for (i = 0; i <= structsize; ++i) {
			if (jump[i].Label == jump[j].Label && jump[i].type == "tab") {
				offset = jump[i].locate;
				offset *= 4;
				break;
			}
		}
		int* addroff = iToBin(offset, 32);//Calculate pseudo absolute address
		nowbin[4] = 1;
		if (p0 == "jal")
			nowbin[5] = 1;
		for (i = 6; i < 32; ++i)
			nowbin[i] = addroff[i - 2];

		nowhex = binToHex(nowbin);

		for (i = 0; i < 8; ++i) {
			outfile << nowhex[i];
		}
		outfile << ", ";
		cnt++;
	}
	else {//Errors when entering illegal instructions
		cout << "Error input!" << endl;
		exit(1);
	}
	if (cnt % 8 == 0)
		outfile << endl;
}

string mips::toLower(string s) {
	int len = s.size();
	for (int i = 0; i < len; i++) {
		if (s[i] >= 'A' && s[i] <= 'Z') {
			s[i] += ('a' - 'A');
		}
	}
	return s;
}

int* mips::getReg(char* p) {
	int reg = 0;
	char* pt = p;

	if (*pt == 'a') {
		pt++;
		if (*pt == 't')
			reg = 1;
		else {
			reg = atoi(pt) + 4;
		}
	}
	else if (*pt == 'v') {
		pt++;
		reg = atoi(pt) + 2;
	}
	else if (*pt == 't') {
		pt++;
		reg = atoi(pt);
		if (reg <= 7)
			reg += 8;
		else reg += 16;
	}
	else if (*pt == 's') {
		pt++;
		if (*pt == 'p')
			reg = 29;
		else {
			reg = atoi(pt) + 16;
		}
	}
	else if (*pt == 'k') {
		pt++;
		reg = atoi(pt) + 26;
	}
	else if (*pt == 'z')
		reg = 0;
	else if (*pt == 'g')
		reg = 28;
	else if (*pt == 'f')
		reg = 30;
	else if (*pt == 'r')
		reg = 31;
	else {
		cout << "Error input!" << endl;
		exit(1);
	}
	int* q = iToBin(reg, 5);

	return q;
}

int* mips::iToBin(int reg, int width) {
	int* q = new int[width];
	for (int i = width - 1; i >= 0; --i) {
		q[i] = reg % 2;
		reg = reg / 2;
	}
	return q;
}

int* mips::iToBinOff(int reg, int width) {
	int sign = 0;
	int i;
	if (reg < 0) {
		reg *= (-1);
		sign = 1;
	}
	int* q = new int[width + 2];
	for (i = width + 1; i >= 0; --i) {
		q[i] = reg % 2;
		reg = reg / 2;
	}
	int* qt = new int[width];
	for (i = 0; i < width; ++i)
		qt[i] = q[i];
	if (sign) {//¸ºÊýÈ¡²¹
		for (i = 0; i < width; ++i) {
			if (qt[i]) qt[i] = 0;
			else qt[i] = 1;
		}
		qt[width - 1]++;
		for (i = width - 1; i >= 0; --i) {
			if (qt[i] == 1)
				break;
			qt[i] = 0;
			if (i >= 1) {
				qt[i - 1]++;
			}
		}
	}
	return qt;
}

int* mips::numToBin(char* p) {
	int i = 0;
	int j = -1;
	int k = 0;
	int t;
	int reg;
	int* q = new int[16];
	char* pt = p;
	if (pt[1] == 'x' || pt[1] == 'X') {//If expressed in hexadecimal
		//pt[2]~pt[5]
		for (i = 2; i < 6; ++i) {
			if (isupper(pt[i]))
				pt[i] += ('a' - 'A');
			if (islower(pt[i]))
				t = pt[i] - 'a' + 10;
			else if (isdigit(pt[i]))
				t = pt[i] - '0';
			for (j = 4 * (i - 1) - 1; j >= 4 * (i - 2); --j) {
				q[j] = t % 2;
				t = t / 2;
			}
		}
	}
	else {
		i = 0;
		if (pt[0] == '-')
			i++;
		t = reg = 0;
		k = 1;
		while (pt[i] != '\0') {
			t = pt[i] - '0';
			reg = reg * 10 + t;
			i++;
			if (pt[i] == '/')
				break;
		}
		q = iToBin(reg, 16);
		if (*p != '-')
			return q;
		for (i = 0; i < 16; ++i) {//Negate
			if (q[i]) q[i] = 0;
			else q[i] = 1;
		}
		q[15]++;
		for (i = 15; i >= 0; --i) {//+1
			if (q[i] == 1) break;
			if (q[i] == 2) {
				q[i] = 0;
				if (i != 0)
					q[i - 1]++;
			}
		}
	}

	return q;
}

char* mips::binToHex(int* b) {
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

