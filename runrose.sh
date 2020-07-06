#!/bin/bash
#$ -cwd
#$ -l h_rt=20:00:00
#$ -l h_vmem=10g

source /broad/software/scripts/useuse
reuse -q Anaconda3
reuse -q Samtools
reuse -q UGER
reuse -q R-3.5


/usr/bin/python2 ROSE_main.py -g $1 -i $2 -r $3 -o $4 -t $5
#Example run: /usr/bin/python2 ROSE_main.py -g hg19 -i ../enhancer_peaks_addref_matchedCS_manual_1000.gff -r ../Brain.SuperSamples.RSC0.8.READSTOTAL1e+07.merged.sorted.bam -o ../ROSE_output_manual_1000/