#!/bin/bash
for ((i=13593160;i<=13593179;i++))
do
echo SRR$i
index_dir="/data0/work/liyachen/project1/data/reference/index/"
STAR \
	     --runMode alignReads \
	     --twopassMode Basic \
	     --genomeDir ${index_dir} \
	     --runThreadN 20 \
	     --readFilesIn /data0/work/liyachen/project1/data/cleandata/out.SRR${i}_1.fq.gz /data0/work/liyachen/project1/data/cleandata/out.SRR${i}_2.fq.gz \
	     --readFilesCommand zcat \
	     --outFileNamePrefix /data0/work/liyachen/project1/data/bam/SRR$i \
	     --outSAMtype BAM SortedByCoordinate \
	     --outBAMsortingThreadN 5
	     done


