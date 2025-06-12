#!/bin/bash

# Usage: ./qc_filtered.sh

SAMPLE="SRR23082033"
RESULTDIR="/home/nayeema/LRS2/results"

echo "Running NanoPlot for filtered reads..."
NanoPlot --fastq ${RESULTDIR}/${SAMPLE}_filtered.fastq --outdir ${RESULTDIR}/filtered_quality
echo "NanoPlot for filtered reads completed."
