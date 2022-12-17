#!/bin/bash
for ((i=13593160;i<=13593179;i++))
do
echo SRR$i
fastp -i /data0/work/liyachen/project1/data/fastq/SRR${i}_1.fastq.gz -I /data0/work/liyachen/project1/data/fastq/SRR${i}_2.fastq.gz -o /data0/work/liyachen/project1/data/cleandata/out.SRR${i}_1.fq.gz -O /data0/work/liyachen/project1/data/cleandata/out.SRR${i}_2.fq.gz
done

