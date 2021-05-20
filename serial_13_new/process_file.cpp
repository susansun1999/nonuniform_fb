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
    string new_name = "new_filter"+to_string(filter_id)+".v";
    new_file.open (new_name);
    string line;
    while (std::getline(std::cin, line))
    {
        if(line == "  always @( posedge clk or posedge reset)"){
            while (std::getline(std::cin, line))
            {
                if(line == "    end // Delay_Pipeline_process"){
                    break;
                }

            }
            continue;
        }   
        if(line == "  reg  signed [12:0] delay_pipeline [0:118] ; // sfix13_En12"){
            continue;
        }     
        new_file << line << endl;
        if(line == "                filter_in,"){
            new_file<<"                delay_pipeline,"<<endl;
        }
        if(line == "  input   signed [12:0] filter_in; //sfix13_En12"){
            new_file<<"  input   signed [12:0] delay_pipeline [0:118] ; // sfix13_En12"<<endl;
        }
    }
    new_file.close();
    return 0;
}