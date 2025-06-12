#!/bin/bash

# Usage: ./sniffles.sh

SAMPLE="SRR23082033"
ALIGNDIR="/home/nayeema/LRS/aligned_reads"
REF="/home/nayeema/LRS/hg38/hg38.fa"
OUTDIR="/home/nayeema/LRS/variants"

echo "Calling SVs using Sniffles..."
sniffles --input ${ALIGNDIR}/${SAMPLE}_sorted.bam --vcf ${OUTDIR}/${SAMPLE}_sniffles.vcf --reference ${REF} --threads 8
echo "Sniffles completed."
