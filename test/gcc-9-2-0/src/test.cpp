#include<bits/stdc++.h>

using namespace std;

void clamp_test() {
	cout << clamp(-50, 0, 100) << endl;
}

void sample_test() {
	vector<int> in{0, 1, 2};
	vector<int> out;
	sample(in.begin(), in.end(), back_inserter(out), 2, mt19937{random_device{}()});
	for (auto x : out) cout << x << endl;
}
	
void optional_test() {
	optional<int> x;
	assert(!x);
	x = 10;
	cout << *x << endl;
}

void tuple_test() {
	tuple t = {1, '1', "1"};
	auto& [a, b, c] = t;
	cout << a << ' ' << b << ' ' << c << endl;
}

void emplace_test() {
	vector<int> v;
	auto b = v.emplace_back(1);
	cout << b << endl;
}

void data_size_empty_test() {
	int x[10];
	vector<int> v;
	cout << size(v) << endl;
	cout << size(x) << endl;
	
	cout << empty(v) << endl;
	cout << empty(x) << endl;
	
	cout << data(v) << endl;
	cout << data(x) << endl;
}

void gcd_lcm_test() {
	cout << gcd(18, 24) << endl;
	cout << lcm(18, 24) << endl;
}

void not_fn_test() {
	vector<int> v{3, 1, 4, 1, 5};
	
	sort(v.begin(), v.end(), less<int>());
	for (auto x : v) cout << x << ' ';
	cout << endl;
	
	sort(v.begin(), v.end(), not_fn(less<int>()));
	for (auto x : v) cout << x << ' ';
	cout << endl;
}

int main() {
	clamp_test();
	sample_test();
	optional_test();
	tuple_test();
	emplace_test();
	data_size_empty_test();
	gcd_lcm_test();
	not_fn_test();
}