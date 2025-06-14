#script for LRS pipeline
#!/bin/bash
conda activate 
conda activate lrs_env
# Usage: ./QC.sh

SAMPLE="SRR23082033"
DATADIR="/home/nayeema/LRS/data"
RESULTDIR="/home/nayeema/LRS/results"

echo "Running NanoPlot for raw reads..."
NanoPlot --fastq ${DATADIR}/${SAMPLE}.fastq --outdir ${RESULTDIR}/raw_quality
echo "NanoPlot completed."


