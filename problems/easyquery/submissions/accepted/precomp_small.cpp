#include <bits/stdc++.h>
using namespace std;

typedef long long ll;
#define int ll
const int inf = int(1e18);

typedef vector<int> vi;
typedef vector<vi> vvi;
typedef pair<int, int> p2;

#define rep(i, high) for (int i = 0; i < high; i++)
#define repp(i, low, high) for (int i = low; i < high; i++)
#define repe(i, container) for (auto& i : container)
#define sz(container) ((int)container.size())
#define all(x) begin(x),end(x)
#define ceildiv(x,y) ((x + y - 1) / (y))

inline void fast() { ios::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL); }

auto Start = chrono::high_resolution_clock::now();
void resettimer() { Start = chrono::high_resolution_clock::now(); }
int elapsedmillis() { return chrono::duration_cast<chrono::milliseconds>(chrono::high_resolution_clock::now() - Start).count(); }


#if _LOCAL
#define assert(x) if (!(x)) __debugbreak()
#endif

int lessthan(int r)
{
	std::string multiline_string = R"(2.384186029434204101562500000000 10000001
5.536744594573974609375000000000 20000003
12.610234260559082031250000000000 30000005
28.293958663940429687500000000000 40000007
62.734897613525390625000000000000 50000009
147.527511596679687500000000000000 60000011
344.230865478515625000000000000000 70000013
786.813415527343750000000000000000 80000015
1770.330200195312500000000000000000 90000017
3934.067138671875000000000000000000 100000019
9117.895507812500000000000000000000 110000021
21383.044921875000000000000000000000 120000023
49060.597656250000000000000000000000 130000025
110710.210937500000000000000000000000 140000027
246598.453125000000000000000000000000 150000029
562817.937500000000000000000000000000 160000031
1327060.125000000000000000000000000000 170000033
3056968.750000000000000000000000000000 180000035
6919634.500000000000000000000000000000 190000037
15450663.000000000000000000000000000000 200000039
34693796.000000000000000000000000000000 210000041
82278744.000000000000000000000000000000 220000043
190339792.000000000000000000000000000000 230000045
432244192.000000000000000000000000000000 240000047
967617600.000000000000000000000000000000 250000049)";


	std::istringstream iss(multiline_string);
	std::string line;
	float start = 1;
	int cnt = 0;
	while (std::getline(iss, line)) {
		std::istringstream line_stream(line);
		float f;
		int i;
		if (line_stream >> f >> i) {
			if (f<r)
			{
				start = f;
				cnt = i;
			}
		}
	}

	while (start < r)
	{
		cnt++;
		start = nexttoward(start, 1e18);
	}
	return cnt;
}

signed main()
{
	fast();

	int l, r;
	cin >> l >> r;

	cout << lessthan(r)-lessthan(l)-1 << "\n";

	return 0;
}
