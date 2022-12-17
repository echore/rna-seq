#!/bin/bash
index_dir="../data/reference/index"
thread=50
genome_fasta="../data/reference/GRCm39.genome.fa"
genome_gtf="../data/reference/gencode.vM31.basic.annotation.gtf"
STAR --runThreadN ${thread} --runMode genomeGenerate --genomeDir ${index_dir} --genomeFastaFiles ${genome_fasta} --sjdbGTFfile ${genome_gtf} --sjdbOverhang 134
