g++ process_file.cpp
for i in {1..16}
do
    echo "processing filter $i"
    ./a.out $i < filter$i.v 
    mv new_filter$i.v filter$i.v #rename
done