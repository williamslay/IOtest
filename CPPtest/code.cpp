#define LOCAL
#include<iostream>
using namespace std;


int main() {
#ifdef LOCAL
freopen("in.txt", "r", stdin);
freopen("out.txt", "w", stdout);
long _begin_time = clock();
#endif



#ifdef LOCAL
long _end_time = clock();
printf("time = %ld ms",_end_time - _begin_time);
#endif
}