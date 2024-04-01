#include <bits/stdc++.h>
#define int int64_t
using namespace std;

signed main(){
	ios_base::sync_with_stdio(false);
	cin.tie(NULL);
	//freopen("input.in", "r", stdin);
	//freopen("output.out", "w", stdout);
	
	for(int i = 1; i<=10; ++i){
		if(i == 2) continue;
		if(i == 3) continue;
		if(i == 5) continue;
		if(i == 8) continue;
		cout<<i<<endl;
	}
	
	for(int i = 6; i<20; ++i) cout<<10<<endl;
}