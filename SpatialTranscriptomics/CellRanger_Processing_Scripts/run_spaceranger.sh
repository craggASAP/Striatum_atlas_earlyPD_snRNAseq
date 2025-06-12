#!/usr/bin/bash
#SBATCH -N 1 -n 1 -c 8
#SBATCH --mem=38000
#SBATCH -t 12:00:00


# Example:
# Sample ID: ADI_1_1
# Slide ID: V19T26-073
# Slide area: C1

echo "Executing file" $0
echo "For sample ID:" $1
echo "Slide ID:" $2
echo "Slide area:" $3

SAMPLE=$1
SLIDE=$2
AREA=$3

# Run spaceranger:
spaceranger count --id=${SAMPLE}_manual-align \
  --fastqs=/home/lovisa.franzen/data/adipose/191220_visium/raw \
  --transcriptome=/fastdisk/10x/refdata-cellranger-GRCh38-3.0.0/ \
  --sample=Sample_${SAMPLE} \
  --image=/home/lovisa.franzen/data/adipose/191220_visium/images/${SLIDE}_${AREA}.jpg \
  --slide=$SLIDE \
  --area=${AREA} \
  --loupe-alignment=/home/lovisa.franzen/data/adipose/191220_visium/alignment/${SLIDE}-${AREA}.json

