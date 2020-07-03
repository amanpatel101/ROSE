#!/bin/bash
#$ -cwd
#$ -l h_rt=20:00:00
#$ -l h_vmem=10g

source /broad/software/scripts/useuse
reuse -q Anaconda3
reuse -q Samtools
reuse -q UGER

/usr/bin/python2 ROSE_main.py -g hg19 -i ../enhancer_peaks_addref_matchedCS.gff -r ../Brain.SuperSamples.RSC0.8.READSTOTAL1e+07.merged.sorted.bam -o ../ROSE_output/