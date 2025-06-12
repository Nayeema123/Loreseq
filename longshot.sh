#!/bin/bash

# Usage: ./longshot.sh

SAMPLE="SRR23082033"
ALIGNDIR="/home/nayeema/LRS/aligned_reads"
REF="/home/nayeema/LRS/hg38/hg38.fa"
OUTDIR="/home/nayeema/LRS/variants"

echo "Calling variants using Longshot..."
longshot --bam ${ALIGNDIR}/${SAMPLE}_sorted.bam --ref ${REF} --out ${OUTDIR}/${SAMPLE}_longshot.vcf --threads 8
echo "Longshot completed."
