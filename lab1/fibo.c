//#include <iostream>
//using namespace std;

#include <stdio.h>

int main()
{
    int a, b, i, t, n;

    a = 0;
    b = 1;
    i = 1;
    // cout << "Enter the value of n: ";
    // cin >> n;
    scanf("%d",&n);
    // cout << a << endl;
    // cout << b << endl;
    printf("%d\n",a);
    printf("%d\n",b);

    while (i < n)
    {
        t = b;
        b = a + b;
        // cout << b << endl;
        printf("%d\n",b);
        a = t;
        i = i + 1;
    }

    return 0;
}

