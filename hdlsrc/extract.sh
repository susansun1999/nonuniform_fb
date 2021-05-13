g++ extract_exp_out.cpp
for i in {1..16}
do
    echo "processing testbench $i"
    ./a.out $i < testbench$i.v 
done