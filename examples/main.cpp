#include <iostream>
#include <YourLib>

using namespace std;

int main(int argc, char *argv[])
{
    YourLib yl;
    cout << "yl.your_func() == " << (yl.your_func() ? "TRUE" : "FALSE") << endl;
    cout << "ex" << endl;
    return 0;
}
