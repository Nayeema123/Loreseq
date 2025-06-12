#!/bin/bash

# Usage: ./cuteSV.sh

SAMPLE="SRR23082033"
ALIGNDIR="/home/nayeema/LRS2/aligned_reads"
REF="/home/nayeema/LRS/hg38/hg38.fa"
OUTDIR="/home/nayeema/LRS2/variants"

#This directory is used by CuteSV to store intermediate files during variant calling.
mkdir -p ${OUTDIR}/cutesv_workdir

echo "Calling SVs using CuteSV..."
cuteSV ${ALIGNDIR}/${SAMPLE}_sorted.bam ${REF} ${OUTDIR}/cutesv.vcf ${OUTDIR}/cutesv_workdir --threads 8
echo "CuteSV completed."
