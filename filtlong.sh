#!/bin/bash

# Usage: ./filtlong.sh

SAMPLE="SRR23082033"
DATADIR="/home/nayeema/LRS2/data"
RESULTDIR="/home/nayeema/LRS2/results"

echo "Filtering low quality reads using Filtlong..."
filtlong --min_length 1000 --min_mean_q 12 --keep_percent 70 ${DATADIR}/${SAMPLE}.fastq > ${RESULTDIR}/${SAMPLE}_filtered.fastq
echo "Filtering completed."
