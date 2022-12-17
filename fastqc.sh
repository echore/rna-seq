#!/bin/bash
ls ../data/cleandata5/*gz | xargs fastqc -o ../data/cleandata5/fastqc -t 20