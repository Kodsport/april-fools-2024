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

#if _LOCAL
#define assert(x) if (!(x)) __debugbreak()
#endif

signed main()
{
	fast();

	bitset<1000 * 1000> bset;
	bset[0] = 1;
	int n;
	cin >> n;

	int t = 0;
	rep(i, n)
	{
		int v;
		cin >> v;
		t += v;
		bset |= bset << v;
	}

	for (int i = t / 2; i >= 0; i--)
	{
		if (bset[i])
		{
			cout << t - i << endl;
			return 0;
		}
	}
	assert(0);
	return 0;
}
