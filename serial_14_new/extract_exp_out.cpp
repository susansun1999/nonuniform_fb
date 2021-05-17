// basic file operations
#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main (int argc, char *argv[]) {
    if(argc != 2){
        cout<<"usage: ./a.out [num] < filter[num].v\n";
        return 0;
    }
    int filter_id = atoi(argv[1]);
    ofstream new_file;
    string new_name = "extract"+to_string(filter_id)+".v";
    new_file.open(new_name);
    string line;
    while (std::getline(std::cin, line))
    {
        if(line == " // Output data for filter_out"){
            new_file<<line<<endl;
            while (std::getline(std::cin,line)){
                if(line == " end // Input & Output data"){
                    break;
                }
                new_file<<line<<endl;
            }
            break;
        }
    }
    new_file.close();
    return 0;
}