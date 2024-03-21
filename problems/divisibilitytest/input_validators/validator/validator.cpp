#include <bits/stdc++.h>
#include "validator.h"



using namespace std;




void run() {
	string n = Line();
	

	assert (n[0] != '0');
	
	int maxN = int(Arg("maxN",100000));

	assert(maxN >= n.size());

	if (maxN == n.size()){
		assert(n[0] == '1');
		for (char &x: n.substr(1,n.size())){
			assert(x == '0');
		}
	}


	Eof();
}
