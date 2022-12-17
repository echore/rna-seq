#!/bin/bash
cat ../data/cleandata5/sample.txt | while read id; do
    # if $line begin with "sample", then skip
    if [[ $line =~ ^sample ]]; then
        continue
    fi
    arr=($id) 
    Lib_name=${arr[2]}
    SRR_name=${arr[1]}
    echo $Lib_name 
    echo $SRR_name
    mv ../data/cleandata5/${SRR_name}_1_val_1.fq.gz ../data/cleandata5/${Lib_name}_1.fq.gz
    mv ../data/cleandata5/${SRR_name}_2_val_2.fq.gz ../data/cleandata5/${Lib_name}_2.fq.gz
done
