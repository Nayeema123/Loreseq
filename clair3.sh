#!/bin/bash

# Usage: ./clair3.sh

SAMPLE="SRR23082033"
ALIGNDIR="/home/nayeema/LRS/aligned_reads"
REF="/home/nayeema/LRS/hg38/hg38.fa"
OUTDIR="/home/nayeema/LRS/clair3_output"
MODEL_NAME="r1041_e82_400bps_sup_v500" 

## list directory to see which models you have//
#ls $CONDA_PREFIX/bin/models/

conda activate clair3 
# Navigate to Clair3 directory
cd /home/nayeema/Clair3

echo "Running Clair3..."
./run_clair3.sh \
  --bam_fn=${ALIGNDIR}/${SAMPLE}_sorted.bam \
  --ref_fn=${REF} \
  --threads=8 \
  --platform=ont \
  --model_path=/home/nayeema/Clair3/models/${MODEL_NAME} \
  --output=${OUTDIR}

echo "Clair3 completed."
