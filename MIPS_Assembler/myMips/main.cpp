#include "lineProcess.h"
#include "mips.h"
#include "Invert.h"

void Assembler();
void Dissembler();

int main() {
	int AsOrDiss;
	cout << "Choose assembler or dissembler, 1 is assembler and 0 is dissembler" << endl;
	cin >> AsOrDiss;
	if (AsOrDiss) Assembler();
	else Dissembler();

	return 0;
	system("pause");
}

void Assembler() {
	string filename;
	cout << "Please input the name of the file you want to open." << endl;
	cin >> filename;
	mips a(filename, "mips.coe");
	cout << "You can find the answer in the file \"mips.coe\"." << endl;
}

void Dissembler() {
	string filename;
	cout << "Please input the name of the file you want to open." << endl;
	cin >> filename;
	Invert d("instruction.txt");
	d.Convert(filename, "invert.txt");
	cout << "You can find the answer in the file \"invert.txt\"." << endl;
}