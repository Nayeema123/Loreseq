#!/bin/bash

# Usage: ./Alignment.sh

SAMPLE="SRR23082033"
REF="/home/nayeema/LRS/hg38/hg38.mmi"
RESULTDIR="/home/nayeema/LRS2/results"
ALIGNDIR="/home/nayeema/LRS2/aligned_reads"

echo "Aligning reads to reference genome..."
minimap2 -ax map-ont -t 8 ${REF} ${RESULTDIR}/${SAMPLE}_filtered.fastq > ${RESULTDIR}/${SAMPLE}.sam

echo "Converting SAM to BAM..."
samtools view -@ 8 -b ${RESULTDIR}/${SAMPLE}.sam > ${ALIGNDIR}/${SAMPLE}_aligned.bam

echo "Sorting BAM file..."
samtools sort -@ 8 ${ALIGNDIR}/${SAMPLE}_aligned.bam -o ${ALIGNDIR}/${SAMPLE}_sorted.bam

echo "Indexing BAM file..."
samtools index ${ALIGNDIR}/${SAMPLE}_sorted.bam

echo "Alignment step completed."
