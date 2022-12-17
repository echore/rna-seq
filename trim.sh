#!/bin/bash
function trim_align() {
        sample_dir="../data/fastq"
        output_dir="../data/cleandata5"
        arr=($1)
        fq1=${arr[0]}
        fq2=${arr[1]}
        sample1="$sample_dir/$fq1"
        sample2="$sample_dir/$fq2"
        trim_galore \
        --paired \
        --gzip \
        --clip_R1 15 \
        --clip_R2 15 \
        --stringency 10 \
        --length 135 \
        --cores 4 \
        --fastqc --fastqc_args "-o $output_dir/fastqc" \
        -o $output_dir $sample1 $sample2 

}
export -f trim_align
parallel trim_align :::: config_file




        
