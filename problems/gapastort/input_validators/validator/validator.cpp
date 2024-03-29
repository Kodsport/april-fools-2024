#include <bits/stdc++.h>
#include "validator.h"



using namespace std;

void run() {
	int n = Int(1, 1000);
	Endl();
	string s = Line();

	assert(s.size() == n);

	for (int i = 0; i<n; i++){
		assert(s[i]=='A' || s[i] == 'C' || s[i] == 'G' || s[i] == 'T'); 
	}

	Eof();
}
