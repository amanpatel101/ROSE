#!/bin/bash
#$ -cwd
#$ -l h_rt=20:00:00
#$ -l h_vmem=10g

ish
cd /broad/compbio/aspatel/se_project/newpeakexplore/ROSE_code
source /broad/software/scripts/useuse
reuse -q Anaconda3
reuse -q Samtools
reuse -q UGER
/usr/bin/python2 ROSE_bamToGFF.py -f 1 -e 200 -r -m $1 -b $2 -i $3 -o $4 &
