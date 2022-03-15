#include "lineProcess.h"

lineProcess::lineProcess(string& s, string c)
{
	str = s;
	comment_str = c;
};

string lineProcess::Cut()
{
	for (char& c : str)
	{
		//Unify into spaces
		if (c == '\t' || c == ',' || c == ';' || c == '\r' || c == '\n' || c == '$')
			c = ' ';
	}

	str.erase(0, str.find_first_not_of(" "));//Remove head-of-line spaces
	str.erase(str.find_last_not_of(" ") + 1);//Remove end-of-line spaces

   //Find the position of the comment character, if it does not exist, get string :: npos
	int n_comment_start = str.find_first_of(comment_str);
	if (n_comment_start != string::npos)
		str.erase(n_comment_start);         //Delete comment

	return str;
}