#include "validate.h"

#include <bits/stdc++.h>
using namespace std;

#define rep(i, a, b) for(int i = a; i < (b); ++i)
#define trav(i, a) for(auto& i : a)
#define all(x) begin(x), end(x)
#define sz(x) (int)(x).size()
typedef long long ll;
typedef pair<int, int> pii;
typedef vector<int> vi;

auto Start = chrono::high_resolution_clock::now();
void resettimer() { Start = chrono::high_resolution_clock::now(); }
int elapsedmillis() { return chrono::duration_cast<chrono::milliseconds>(chrono::high_resolution_clock::now() - Start).count(); }


int main(int argc, char **argv) {
    init_io(argc, argv);
	string key;
	author_out >> key;

	if (key != "PANG!"){
		wrong_answer("Did not write 'PANG!'.");
	}
	
	// Get current time
    auto now = std::chrono::high_resolution_clock::now();

    // Get current time since epoch
    auto now_since_epoch = std::chrono::time_point_cast<std::chrono::seconds>(now).time_since_epoch();

    // Convert now_since_epoch to time_t
    std::time_t now_time = now_since_epoch.count();

    // Set the desired date and time (April 1st, 12:00:00)
    std::tm april_first_tm = {};
    april_first_tm.tm_year = std::localtime(&now_time)->tm_year; // current year

    april_first_tm.tm_mon = 3;  // April (zero-indexed)
    april_first_tm.tm_mday = 1; // 1st day of the month
    april_first_tm.tm_hour = 12; // 12:00:00
	//april_first_tm.tm_mon = 2;  
    //april_first_tm.tm_mday = 31; 
    //april_first_tm.tm_hour = 0;
	
    april_first_tm.tm_min = 0;
    april_first_tm.tm_sec = 0;

    // Convert std::tm to std::time_t
    std::time_t april_first_time = std::mktime(&april_first_tm);

    // Get April 1st, 12:00 as a time_point
    auto april_first = std::chrono::system_clock::from_time_t(april_first_time);

    // Calculate the duration until April 1st, 12:00
    auto duration = april_first - now;

    // Convert duration to seconds
    long long seconds = std::chrono::duration_cast<std::chrono::seconds>(duration).count();

	if (llabs(seconds) < 100){
		float score = 100-llabs(seconds);
		accept_with_score(score);
	}
	//wrong_answer("Missed the High Noon. (Submitted at the wrong time.)");
    accept_with_score(0);

    return 0;
}
