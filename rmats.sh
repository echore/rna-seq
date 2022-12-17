#!/bin/bash
/data0/apps/anaconda3/bin/python /data0/apps/anaconda3/bin/rmats.py \
--b1 rmats1.txt \
--b2 rmats2.txt \
--gtf ../data/reference/gencode.vM31.basic.annotation.gtf \
--od ../data/rmats \
--tmp ../data/rmats \
--readLength 135 \
-t paired \
--nthread 50 \
--statoff