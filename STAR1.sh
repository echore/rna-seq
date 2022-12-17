#!/bin/bash
cat config_file1 | while read id
do
        sample_dir="../data/cleandata"
        output_dir="../data/bam"
        index_dir="../data/reference/index"
        arr=($id)
        fq1=${arr[0]}
        fq2=${arr[1]}
        sample1="$sample_dir/$fq1"
        echo $sample1
        sample2="$sample_dir/$fq2"
        echo $sample2
        STAR \
        --runMode alignReads \
        --twopassMode Basic \
        --genomeDir ${index_dir} \
        --runThreadN 20 \
        --readFilesIn $sample1 $sample2 \
        --readFilesCommand zcat \
        --outFileNamePrefix ${output_dir}/$(basename $fq1 _1.fq.gz) \
        --outSAMtype BAM SortedByCoordinate \
        --outBAMsortingThreadN 5
done

