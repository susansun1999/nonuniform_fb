// basic file operations
#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main () {
    ofstream old_file, new_file;
    old_file.open ("filter3.v");
    new_file.open ("new_filter3.v");
    string line;
    while (getline(old_file, line))
    {
        new_file << line << endl;
    }

    old_file.close();
    return 0;
}