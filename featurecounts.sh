#!/bin/bash
gtf="/data0/work/liyachen/project/airway/reference/gencode.vM25.annotation.gtf"
featureCounts -a $gtf -o /data0/work/liyachen/project1/data/results/counts.txt -T 8 -t exon -g gene_id -p -B -C -s 2 /data0/work/liyachen/project1/data/bam/*.bam